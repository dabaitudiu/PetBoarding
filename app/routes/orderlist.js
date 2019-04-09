var express = require('express');
var router = express.Router();
var moment = require('moment');

var url = require("url");

const { Pool } = require('pg');
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'postgres',
  password: 'lyp82nLF',
  port: 5432,
})

var sql_query = "\
  with c_info as (\
    select customer_id, user_name as c_name\
    from customer_info C join user_info U \
    on C.customer_id = U.user_id\
  ),\
  o_info as (\
    select owner_id, user_name as o_name\
    from owner_info O join user_info U \
    on O.owner_id = U.user_id\
  )\
  select * from appointments natural join customer_appointments natural join owner_appointments natural join c_info natural join o_info\
"

// var sql_query = "select * from appointments natural join customer_appointments natural join owner_appointments"

router.get('/', function(req, res, next) {
    pool.query(sql_query, (err, data) => {
		res.render('orderlist', {data:data.rows,moment:moment});
    });
});

router.post('/', function(req, res, next) {
    pool.query(sql_query, (err, data) => {
		res.render('orderlist', {data:data.rows,moment:moment});
    });
});

module.exports = router;
