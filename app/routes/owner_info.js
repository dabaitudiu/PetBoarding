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

var search_title = "Owner_info";
var owner_name=''

router.get('/', function(req, res, next) {
    var d = url.parse(req.url,true).query.name;
    var sql_query = " select * from owner_info O join user_info U on (O.owner_id = U.user_id) where user_name='"+d+"'";
    // console.log("test " + sql_query);
    pool.query(sql_query, (err, data) => {
      if (typeof d === 'undefined') {
		    return res.render('owner_info', { title: search_title, data: ["RESERVED"], moment:moment });
      }
		  res.render('owner_info', { title: search_title, data: data.rows, moment:moment });
    });
});


module.exports = router;
