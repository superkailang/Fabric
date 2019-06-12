const express = require('express');
var history = require('connect-history-api-fallback');
const app = express();

const staticFileMiddleware = express.static('dist');
app.use(staticFileMiddleware);
app.use(history({
  index: '/index.html',
  disableDotRule: true,
  verbose: true
}));
app.use(staticFileMiddleware);

app.get('/', (req, res) => {
});

const port = 4444;
app.listen(port, () => {
  console.log(`Example app listening on port ${port}!`);
});
