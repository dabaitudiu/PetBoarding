var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
    res.render('mylogin', { title: 'User Log-in' });
});

module.exports = router;