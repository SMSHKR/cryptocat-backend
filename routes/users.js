var express = require('express');
var router = express.Router();

/* GET users listing. */
router.post('/register', function(req, res, next) {
  console.log(req.body)
  //res.send('respond with a resource');
  res.end()
});

router.get('/' , (req , res)=>{
    //res.send("hi")
    res.end()
})


module.exports = router;
