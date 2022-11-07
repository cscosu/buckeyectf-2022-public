// Paste into browser console and wait 3 minutes for flag

let seeds = []
const multiplier = (2n ** 127n) - 1n

function seedToBalls (n) {
  const balls = []
  for (let i = 0; i < 10; i++) {
    balls.push(Number(n % 100n))
    n = n / 100n
  }
  return balls
}

function gcd (a, b) {
    if (!b) return a;
    return gcd(b, a % b)
}

function goWin () {
    const x = seeds[0] * multiplier - seeds[1]
    const y = seeds[1] * multiplier - seeds[2]
    p = gcd(x, y)
    for (let i = 2n; i < 1024n; i++) {
        if (p % i == 0) {
            p = p / i
        }
    }
    const winner = (multiplier * seeds[2]) % p
    console.log(winner, seedToBalls(winner))
    socket.emit('submitBalls', seedToBalls(winner))
}

function handleUpdate1 (update) {
    console.log('handleUpdate1')
    const n = BigInt(update.last_winning_seed)
    if (n != seeds[seeds.length - 1]) {
        seeds.push(n)
        if (seeds.length === 3) {
            goWin()
        }
    }
}

socket.on('update', handleUpdate1)
