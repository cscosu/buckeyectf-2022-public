const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);
const { Server } = require("socket.io");
const io = new Server(server);

app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html');
});

io.on('connection', (socket) => {
  console.log('a user connected');
  socket.emit("alert", "Press P to serve!");
  let s1 = 0;
  let s2 = 0;
  socket.on("score", (bx) => {
    if(bx < -0.1) {
        s2++;
        if(s2 == 10) {
            s1 = 0;
            s2 = 0;
        }
    } else if(bx > 1.1) {
        s1++;
        if(s1 == 10) {
            socket.emit("alert", process.env.FLAG);
        }
    }
    socket.emit("set", { sx1: s1, sx2: s2 });
  });
  socket.on("begin", () => {
    let params = {
        bvx: Math.random() * .015 - .005,
        bvy: Math.random() * .015 - .005
    };
    socket.emit("begin", params);
  });
});

server.listen(3000, () => {
  console.log('listening on *:3000');
});