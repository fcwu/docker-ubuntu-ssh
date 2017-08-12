var tty = require('tty.js');

var app = tty.createServer({
  shell: 'login',
  port: 3000
});

app.get('/health', function(req, res, next) {
 res.sendStatus(200);
});

app.listen();
