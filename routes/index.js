var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});
router.post('/register', function(req, res, next) {
  console.log(req.body)
  //res.send('respond with a resource');
  res.end()
});
module.exports = router;
