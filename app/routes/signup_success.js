var express = require('express');
var router = express.Router();
var moment = require('moment');

var http = require('http');
var url = require("url");
var querystring = require("querystring");


const { Pool } = require('pg')
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'postgres',
  password: 'lyp82nLF',
  port: 5432,
})

router.get('/', function(req, res, next) {
  if (err) {
  return res.render('app_success',{data:mydata,error:err.message});
}
    res.render('signup', { title: 'User Log-in' });
});


module.exports = router;
