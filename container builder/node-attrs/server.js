'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('');
  var timeNow = Date.now();
  console.log(`Receive a request at ` + timeNow);
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);

function test() {
  var timeNow = Date.now();
  console.log(`Running time: ` + timeNow);
}
setInterval(test, 1000);