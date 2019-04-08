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

var search_title = "Appointment successfully made.";

function makeid(length) {
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  
    for (var i = 0; i < length; i++)
      text += possible.charAt(Math.floor(Math.random() * possible.length));
  
    return text;
  }

  var customer_id = "unknown";
  var customer_name = "unknown";
  
  router.get('/', function(req, res, next) {
      customer_id = url.parse(req.url,true).query.customer_id;
      customer_name = url.parse(req.url,true).query.customer_name;
      // console.log(JSON.stringify(query_set));
      res.render('search', { title: 'Pet Search Engine', data:[], customer_name:customer_name, customer_id:customer_id});
  });

router.post('/', function(req, res, next) {
    // Retrieve Information
    var appointment_id = makeid(10);
    var owner_id = req.body.owner_id;
    var owner_name = req.body.owner_name;
    var owner_email = req.body.owner_email;
    var owner_phone= req.body.owner_phone;
    
    var customer_id = req.body.customer_id;
    var date = req.body.date;
    var time = req.body.time;
    var status = 'booked';

    var mydata = [appointment_id,date,time,owner_name,owner_email,owner_phone];

    var sql_query = "insert into appointments values";
    var insert_query = sql_query + "('" + appointment_id + "','" + owner_id + "','" + customer_id + "','" + date + "','" + time + "','" + status + "')";

    console.log(insert_query);

    pool.query(insert_query, (err, data) => {
        res.render('app_success',{data:mydata});
    });
  
  });

module.exports = router;
