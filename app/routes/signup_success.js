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

var search_title = "Sign up Successfully";

router.post('/', function(req, res, next) {
    // Retrieve Information
    //name,email,phone,password
    var name = req.body.name;
    var email = req.body.email;
    var phone = req.body.phone;
    var password = req.body.password;
    
    pool.query(sql_query, (err, data) => {
		res.render('search', { title: search_title, data: data.rows, moment: moment, link:"http://www.google.com",hasInput:hasInput});
    });
    
});


module.exports = router;
