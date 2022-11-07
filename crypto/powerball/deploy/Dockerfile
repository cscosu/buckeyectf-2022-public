FROM mhart/alpine-node:16

WORKDIR /opt/app
COPY . .

RUN npm install
ENV NODE_ENV=production
ENV FLAG=buckeye{y3ah_m4yb3_u51nG_A_l1N34r_c0nGru3Nt1al_G3n3r4t0r_f0r_P0w3rB4lL_wA5nt_tH3_b3st_1d3A}
CMD ["node", "app.js"]
