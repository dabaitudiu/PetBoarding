create table reviews (
	review_title TEXT,
	appointment_id VARCHAR(10),
	rating INT,
	PRIMARY KEY (review_title, appointment_id),
	FOREIGN KEY (appointment_id) REFERENCES Appointments (appointment_id) ON DELETE CASCADE
);
insert into reviews (review_title, appointment_id, rating) values ('mattis odio', '9vrp1x6ca0', 1);
insert into reviews (review_title, appointment_id, rating) values ('arcu adipiscing molestie hendrerit at', 'pwq7hwzazm', 4);
insert into reviews (review_title, appointment_id, rating) values ('nisi nam ultrices libero non', '94y42ou5uv', 1);
insert into reviews (review_title, appointment_id, rating) values ('nulla mollis molestie lorem', 'x81t4j2vx1', 1);
insert into reviews (review_title, appointment_id, rating) values ('lorem ipsum', '2ong75ncjp', 1);
insert into reviews (review_title, appointment_id, rating) values ('lacinia eget tincidunt eget tempus', 'sn521yri8e', 1);
insert into reviews (review_title, appointment_id, rating) values ('nisi vulputate nonummy maecenas tincidunt', 'h1blevd9b1', 2);
insert into reviews (review_title, appointment_id, rating) values ('sit amet', 'wln4fjqvsb', 4);
insert into reviews (review_title, appointment_id, rating) values ('congue elementum in hac', '3lqq6kxux3', 3);
insert into reviews (review_title, appointment_id, rating) values ('curae mauris viverra', 'd7i6if290g', 3);
insert into reviews (review_title, appointment_id, rating) values ('ac diam', 'rufu70zy43', 1);
insert into reviews (review_title, appointment_id, rating) values ('purus sit', 'pp12gt0mu4', 2);
insert into reviews (review_title, appointment_id, rating) values ('rutrum ac lobortis vel dapibus', 'k1ki0s7d7g', 5);
insert into reviews (review_title, appointment_id, rating) values ('praesent blandit lacinia erat vestibulum', '5m33083cry', 3);
insert into reviews (review_title, appointment_id, rating) values ('eleifend donec ut dolor morbi', '9o7pdrs6wa', 1);
insert into reviews (review_title, appointment_id, rating) values ('urna ut tellus nulla ut', '759hpq130d', 2);
insert into reviews (review_title, appointment_id, rating) values ('sit amet eros suspendisse accumsan', 'eiodumydje', 3);
insert into reviews (review_title, appointment_id, rating) values ('eu sapien cursus vestibulum', 'nxo80k5oy9', 1);
insert into reviews (review_title, appointment_id, rating) values ('eget nunc donec quis orci', 'ym303q1940', 2);
insert into reviews (review_title, appointment_id, rating) values ('in hac habitasse', 'gkerl9xh34', 1);
insert into reviews (review_title, appointment_id, rating) values ('et ultrices posuere cubilia', '2jmk69uszy', 3);
insert into reviews (review_title, appointment_id, rating) values ('leo rhoncus sed vestibulum', 'awmn2bbnc0', 3);
insert into reviews (review_title, appointment_id, rating) values ('eros suspendisse accumsan tortor quis', 'cmebkala3n', 4);
insert into reviews (review_title, appointment_id, rating) values ('justo morbi ut odio cras', 'lomftevfbl', 1);
insert into reviews (review_title, appointment_id, rating) values ('volutpat quam', 'gs2ixghjm3', 2);
insert into reviews (review_title, appointment_id, rating) values ('nibh fusce lacus', 'yxrl6wlyxs', 2);
insert into reviews (review_title, appointment_id, rating) values ('nulla tempus vivamus in felis', '5copybxug1', 2);
insert into reviews (review_title, appointment_id, rating) values ('ut blandit non', 'xr6r8l33li', 5);
insert into reviews (review_title, appointment_id, rating) values ('metus aenean', '7dyd7gz1g1', 5);
insert into reviews (review_title, appointment_id, rating) values ('nulla ultrices', 'elgmhdh1ba', 3);
insert into reviews (review_title, appointment_id, rating) values ('augue vestibulum ante ipsum', 'kpe4kxpjzy', 1);
insert into reviews (review_title, appointment_id, rating) values ('dolor vel est', '8oddqj2j5v', 3);
insert into reviews (review_title, appointment_id, rating) values ('id turpis', 'jgwc0u06vb', 3);
insert into reviews (review_title, appointment_id, rating) values ('lacinia eget tincidunt', 'mq7j6cxfse', 4);
insert into reviews (review_title, appointment_id, rating) values ('aliquet pulvinar sed nisl', 'j14ygx9bn9', 1);
insert into reviews (review_title, appointment_id, rating) values ('luctus et ultrices posuere cubilia', 'rwctvbeund', 4);
insert into reviews (review_title, appointment_id, rating) values ('lobortis ligula sit amet', 'x36uqff1c9', 1);
insert into reviews (review_title, appointment_id, rating) values ('aliquam lacus', 'txk4yu493y', 5);
insert into reviews (review_title, appointment_id, rating) values ('nisl nunc rhoncus', 'yiq2szggte', 5);
insert into reviews (review_title, appointment_id, rating) values ('lacus at velit', 'p8tmvyb001', 4);
insert into reviews (review_title, appointment_id, rating) values ('pulvinar lobortis est', 'd7v00i9oj7', 4);
insert into reviews (review_title, appointment_id, rating) values ('nunc nisl', 'k5oe81vw9f', 4);
insert into reviews (review_title, appointment_id, rating) values ('sodales scelerisque', 'lltk1a9w3j', 5);
insert into reviews (review_title, appointment_id, rating) values ('velit eu est', 'w7swyiff7m', 4);
insert into reviews (review_title, appointment_id, rating) values ('metus vitae', '6bq3ztc2zv', 5);
insert into reviews (review_title, appointment_id, rating) values ('curae duis', 'ni8si3a7rn', 1);
insert into reviews (review_title, appointment_id, rating) values ('potenti in eleifend quam a', 'z35akkk87x', 3);
insert into reviews (review_title, appointment_id, rating) values ('cursus id turpis integer', 'flso033lg7', 2);
insert into reviews (review_title, appointment_id, rating) values ('suspendisse potenti cras in', '3lw6sr2tmq', 3);
insert into reviews (review_title, appointment_id, rating) values ('platea dictumst aliquam augue', 'ulihdy4dts', 1);
insert into reviews (review_title, appointment_id, rating) values ('ante nulla justo aliquam', '8hxtcaj7qv', 4);
insert into reviews (review_title, appointment_id, rating) values ('accumsan odio curabitur', 'ikaelx7pph', 3);
insert into reviews (review_title, appointment_id, rating) values ('donec posuere metus vitae', 'rvn7sz246b', 1);
insert into reviews (review_title, appointment_id, rating) values ('etiam pretium iaculis justo in', 'u0kig5w4vy', 1);
insert into reviews (review_title, appointment_id, rating) values ('sapien ut nunc vestibulum ante', 'ow7bivwuhg', 4);
insert into reviews (review_title, appointment_id, rating) values ('risus praesent', 'ho24ljrb1d', 5);
insert into reviews (review_title, appointment_id, rating) values ('nisl duis ac', 'ocqevwbuvt', 3);
insert into reviews (review_title, appointment_id, rating) values ('aliquam non mauris morbi non', 'ucvii0ksvq', 5);
insert into reviews (review_title, appointment_id, rating) values ('est phasellus sit amet', 'qvg48gh0t9', 1);
insert into reviews (review_title, appointment_id, rating) values ('commodo placerat praesent', '8j4x5hfz4r', 1);
insert into reviews (review_title, appointment_id, rating) values ('ultrices phasellus id sapien', '9xc1mm1pf9', 5);
insert into reviews (review_title, appointment_id, rating) values ('mollis molestie lorem quisque', 'i4tcllp1r5', 2);
insert into reviews (review_title, appointment_id, rating) values ('aliquet maecenas', 'iikfbrjok0', 5);
insert into reviews (review_title, appointment_id, rating) values ('nullam porttitor', 'z8pg2abalr', 4);
insert into reviews (review_title, appointment_id, rating) values ('suscipit a feugiat et', 'j73dds8u89', 5);
insert into reviews (review_title, appointment_id, rating) values ('vestibulum ante ipsum primis in', '5q0zpzjqqb', 4);
insert into reviews (review_title, appointment_id, rating) values ('quam pede lobortis', 'zelli5hnou', 3);
insert into reviews (review_title, appointment_id, rating) values ('leo odio porttitor', 'csnqiv12mh', 5);
insert into reviews (review_title, appointment_id, rating) values ('nisl venenatis lacinia aenean', 'mam0sde75h', 3);
insert into reviews (review_title, appointment_id, rating) values ('ut massa quis', 'z6x14p5vc2', 2);
insert into reviews (review_title, appointment_id, rating) values ('amet consectetuer adipiscing', 'f4oxdsclbn', 3);
insert into reviews (review_title, appointment_id, rating) values ('posuere nonummy', 'yy3s06c8gn', 3);
insert into reviews (review_title, appointment_id, rating) values ('vel nisl duis', 'tgm45he1h5', 3);
insert into reviews (review_title, appointment_id, rating) values ('sed justo pellentesque viverra', 't34k6cq2km', 1);
insert into reviews (review_title, appointment_id, rating) values ('accumsan tellus', 'hanncgin4d', 1);
insert into reviews (review_title, appointment_id, rating) values ('velit id pretium iaculis', '9uejaqr9ko', 5);
insert into reviews (review_title, appointment_id, rating) values ('montes nascetur', 'qu645od8j5', 1);
insert into reviews (review_title, appointment_id, rating) values ('in felis eu sapien', 'hgb26zx8wg', 3);
insert into reviews (review_title, appointment_id, rating) values ('enim blandit', '48od5ly63t', 3);
insert into reviews (review_title, appointment_id, rating) values ('luctus et ultrices', '9dmum78qms', 2);
insert into reviews (review_title, appointment_id, rating) values ('cursus urna ut', 'cboj2xw9sw', 1);
insert into reviews (review_title, appointment_id, rating) values ('suspendisse potenti nullam', 'y97lxpp8lo', 2);
insert into reviews (review_title, appointment_id, rating) values ('ligula pellentesque', 'j8fyrxpaj1', 1);
insert into reviews (review_title, appointment_id, rating) values ('ac tellus semper', 'xy1kkxsw2f', 2);
insert into reviews (review_title, appointment_id, rating) values ('mattis nibh ligula nec', '40hjamxrlz', 3);
insert into reviews (review_title, appointment_id, rating) values ('sed augue aliquam erat volutpat', 'ycu81qutyk', 3);
insert into reviews (review_title, appointment_id, rating) values ('vestibulum ante ipsum primis in', 'em8dw46r6e', 1);
insert into reviews (review_title, appointment_id, rating) values ('massa id nisl venenatis', 'fb9e8g1omn', 4);
insert into reviews (review_title, appointment_id, rating) values ('ullamcorper augue a', 'i2rgo9wfjj', 1);
insert into reviews (review_title, appointment_id, rating) values ('donec odio justo sollicitudin', 'vggo5nqhkt', 5);
insert into reviews (review_title, appointment_id, rating) values ('donec quis', '1lhjfh2h84', 1);
insert into reviews (review_title, appointment_id, rating) values ('lacinia nisi', '03c7bxofhp', 4);
insert into reviews (review_title, appointment_id, rating) values ('orci luctus et ultrices', '78iq3fyypv', 2);
insert into reviews (review_title, appointment_id, rating) values ('sed tristique', '7j875ymsbq', 5);
insert into reviews (review_title, appointment_id, rating) values ('feugiat et eros vestibulum', '3m07r47gxe', 4);
insert into reviews (review_title, appointment_id, rating) values ('consectetuer eget rutrum at lorem', '76kpsq7f5a', 2);
insert into reviews (review_title, appointment_id, rating) values ('nec dui', '7m2uqmbghj', 1);
insert into reviews (review_title, appointment_id, rating) values ('nulla ac enim in tempor', 'ukz0xufac3', 1);
insert into reviews (review_title, appointment_id, rating) values ('mattis egestas metus', '2y68vmjr79', 5);
insert into reviews (review_title, appointment_id, rating) values ('lobortis sapien sapien', 'ycamioj2p5', 5);
insert into reviews (review_title, appointment_id, rating) values ('sed ante vivamus tortor duis', '64iwwoybyv', 4);
insert into reviews (review_title, appointment_id, rating) values ('mi nulla ac enim', '35ygu791vg', 3);
insert into reviews (review_title, appointment_id, rating) values ('phasellus id sapien in sapien', 'gsw6m1awz7', 3);
insert into reviews (review_title, appointment_id, rating) values ('vestibulum ac est lacinia nisi', '7suap76nlc', 5);
insert into reviews (review_title, appointment_id, rating) values ('id massa id', 'e5dke7ttk0', 5);
insert into reviews (review_title, appointment_id, rating) values ('donec ut mauris eget massa', 'aaak0ytpl9', 4);
insert into reviews (review_title, appointment_id, rating) values ('quam pede lobortis', '3hlvhthkjp', 3);
insert into reviews (review_title, appointment_id, rating) values ('placerat praesent blandit nam nulla', 'cov7q4ba6w', 5);
insert into reviews (review_title, appointment_id, rating) values ('rutrum rutrum neque aenean auctor', 'szgfgepvt8', 5);
insert into reviews (review_title, appointment_id, rating) values ('elementum eu interdum eu tincidunt', 'm56sw6mbnm', 1);
insert into reviews (review_title, appointment_id, rating) values ('vestibulum ante ipsum primis', 'vplasaztc7', 1);
insert into reviews (review_title, appointment_id, rating) values ('ut massa volutpat convallis', 'txjmxu12ci', 4);
insert into reviews (review_title, appointment_id, rating) values ('bibendum morbi non', 'ek0nui51lp', 3);
insert into reviews (review_title, appointment_id, rating) values ('purus sit amet nulla', 'cdib0xp3oa', 5);
insert into reviews (review_title, appointment_id, rating) values ('lacinia eget tincidunt', 'b9j9guoi91', 1);
insert into reviews (review_title, appointment_id, rating) values ('tempus sit amet sem fusce', 'fqf6j08qmg', 2);
insert into reviews (review_title, appointment_id, rating) values ('nulla justo', '95ivdryu7n', 2);
insert into reviews (review_title, appointment_id, rating) values ('cubilia curae mauris viverra diam', 'hkgq3dn2bc', 5);
insert into reviews (review_title, appointment_id, rating) values ('at velit vivamus', 'ltmmuq9qsk', 3);
insert into reviews (review_title, appointment_id, rating) values ('integer ac', 'apvbjh686s', 4);
insert into reviews (review_title, appointment_id, rating) values ('sapien urna', 's2p4j3g6yu', 4);
insert into reviews (review_title, appointment_id, rating) values ('id luctus', 'r9jd3iiwt6', 1);
insert into reviews (review_title, appointment_id, rating) values ('quis orci eget orci vehicula', 'p0kl70bp9c', 3);
insert into reviews (review_title, appointment_id, rating) values ('lacus curabitur at ipsum ac', '0zgdhqyn5g', 3);
insert into reviews (review_title, appointment_id, rating) values ('ac nibh', 'tf8h2959ne', 4);
insert into reviews (review_title, appointment_id, rating) values ('lacus purus aliquet', 'tq569o4178', 3);
insert into reviews (review_title, appointment_id, rating) values ('fermentum justo nec condimentum', 'k8yey7ae1n', 4);
insert into reviews (review_title, appointment_id, rating) values ('sed tristique in', 'cp8gxws8j1', 2);
insert into reviews (review_title, appointment_id, rating) values ('justo aliquam quis turpis', 'ikreb6bxoa', 4);
insert into reviews (review_title, appointment_id, rating) values ('amet justo morbi', 'dugrdmtrg3', 3);
insert into reviews (review_title, appointment_id, rating) values ('integer pede justo lacinia eget', 'mokqpqgnzs', 2);
insert into reviews (review_title, appointment_id, rating) values ('in lectus', 'x4iupr0dvl', 4);
insert into reviews (review_title, appointment_id, rating) values ('vivamus metus arcu', '8zf9d2slem', 2);
insert into reviews (review_title, appointment_id, rating) values ('mauris eget massa tempor', '8y1lxx8nv5', 4);
insert into reviews (review_title, appointment_id, rating) values ('at feugiat non pretium', 'vn5hgigpk1', 4);
insert into reviews (review_title, appointment_id, rating) values ('vel augue vestibulum', '04npiyur3f', 1);
insert into reviews (review_title, appointment_id, rating) values ('mi nulla ac', 'mhe05umqbd', 5);
insert into reviews (review_title, appointment_id, rating) values ('vestibulum sed magna', 'gcb4ydq8b6', 2);
insert into reviews (review_title, appointment_id, rating) values ('leo odio condimentum id luctus', '0j3drgdtnh', 2);
insert into reviews (review_title, appointment_id, rating) values ('mattis odio donec vitae nisi', 'qpal03cd7h', 1);
insert into reviews (review_title, appointment_id, rating) values ('luctus et ultrices posuere', 'y7kia45emc', 3);
insert into reviews (review_title, appointment_id, rating) values ('dolor sit amet', 'c33wnqjf3v', 5);
insert into reviews (review_title, appointment_id, rating) values ('donec ut mauris eget', 'vgz2ggk6jn', 1);
insert into reviews (review_title, appointment_id, rating) values ('felis eu sapien', 'uregg0ku2h', 4);
insert into reviews (review_title, appointment_id, rating) values ('nibh in hac habitasse platea', 'sv4ki7lb7b', 5);
insert into reviews (review_title, appointment_id, rating) values ('ipsum primis in', 'nxldddiogk', 5);
insert into reviews (review_title, appointment_id, rating) values ('platea dictumst maecenas ut massa', 'x247wql5y7', 4);
insert into reviews (review_title, appointment_id, rating) values ('sapien sapien non', 'f9z1155v99', 5);
insert into reviews (review_title, appointment_id, rating) values ('sollicitudin mi sit amet lobortis', 'z1w66wez9i', 5);
insert into reviews (review_title, appointment_id, rating) values ('molestie sed justo', '9ldkbmyky1', 3);
insert into reviews (review_title, appointment_id, rating) values ('hac habitasse platea dictumst etiam', 'taj92g6xg6', 5);
insert into reviews (review_title, appointment_id, rating) values ('donec pharetra magna vestibulum aliquet', 'qz7gxi7pux', 5);
insert into reviews (review_title, appointment_id, rating) values ('sed lacus', 'csoj24ffgg', 1);
insert into reviews (review_title, appointment_id, rating) values ('integer a nibh in', 'agnvmt7nk9', 5);
insert into reviews (review_title, appointment_id, rating) values ('vel pede morbi', '8zrfubvncj', 4);
insert into reviews (review_title, appointment_id, rating) values ('quis odio', '42d6coj5ge', 3);
insert into reviews (review_title, appointment_id, rating) values ('vivamus in felis eu sapien', 'oot7p949y2', 4);
insert into reviews (review_title, appointment_id, rating) values ('consequat lectus in', 'i3hugirhnw', 4);
insert into reviews (review_title, appointment_id, rating) values ('rutrum rutrum', 'itdgg69cjv', 5);
insert into reviews (review_title, appointment_id, rating) values ('mus etiam vel augue vestibulum', '61t0yej5vb', 2);
insert into reviews (review_title, appointment_id, rating) values ('condimentum id luctus nec', 'y4ddwxirbh', 5);
insert into reviews (review_title, appointment_id, rating) values ('augue vestibulum rutrum rutrum', '46e7yjayr6', 2);
insert into reviews (review_title, appointment_id, rating) values ('malesuada in imperdiet et', '4rqd8tmerb', 1);
insert into reviews (review_title, appointment_id, rating) values ('scelerisque quam', 'mpwp00mjuj', 4);
insert into reviews (review_title, appointment_id, rating) values ('varius ut blandit', 'iwh4xtcg32', 3);
insert into reviews (review_title, appointment_id, rating) values ('suspendisse ornare consequat', 'gp8qwvz9o9', 2);
insert into reviews (review_title, appointment_id, rating) values ('faucibus cursus urna ut tellus', '3xdsn2ei6a', 2);
insert into reviews (review_title, appointment_id, rating) values ('curabitur convallis', '4lijlp33m8', 1);
insert into reviews (review_title, appointment_id, rating) values ('sodales sed tincidunt eu', 'bwa8e5et7o', 4);
insert into reviews (review_title, appointment_id, rating) values ('potenti nullam porttitor', 'q3l2nouabu', 1);
insert into reviews (review_title, appointment_id, rating) values ('bibendum felis', 'cp5fpcce0q', 5);
insert into reviews (review_title, appointment_id, rating) values ('primis in', '09aod3ngp2', 3);
insert into reviews (review_title, appointment_id, rating) values ('at turpis donec posuere', 'cca71m9prb', 5);
insert into reviews (review_title, appointment_id, rating) values ('sit amet', 't2guv9ypmi', 1);
insert into reviews (review_title, appointment_id, rating) values ('pulvinar sed nisl nunc', 'tllh7izlcx', 5);
insert into reviews (review_title, appointment_id, rating) values ('sapien urna pretium', 'e0gbmk1ak0', 1);
insert into reviews (review_title, appointment_id, rating) values ('ante vivamus tortor duis mattis', 'f2nnx0zq5w', 1);
insert into reviews (review_title, appointment_id, rating) values ('ullamcorper augue', 'sq1yvoqh30', 5);
insert into reviews (review_title, appointment_id, rating) values ('eleifend donec ut dolor morbi', '5jbn3rfduj', 2);
insert into reviews (review_title, appointment_id, rating) values ('vestibulum rutrum', 'p7cllfxfh7', 4);
insert into reviews (review_title, appointment_id, rating) values ('hac habitasse', 'jr1u7ruhtz', 5);
insert into reviews (review_title, appointment_id, rating) values ('facilisi cras non', 'b5mnst6etl', 3);
insert into reviews (review_title, appointment_id, rating) values ('nec nisi', 's87qonlb6o', 2);
insert into reviews (review_title, appointment_id, rating) values ('nulla pede ullamcorper augue a', 'ajzff2rzbg', 4);
insert into reviews (review_title, appointment_id, rating) values ('sit amet lobortis sapien sapien', '1zwn9b33x4', 3);
insert into reviews (review_title, appointment_id, rating) values ('nisi eu', 'nbqspi3z8g', 4);
insert into reviews (review_title, appointment_id, rating) values ('vestibulum ac est', 'n94ssaq2o4', 3);
insert into reviews (review_title, appointment_id, rating) values ('felis sed lacus morbi', 'fdghopzyxo', 4);
insert into reviews (review_title, appointment_id, rating) values ('auctor gravida sem', '3tzduu1o14', 2);
insert into reviews (review_title, appointment_id, rating) values ('maecenas rhoncus aliquam', 'pi1bbg48kf', 5);
insert into reviews (review_title, appointment_id, rating) values ('luctus cum', 'tdpf0n1jqe', 2);
insert into reviews (review_title, appointment_id, rating) values ('cras in purus', 'twabh4ish7', 3);
insert into reviews (review_title, appointment_id, rating) values ('amet justo morbi ut odio', 'bjzvmldy8e', 2);
insert into reviews (review_title, appointment_id, rating) values ('vel nisl duis ac nibh', 'wxgecz1vgn', 1);
insert into reviews (review_title, appointment_id, rating) values ('sapien quis libero nullam sit', 'n8jtibn6z9', 3);
insert into reviews (review_title, appointment_id, rating) values ('est congue elementum', 'an4pbkli70', 4);
insert into reviews (review_title, appointment_id, rating) values ('eu orci mauris lacinia sapien', '38f6k8z7hs', 1);
insert into reviews (review_title, appointment_id, rating) values ('aliquet pulvinar sed nisl nunc', 'ks4dfat8kp', 4);
insert into reviews (review_title, appointment_id, rating) values ('vel nulla', 'yfqfpjsqhw', 3);
insert into reviews (review_title, appointment_id, rating) values ('a odio', 'y9rh8518gd', 2);
insert into reviews (review_title, appointment_id, rating) values ('sit amet justo', 'eizmtq4wwv', 4);
insert into reviews (review_title, appointment_id, rating) values ('ac est lacinia nisi venenatis', 'ic1r5zjyqn', 2);
insert into reviews (review_title, appointment_id, rating) values ('cras non', 'vgfee4vaxh', 2);
insert into reviews (review_title, appointment_id, rating) values ('lacus morbi quis tortor', 'epcpy21jif', 4);
insert into reviews (review_title, appointment_id, rating) values ('nulla justo aliquam quis', '7v2yq2cak4', 5);
insert into reviews (review_title, appointment_id, rating) values ('purus aliquet at feugiat non', 'ubixbuwxcf', 5);
insert into reviews (review_title, appointment_id, rating) values ('sit amet diam in', 'oo8s2x2ba9', 3);
insert into reviews (review_title, appointment_id, rating) values ('phasellus in felis donec semper', '6dhs0vw02b', 4);
insert into reviews (review_title, appointment_id, rating) values ('libero nullam sit amet turpis', '2gofsowpxs', 1);
insert into reviews (review_title, appointment_id, rating) values ('cubilia curae', 'yfxwh9cxg3', 5);
insert into reviews (review_title, appointment_id, rating) values ('in hac habitasse platea', 'hfgu90gsog', 5);
insert into reviews (review_title, appointment_id, rating) values ('purus eu magna vulputate', 'b261otipvu', 1);
insert into reviews (review_title, appointment_id, rating) values ('pulvinar lobortis est phasellus', 'ylfhckbwdz', 5);
insert into reviews (review_title, appointment_id, rating) values ('donec diam neque vestibulum eget', 'py73r3c0dy', 1);
insert into reviews (review_title, appointment_id, rating) values ('nibh quisque id', 'oybodqyhhl', 2);
insert into reviews (review_title, appointment_id, rating) values ('nulla suspendisse', 'fuqamnnccv', 5);
insert into reviews (review_title, appointment_id, rating) values ('quam sollicitudin vitae consectetuer', 'fwe2e0iwen', 4);
insert into reviews (review_title, appointment_id, rating) values ('elit proin', 'mo6mvyzamr', 4);
insert into reviews (review_title, appointment_id, rating) values ('luctus et', 'taea8ay4k4', 5);
insert into reviews (review_title, appointment_id, rating) values ('quis turpis sed', '0ot1feykvo', 3);
insert into reviews (review_title, appointment_id, rating) values ('nulla tellus in sagittis dui', '843jjcu68r', 1);
insert into reviews (review_title, appointment_id, rating) values ('in leo', 'bgzv6qjfca', 3);
insert into reviews (review_title, appointment_id, rating) values ('consequat metus sapien', 'ockeufvb77', 4);
insert into reviews (review_title, appointment_id, rating) values ('quisque arcu', '036fo74m39', 3);
insert into reviews (review_title, appointment_id, rating) values ('velit id pretium', 'qqyp9cehtr', 2);
insert into reviews (review_title, appointment_id, rating) values ('nunc donec quis orci eget', 'wt7q27pjbo', 1);
insert into reviews (review_title, appointment_id, rating) values ('hac habitasse platea dictumst', 'p39wcoxt84', 4);
insert into reviews (review_title, appointment_id, rating) values ('interdum in ante', 'y1vtlm60b3', 2);
insert into reviews (review_title, appointment_id, rating) values ('vivamus tortor duis mattis egestas', 'br4juiqlvv', 5);
insert into reviews (review_title, appointment_id, rating) values ('nulla pede ullamcorper', '6i3wf9w5wb', 2);
insert into reviews (review_title, appointment_id, rating) values ('feugiat non pretium quis lectus', '14v5902exe', 4);
insert into reviews (review_title, appointment_id, rating) values ('sit amet cursus', 't0rxfhkf7z', 2);
insert into reviews (review_title, appointment_id, rating) values ('ante vel', 'dumn711xpo', 3);
insert into reviews (review_title, appointment_id, rating) values ('primis in faucibus', '58ru4braxy', 1);
insert into reviews (review_title, appointment_id, rating) values ('magna ac consequat metus', '7l43ws9h6a', 2);
insert into reviews (review_title, appointment_id, rating) values ('ac diam cras pellentesque', 'wj6okw0spq', 1);
insert into reviews (review_title, appointment_id, rating) values ('interdum mauris non', 'g09f21epz1', 3);
insert into reviews (review_title, appointment_id, rating) values ('vestibulum ante', '689s1c6a4i', 3);
insert into reviews (review_title, appointment_id, rating) values ('amet cursus id turpis integer', 'dpmurew3ya', 3);
insert into reviews (review_title, appointment_id, rating) values ('dapibus augue vel accumsan', 'bqqr9msff5', 1);
insert into reviews (review_title, appointment_id, rating) values ('pretium iaculis', 'kk5ys7y8mb', 5);
insert into reviews (review_title, appointment_id, rating) values ('leo odio porttitor id', 'aqicvjng4u', 5);
insert into reviews (review_title, appointment_id, rating) values ('at vulputate vitae', 'gdgmbsjfpj', 1);
insert into reviews (review_title, appointment_id, rating) values ('donec ut mauris eget massa', 'pfoczhy6wg', 2);
insert into reviews (review_title, appointment_id, rating) values ('eu sapien', 'k9hxqbhkqv', 1);
insert into reviews (review_title, appointment_id, rating) values ('nunc proin at turpis', 'qocpg1mmse', 2);
insert into reviews (review_title, appointment_id, rating) values ('interdum eu tincidunt in leo', 'v8wfju4de1', 3);
insert into reviews (review_title, appointment_id, rating) values ('diam nam', 'kqvyko6s77', 5);
insert into reviews (review_title, appointment_id, rating) values ('posuere cubilia curae duis', 'tkoxes7hu8', 5);
insert into reviews (review_title, appointment_id, rating) values ('mattis pulvinar nulla', '2m2wsu9gsi', 1);
insert into reviews (review_title, appointment_id, rating) values ('semper est', 'uxsmv7t3gz', 2);
insert into reviews (review_title, appointment_id, rating) values ('lacus purus aliquet at', 'fxj2q4wcnf', 5);
insert into reviews (review_title, appointment_id, rating) values ('eu massa donec dapibus duis', 'byr3nt9xul', 4);
insert into reviews (review_title, appointment_id, rating) values ('urna ut tellus', 'fdqbol5fpm', 1);
insert into reviews (review_title, appointment_id, rating) values ('turpis adipiscing', 'vx0678xhw9', 3);
insert into reviews (review_title, appointment_id, rating) values ('varius integer ac leo pellentesque', '339m5ug89h', 2);
insert into reviews (review_title, appointment_id, rating) values ('platea dictumst', 'w0la7ft66s', 4);
insert into reviews (review_title, appointment_id, rating) values ('varius nulla facilisi cras non', '41alwh66z2', 2);
insert into reviews (review_title, appointment_id, rating) values ('lorem quisque ut erat', '1hp82lcrk2', 2);
insert into reviews (review_title, appointment_id, rating) values ('ante nulla justo', 'aqobm47v3a', 3);
insert into reviews (review_title, appointment_id, rating) values ('molestie hendrerit at vulputate', '58al147aba', 4);
insert into reviews (review_title, appointment_id, rating) values ('posuere cubilia', 'rl9ye7ycrc', 4);
insert into reviews (review_title, appointment_id, rating) values ('ac est', 'tkuhqwug24', 1);
insert into reviews (review_title, appointment_id, rating) values ('vestibulum ante ipsum', '1t1pedfz57', 5);
insert into reviews (review_title, appointment_id, rating) values ('sem fusce', '9w5wvi1ei6', 5);
insert into reviews (review_title, appointment_id, rating) values ('odio curabitur convallis duis consequat', 'ejyae44uj8', 1);
insert into reviews (review_title, appointment_id, rating) values ('sapien in', 'lvwnhgooq5', 3);
insert into reviews (review_title, appointment_id, rating) values ('mus etiam vel augue vestibulum', 'k0gerutzns', 2);
insert into reviews (review_title, appointment_id, rating) values ('curabitur convallis', 'e7fqivs5hx', 3);
insert into reviews (review_title, appointment_id, rating) values ('potenti in eleifend quam a', 'ti6z1k82cg', 2);
insert into reviews (review_title, appointment_id, rating) values ('hac habitasse', 'xs2r2muwac', 4);
insert into reviews (review_title, appointment_id, rating) values ('aliquet at feugiat non pretium', '4zbo94darl', 5);
insert into reviews (review_title, appointment_id, rating) values ('dolor sit amet consectetuer', 'lw4bw1ad76', 3);
insert into reviews (review_title, appointment_id, rating) values ('semper porta volutpat quam', 'xjh2zfjjad', 3);
insert into reviews (review_title, appointment_id, rating) values ('nulla ut', 'qhs3advbej', 1);
insert into reviews (review_title, appointment_id, rating) values ('non mi', 'p30g0j6ub9', 1);
insert into reviews (review_title, appointment_id, rating) values ('eget congue', 'vxm1c9s8y6', 2);
insert into reviews (review_title, appointment_id, rating) values ('mauris eget', 'xcnbahm33l', 5);
insert into reviews (review_title, appointment_id, rating) values ('nonummy maecenas tincidunt lacus', 'l5qjibx0qo', 4);
insert into reviews (review_title, appointment_id, rating) values ('nec nisi volutpat', '7ajfjrq6ee', 4);
insert into reviews (review_title, appointment_id, rating) values ('suspendisse potenti', '79odg1mig1', 1);
insert into reviews (review_title, appointment_id, rating) values ('porta volutpat quam', 'gfith8592u', 1);
insert into reviews (review_title, appointment_id, rating) values ('non mauris morbi non lectus', 'js7lpivjt2', 1);
insert into reviews (review_title, appointment_id, rating) values ('montes nascetur ridiculus mus etiam', 'h6aesoftqt', 1);
insert into reviews (review_title, appointment_id, rating) values ('tincidunt eu felis', 'wxo0ljl180', 1);
insert into reviews (review_title, appointment_id, rating) values ('molestie sed', 'amtk7md97k', 2);
insert into reviews (review_title, appointment_id, rating) values ('mauris laoreet', 'vjrddcn91d', 2);
insert into reviews (review_title, appointment_id, rating) values ('a suscipit nulla elit ac', 'm7xq1699ko', 2);
insert into reviews (review_title, appointment_id, rating) values ('turpis eget elit sodales', '6ol3senuqo', 5);
insert into reviews (review_title, appointment_id, rating) values ('scelerisque mauris', 'r6x9twprha', 5);
insert into reviews (review_title, appointment_id, rating) values ('est phasellus', 'g0acknc6n5', 2);
insert into reviews (review_title, appointment_id, rating) values ('dolor vel est', '31tm890ljb', 1);
insert into reviews (review_title, appointment_id, rating) values ('lorem quisque ut erat curabitur', 'ps6klr4y5l', 1);
insert into reviews (review_title, appointment_id, rating) values ('eu orci mauris lacinia sapien', 'pzjt1q0b8f', 5);
insert into reviews (review_title, appointment_id, rating) values ('primis in faucibus orci', '92oo2kx9m5', 2);
insert into reviews (review_title, appointment_id, rating) values ('primis in faucibus', '73cy5qzvr2', 3);
insert into reviews (review_title, appointment_id, rating) values ('proin eu mi nulla', '288vr7946l', 5);
insert into reviews (review_title, appointment_id, rating) values ('aliquam augue quam sollicitudin', 'j2k7fm9z22', 1);
insert into reviews (review_title, appointment_id, rating) values ('ante vestibulum', '37bd2y3taj', 4);
insert into reviews (review_title, appointment_id, rating) values ('erat tortor', '7i60dqjna9', 1);
