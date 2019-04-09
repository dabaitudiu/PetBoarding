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

var search_title = "预约分页";

router.get('/', function(req, res, next) {
  var owner_id = url.parse(req.url,true).query.owner_id;
  var owner_name = url.parse(req.url,true).query.owner_name;
  var owner_email = url.parse(req.url,true).query.owner_email;
  var owner_phone = url.parse(req.url,true).query.owner_phone;

  var mydata = [owner_id,owner_name,owner_email,owner_phone];

  // var owner_id = req.body.owner_id;
  var sql_query = "select * from owner_personal_info where owner_id='"+owner_id+"'";

  pool.query(sql_query, (err, data) => {
    if (err) {
      return console.error('Error executing query', err.stack);
    }
    console.log("result = " + JSON.stringify(data));
		  res.render('appointment', { title: search_title, data:mydata});
    });
});

module.exports = router;
