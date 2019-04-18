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

var search_title = "Inquiry Page";

router.get('/', function(req, res, next) {
    res.render('inquiry',{data:[]});
});

router.post('/', function(req, res, next) {
    // Retrieve Information
    var appointment_id = req.body.appointment_id;
    var owner_id = req.body.owner_id;
    var customer_id = req.body.customer_id;
    var sql_query;

    var block = "with customer as \
        (select customer_id as cid, user_name as cname, user_phone as cphone, user_email as cemail from customer_info join user_info on customer_id=user_id),\
        owners as (select owner_id as oid, user_name as oname, user_phone as ophone, user_email as oemail from owner_info join user_info on owner_id=user_id)\
        select * from appointments natural join customer_appointments natural join owner_appointments \
        join customer on customer_id = cid\
        join owners on owner_id=oid";

    if (typeof appointment_id != 'undefined') {
        sql_query = block + " where appointment_id='" + appointment_id + "'";
    } else if (typeof customer_id != 'undefined') {
        sql_query = block + " where customer_id='" + customer_id + "'";
    } else {
        sql_query = block + " where owner_id='" + owner_id + "'";
    }

    console.log("SQL INQUIRY:" + sql_query);

    pool.query(sql_query, (err, data) => {
        // console.log(JSON.stringify(data));
        if (err) {
            res.render('app_success', {error: err.message});
        }
        res.render('inquiry',{data:data.rows,moment:moment});
    });
  
  });

module.exports = router;
