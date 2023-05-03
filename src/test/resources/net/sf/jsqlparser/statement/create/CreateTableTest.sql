-- testCreateTableForeignKey
CREATE TABLE test (id INT UNSIGNED NOT NULL AUTO_INCREMENT, string VARCHAR (20), user_id INT UNSIGNED, PRIMARY KEY (id), FOREIGN KEY (user_id) REFERENCES ra_user(id))
;

-- testCreateTempTableIssue293
CREATE GLOBAL TEMPORARY TABLE T1 (PROCESSID VARCHAR (32))
;

-- tableMovementWithAS
CREATE TABLE test (startdate DATE) DISABLE ROW MOVEMENT AS SELECT 1 FROM dual
;

-- testEnableRowMovementOption
CREATE TABLE test (startdate DATE) ENABLE ROW MOVEMENT
;

-- testOnDeleteSetNull
CREATE TABLE inventory (inventory_id INT PRIMARY KEY, product_id INT, CONSTRAINT fk_inv_product_id FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE SET NULL)
;

-- testCreateTableArrays
CREATE TABLE sal_emp (name text, pay_by_quarter integer[], schedule text[][])
;

-- testCreateTable2
CREATE TABLE testtab ("test" varchar (255))
;

-- testCreateTable3
CREATE TABLE testtab ("test" varchar (255), "test2" varchar (255))
;

-- testQuotedPKColumnsIssue491
CREATE TABLE `FOO` (`ID` INT64, `NAME` STRING (100)) PRIMARY KEY (`ID`)
;

-- testMySqlCreateTableWithConstraintWithNoAction
CREATE TABLE table1 (id INT (10) UNSIGNED NOT NULL AUTO_INCREMENT, t2_id INT (10) UNSIGNED DEFAULT NULL, t3_id INT (10) UNSIGNED DEFAULT NULL, t4_id INT (10) UNSIGNED NOT NULL, PRIMARY KEY (id), KEY fkc_table1_t4 (t4_id), KEY fkc_table1_t2 (t2_id), KEY fkc_table1_t3 (t3_id), CONSTRAINT fkc_table1_t2 FOREIGN KEY (t2_id) REFERENCES table_two(t2o_id) ON DELETE NO ACTION ON UPDATE NO ACTION, CONSTRAINT fkc_table1_t3 FOREIGN KEY (t3_id) REFERENCES table_three(t3o_id) ON UPDATE NO ACTION, CONSTRAINT fkc_table1_t4 FOREIGN KEY (t4_id) REFERENCES table_four(t4o_id) ON DELETE NO ACTION) ENGINE = InnoDB AUTO_INCREMENT = 8761 DEFAULT CHARSET = utf8
;

-- testColumnCheck
CREATE TABLE table1 (col1 INTEGER CHECK (col1 > 100))
;

-- testExcludeWhereConstraint
CREATE TABLE foo (col1 integer, EXCLUDE WHERE (col1 > 100))
;

-- testCreateTableParams
CREATE TEMPORARY TABLE T1 (PROCESSID VARCHAR (32)) ON COMMIT PRESERVE ROWS
;

-- testCreateTableDefault2
CREATE TABLE T1 (id integer default 1)
;

-- testCreateTableIssue113
CREATE TABLE foo (reason character varying (255) DEFAULT 'Test' :: character varying NOT NULL)
;

-- testCreateTableIssue270
create table item(i_item_sk integer not null,i_item_id character(16)not null,i_rec_start_date date,i_rec_end_date date,i_item_desc character varying(200),i_current_price numeric(7,2),i_wholesale_cost numeric(7,2),i_brand_id integer,i_brand character(50),i_class_id integer,i_class character(50),i_category_id integer,i_category character(50),i_manufact_id integer,i_manufact character(50),i_size character(20),i_formulation character(20),i_color character(20),i_units character(10),i_container character(10),i_manager_id integer,i_product_name character(50))
;

-- testCreateTableIssue798
CREATE TABLE `comment` (`text_hash` varchar (32) COLLATE utf8_bin)
;

-- testCreateTableIssue830
CREATE TABLE testyesr (id int, yy year)
;

-- testCreateTableIssue921
CREATE TABLE binary_test (c1 binary (10))
;

-- testCreateTableIssue924
CREATE TABLE test_descending_indexes (c1 INT, c2 INT, INDEX idx1 (c1 ASC, c2 DESC))
;

-- testCreateTableWithKey
CREATE TABLE bar (key character varying (255) NOT NULL)
;

-- testCreateTableIssue1230
CREATE TABLE TABLE_HISTORY (ID bigint generated by default as identity, CREATED_AT timestamp not null, TEXT varchar (255), primary key (ID))
;

-- testCreateTableIssue1488
create table u_call_record(card_user_id int(11)not null,device_id int(11)not null,call_start_at int(11)not null default current_timestamp(11),card_user_name varchar(32)character set utf8mb4 collate utf8mb4_general_ci null default null,sim_id varchar(32)character set utf8mb4 collate utf8mb4_general_ci null default null,called_number varchar(12)character set utf8mb4 collate utf8mb4_general_ci null default null,called_nickname varchar(32)character set utf8mb4 collate utf8mb4_general_ci null default null,talk_time smallint(8)null default null,area_name varchar(32)character set utf8mb4 collate utf8mb4_general_ci null default null,area_service_id int(11)null default null,operator_id int(4)null default null,status tinyint(4)null default null,create_at timestamp null default null,place_user varchar(16)character set utf8mb4 collate utf8mb4_general_ci null default null,primary key(card_user_id,device_id,call_start_at)using btree,index ucr_index_area_name(area_name)using btree,index ucr_index_area_service_id(area_service_id)using btree,index ucr_index_called_number(called_number)using btree,index ucr_index_create_at(create_at)using btree,index ucr_index_operator_id(operator_id)using btree,index ucr_index_place_user(place_user)using btree,index ucr_index_sim_id(sim_id)using btree,index ucr_index_status(status)using btree,index ucr_index_talk_time(talk_time)using btree)engine=innodb character set=utf8mb4 collate=utf8mb4_general_ci row_format=dynamic
;

-- testDisableRowMovementOption
CREATE TABLE test (startdate DATE) DISABLE ROW MOVEMENT
;

-- testCreateTablePrimaryKey
CREATE TABLE test (id INT UNSIGNED NOT NULL AUTO_INCREMENT, string VARCHAR (20), user_id INT UNSIGNED, CONSTRAINT pk_name PRIMARY KEY (id))
;

-- testCreateTableColumnValues
CREATE TABLE mytable1 (values INTEGER)
;

-- testCreateTableDefault
CREATE TABLE T1 (id integer default -1)
;

-- testCreateTableWithSetTypeIssue796
CREATE TABLE `tables_priv` (`Host` char (60) COLLATE utf8_bin NOT NULL DEFAULT '', `Table_priv` set ('Select', 'Insert', 'Update', 'Delete', 'Create', 'Drop', 'Grant', 'References', 'Index', 'Alter', 'Create View', 'Show view', 'Trigger') CHARACTER SET utf8 NOT NULL DEFAULT '') ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_bin COMMENT = 'Table privileges'
;

-- testCreateTableWithParameterDefaultFalseIssue1089
create table address_type(address_type char(1)not null,at_name varchar(250)not null,is_disabled bool not null default false,constraint pk_address_type primary key(address_type))
;

-- testIssue770Using
create table `department_region`(`id` int(11)unsigned not null auto_increment comment '自增主键',`department_id` int(10)unsigned not null comment '部门id',primary key(`id`)key `district_code`(`district_code`)using btree)engine=innodb auto_increment=420 default charset=utf8
;

-- testSettingCharacterSetIssue829
CREATE TABLE test (id int (11) NOT NULL, name varchar (64) CHARACTER SET GBK NOT NULL, age int (11) NOT NULL, score decimal (8, 2) DEFAULT NULL, description varchar (64) DEFAULT NULL, creationDate datetime DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY (id)) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4
;

-- testNamedColumnConstraint
CREATE TABLE foo (col1 integer CONSTRAINT no_null NOT NULL)
;

-- testCreateUnionIssue
CREATE TABLE temp.abc AS (SELECT c FROM t1) UNION (SELECT c FROM t2)
;

-- testCreateTableOrReplace
CREATE OR REPLACE TABLE testtab ("test" varchar (255))
;

-- testCreateTableWithCheck
CREATE TABLE table2 (id INT (10) NOT NULL, name TEXT, url TEXT, CONSTRAINT name_not_empty CHECK (name <> ''))
;

-- testCreateTableWithRange
CREATE TABLE foo (name character varying (255), range character varying (255), start_range integer, end_range integer)
;

-- testTimestampWithoutTimezone
CREATE TABLE abc.tabc (transaction_date TIMESTAMP WITHOUT TIME ZONE)
;

-- testIssue273Varchar2Byte
CREATE TABLE IF NOT EXISTS "TABLE_OK" ("SOME_FIELD" VARCHAR2 (256 BYTE))
;

-- testIssue273Varchar2Char
CREATE TABLE IF NOT EXISTS "TABLE_OK" ("SOME_FIELD" VARCHAR2 (256 CHAR))
;

-- testCreateTableSpanner
create table command(dataset_id int64 not null,command_id string(max)not null,val_bool bool,val_bytes bytes(1024),val_date date,val_timestamp timestamp,val_commit_timestamp timestamp not null options(allow_commit_timestamp=true),val_float64 float64,val_json json(2048),val_numeric numeric,val_string string(max),val_timestamp timestamp,arr_bool array<bool>,arr_bytes array<bytes(1024)>,arr_date array<date>,arr_timestamp array<timestamp>,arr_float64 array<float64>,arr_json array<json(2048)>,arr_numeric array<numeric>,arr_string array<string(max)>,arr_timestamp array<timestamp>,payload string(max),author string(max)not null,search string(max)as(upper(author))stored)primary key(dataset_id,command_id),interleave in parent dataset on delete cascade
;

-- testCreateTableUniqueConstraintAfterPrimaryKey
create table employees(employee_number int not null,employee_name char(50)not null,department_id int,salary int,primary key(employee_number),unique(employee_name),foreign key(department_id)references departments(department_id))parallel compress nologging
;

-- testCollateUtf8Issue785
CREATE TABLE DEMO_SQL (SHARE_PWD varchar (128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'COMMENT') ENGINE = InnoDB AUTO_INCREMENT = 34 DEFAULT CHARSET = utf8 COLLATE = utf8_bin COMMENT = 'COMMENT'
;

-- testTimestampWithTimezone
CREATE TABLE country_region (regionid BIGINT NOT NULL CONSTRAINT pk_auth_region PRIMARY KEY, region_name VARCHAR (100) NOT NULL, creation_date TIMESTAMP (0) WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP (0) NOT NULL, last_change_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP (0), CONSTRAINT region_name_unique UNIQUE (region_name))
;

-- testCreateTempTableAsSelect
CREATE TEMP TABLE T1 (C1, C2) AS SELECT C3, C4 FROM T2
;

-- testCreateTableUniqueConstraint
create table activities(_id integer primary key autoincrement,uuid varchar(255),user_id integer,sound_id integer,sound_type integer,comment_id integer,type string,tags varchar(255),created_at integer,content_id integer,sharing_note_text varchar(255),sharing_note_created_at integer,unique(created_at,type,content_id,sound_id,user_id))
;

-- testCreateTableForeignKey2
CREATE TABLE test (id INT UNSIGNED NOT NULL AUTO_INCREMENT, string VARCHAR (20), user_id INT UNSIGNED, PRIMARY KEY (id), CONSTRAINT fkIdx FOREIGN KEY (user_id) REFERENCES ra_user(id))
;

-- testCreateTableForeignKey3
create table test(id int unsigned not null auto_increment,string varchar(20),user_id int unsigned references ra_user(id),primary key(id))
;

-- testCreateTableForeignKey4
create table test(id int unsigned not null auto_increment,string varchar(20),user_id int unsigned foreign key references ra_user(id),primary key(id))
;

-- testCreateTableForeignKey5
CREATE TABLE IF NOT EXISTS table1 (id INTEGER PRIMARY KEY AUTO_INCREMENT, aid INTEGER REFERENCES accounts ON aid ON DELETE CASCADE, name STRING, lastname STRING)
;

-- testCreateTableForeignKey6
CREATE TABLE test (id long, fkey long references another_table (id))
;

-- testCreateTableWithTablespaceIssue247
CREATE TABLE TABLE1 (COLUMN1 VARCHAR2 (15), COLUMN2 VARCHAR2 (15), CONSTRAINT P_PK PRIMARY KEY (COLUMN1) USING INDEX TABLESPACE "T_INDEX") TABLESPACE "T_SPACE"
;

-- testDefaultArray
CREATE TABLE t (f1 text[] DEFAULT ARRAY[] :: text[] NOT NULL, f2 int[] DEFAULT ARRAY[1, 2])
;

-- testCreateTableWithUniqueKey
CREATE TABLE animals (id INT NOT NULL, name VARCHAR (100) UNIQUE KEY (id))
;

-- testColumnConstraintWith
CREATE TABLE foo (col1 integer) WITH (fillfactor=70)
;

-- testCreateTableVeryComplex
create table `wp_commentmeta`(`meta_id` bigint(20)unsigned not null auto_increment,`comment_id` bigint(20)unsigned not null default '0',`meta_key` varchar(255)default null,`meta_value` longtext,primary key(`meta_id`),key `comment_id`(`comment_id`),key `meta_key`(`meta_key`))engine=innodb default charset=utf8
;

-- testCreateTableVeryComplex
create table `wp_comments`(`comment_id` bigint(20)unsigned not null auto_increment,`comment_post_id` bigint(20)unsigned not null default '0',`comment_author` tinytext not null,`comment_author_email` varchar(100)not null default '',`comment_author_url` varchar(200)not null default '',`comment_author_ip` varchar(100)not null default '',`comment_date` datetime not null default '0000-00-00 00:00:00',`comment_date_gmt` datetime not null default '0000-00-00 00:00:00',`comment_content` text not null,`comment_karma` int(11)not null default '0',`comment_approved` varchar(20)not null default '1',`comment_agent` varchar(255)not null default '',`comment_type` varchar(20)not null default '',`comment_parent` bigint(20)unsigned not null default '0',`user_id` bigint(20)unsigned not null default '0',primary key(`comment_id`),key `comment_post_id`(`comment_post_id`),key `comment_approved_date_gmt`(`comment_approved`,`comment_date_gmt`),key `comment_date_gmt`(`comment_date_gmt`),key `comment_parent`(`comment_parent`))engine=innodb auto_increment=4 default charset=utf8
;

-- testCreateTableVeryComplex
create table `wp_links`(`link_id` bigint(20)unsigned not null auto_increment,`link_url` varchar(255)not null default '',`link_name` varchar(255)not null default '',`link_image` varchar(255)not null default '',`link_target` varchar(25)not null default '',`link_description` varchar(255)not null default '',`link_visible` varchar(20)not null default 'y',`link_owner` bigint(20)unsigned not null default '1',`link_rating` int(11)not null default '0',`link_updated` datetime not null default '0000-00-00 00:00:00',`link_rel` varchar(255)not null default '',`link_notes` mediumtext not null,`link_rss` varchar(255)not null default '',primary key(`link_id`),key `link_visible`(`link_visible`))engine=innodb default charset=utf8
;

-- testCreateTableVeryComplex
create table `wp_options`(`option_id` bigint(20)unsigned not null auto_increment,`option_name` varchar(64)not null default '',`option_value` longtext not null,`autoload` varchar(20)not null default 'yes',primary key(`option_id`),unique key `option_name`(`option_name`))engine=innodb auto_increment=402 default charset=utf8
;

-- testCreateTableVeryComplex
create table `wp_postmeta`(`meta_id` bigint(20)unsigned not null auto_increment,`post_id` bigint(20)unsigned not null default '0',`meta_key` varchar(255)default null,`meta_value` longtext,primary key(`meta_id`),key `post_id`(`post_id`),key `meta_key`(`meta_key`))engine=innodb auto_increment=11 default charset=utf8
;

-- testCreateTableVeryComplex
create table `wp_posts`(`id` bigint(20)unsigned not null auto_increment,`post_author` bigint(20)unsigned not null default '0',`post_date` datetime not null default '0000-00-00 00:00:00',`post_date_gmt` datetime not null default '0000-00-00 00:00:00',`post_content` longtext not null,`post_title` text not null,`post_excerpt` text not null,`post_status` varchar(20)not null default 'publish',`comment_status` varchar(20)not null default 'open',`ping_status` varchar(20)not null default 'open',`post_password` varchar(20)not null default '',`post_name` varchar(200)not null default '',`to_ping` text not null,`pinged` text not null,`post_modified` datetime not null default '0000-00-00 00:00:00',`post_modified_gmt` datetime not null default '0000-00-00 00:00:00',`post_content_filtered` longtext not null,`post_parent` bigint(20)unsigned not null default '0',`guid` varchar(255)not null default '',`menu_order` int(11)not null default '0',`post_type` varchar(20)not null default 'post',`post_mime_type` varchar(100)not null default '',`comment_count` bigint(20)not null default '0',primary key(`id`),key `post_name`(`post_name`),key `type_status_date`(`post_type`,`post_status`,`post_date`,`id`),key `post_parent`(`post_parent`),key `post_author`(`post_author`))engine=innodb auto_increment=55004 default charset=utf8
;

-- testCreateTableVeryComplex
create table `wp_term_relationships`(`object_id` bigint(20)unsigned not null default '0',`term_taxonomy_id` bigint(20)unsigned not null default '0',`term_order` int(11)not null default '0',primary key(`object_id`,`term_taxonomy_id`),key `term_taxonomy_id`(`term_taxonomy_id`))engine=innodb default charset=utf8
;

-- testCreateTableVeryComplex
create table `wp_term_taxonomy`(`term_taxonomy_id` bigint(20)unsigned not null auto_increment,`term_id` bigint(20)unsigned not null default '0',`taxonomy` varchar(32)not null default '',`description` longtext not null,`parent` bigint(20)unsigned not null default '0',`count` bigint(20)not null default '0',primary key(`term_taxonomy_id`),unique key `term_id_taxonomy`(`term_id`,`taxonomy`),key `taxonomy`(`taxonomy`))engine=innodb auto_increment=2 default charset=utf8
;

-- testCreateTableVeryComplex
create table `wp_terms`(`term_id` bigint(20)unsigned not null auto_increment,`name` varchar(200)not null default '',`slug` varchar(200)not null default '',`term_group` bigint(10)not null default '0',primary key(`term_id`),unique key `slug`(`slug`),key `name`(`name`))engine=innodb auto_increment=2 default charset=utf8
;

-- testCreateTableVeryComplex
create table `wp_usermeta`(`umeta_id` bigint(20)unsigned not null auto_increment,`user_id` bigint(20)unsigned not null default '0',`meta_key` varchar(255)default null,`meta_value` longtext,primary key(`umeta_id`),key `user_id`(`user_id`),key `meta_key`(`meta_key`))engine=innodb auto_increment=17 default charset=utf8
;

-- testCreateTableVeryComplex
create table `wp_users`(`id` bigint(20)unsigned not null auto_increment,`user_login` varchar(60)not null default '',`user_pass` varchar(64)not null default '',`user_nicename` varchar(50)not null default '',`user_email` varchar(100)not null default '',`user_url` varchar(100)not null default '',`user_registered` datetime not null default '0000-00-00 00:00:00',`user_activation_key` varchar(60)not null default '',`user_status` int(11)not null default '0',`display_name` varchar(250)not null default '',primary key(`id`),key `user_login_key`(`user_login`),key `user_nicename`(`user_nicename`))engine=innodb auto_increment=2 default charset=utf8
;

-- testCreateTableUnlogged2
CREATE UNLOGGED TABLE mytab (mycol a (10, 20) c nm g, mycol2 mypar1 mypar2 (23,323,3) asdf ('23','123') dasd, PRIMARY KEY (mycol2, mycol))
;

-- testCreateUnitonIssue402_2
CREATE TABLE temp.abc AS (SELECT sku FROM temp.a UNION SELECT sku FROM temp.b)
;

-- testCreateTableWithTablespaceIssue247_1
CREATE TABLE TABLE1 (COLUMN1 VARCHAR2 (15), COLUMN2 VARCHAR2 (15), CONSTRAINT P_PK PRIMARY KEY (COLUMN1) USING INDEX TABLESPACE "T_INDEX")
;

-- testCreateTableColumnValue
CREATE TABLE mytable1 (value INTEGER)
;

-- testCreateTableParams2
CREATE TEMPORARY TABLE t1 WITH (APPENDONLY=true,ORIENTATION=column,COMPRESSTYPE=zlib,OIDS=FALSE) ON COMMIT DROP AS SELECT column FROM t2
;

-- testCreateTableWithCommentIssue413_2
CREATE TABLE a LIKE (b)
;

-- testCreateTableInlinePrimaryKey
CREATE TABLE animals (id INT PRIMARY KEY NOT NULL)
;

-- testCreateTableWithCheckNotNull
CREATE TABLE table2 (id INT (10) NOT NULL, name TEXT, url TEXT, CONSTRAINT name_not_null CHECK (name IS NOT NULL))
;

-- testCreateTableArrays2
CREATE TABLE sal_emp (name text, pay_by_quarter integer[5], schedule text[3][2])
;

-- testCreateTableAsSelect
CREATE TABLE a AS SELECT col1, col2 FROM b
;

-- testCreateTableBinaryIssue1518
CREATE TABLE `s` (`a` enum ('a', 'b', 'c') CHARACTER SET binary COLLATE binary)
;

-- testCreateTableBinaryIssue1596
CREATE TABLE student2 (id int (10) NOT NULL COMMENT 'ID', name varchar (20) COLLATE utf8mb4_bin DEFAULT NULL, birth year (4) DEFAULT NULL, department varchar (20) COLLATE utf8mb4_bin DEFAULT NULL, address varchar (50) COLLATE utf8mb4_bin DEFAULT NULL, PRIMARY KEY (id), UNIQUE KEY id (id), INDEX name (name) USING BTREE) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin
;

-- testCreateUnionIssue1309
CREATE TABLE temp.abc AS (SELECT c FROM t1) UNION (SELECT c FROM t2)
;

-- testCreateTableWithComments
create table if not exists `eai_applications`(`id` bigint(20)unsigned not null auto_increment comment 'comment',`name` varchar(64)not null comment 'comment',`logo` varchar(128)default null comment 'comment',`description` varchar(128)default null comment 'comment',`type` int(11)not null comment 'comment',`status` tinyint(2)not null comment 'comment',`creator_id` bigint(20)not null comment 'comment',`created_at` datetime not null comment 'comment',`updated_at` datetime not null comment 'comment',primary key(`id`))comment='comment'
;

-- testMySqlCreateTableOnUpdateCurrentTimestamp
CREATE TABLE test (applied timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
;

-- testTableReferenceWithSchema
CREATE TABLE table1 (col1 INTEGER REFERENCES schema1.table1)
;

-- testQuotedPKColumnsIssue491_2
CREATE TABLE `FOO` (`ID` INT64, `NAME` STRING (100), PRIMARY KEY (`ID`))
;

-- testCreateTableWithCommentIssue413
CREATE TABLE a LIKE b
;

-- testCreateTableWithCommentIssue922
create table index_with_comment_test(id int(11)not null,name varchar(60)default null,key name_ind(name)comment 'comment for the name index')engine=innodb default charset=utf8
;

-- testKeySyntaxWithLengthColumnParameter
CREATE TABLE basic (BASIC_TITLE varchar (255) NOT NULL, KEY BASIC_TITLE (BASIC_TITLE (255)))
;

-- testCreateTemporaryTableAsSelect
CREATE TEMPORARY TABLE T1 (C1, C2) AS SELECT C3, C4 FROM T2
;

-- testCreateTableAsSelect2
CREATE TABLE newtable AS WITH a AS (SELECT col1, col3 FROM testtable) SELECT col1, col2, col3 FROM b INNER JOIN a ON b.col1 = a.col1
;

-- testCreateTableAsSelect3
CREATE TABLE public.sales1 AS (SELECT * FROM public.sales)
;

-- testCreateTableIssue270_1
CREATE TABLE item (i_item_sk integer NOT NULL, i_item_id character (16))
;

-- testCreateTableIssue798_2
create table parent(parent_id int(11)not null auto_increment,pcn varchar(100)not null,is_deleted char(1)not null,structure_id int(11)not null,dirty_status char(1)not null,biological char(1)not null,structure_type int(11)not null,cst_original varchar(1000)character set utf8 collate utf8_bin default null,mwt decimal(14,6)default null,restricted int(11)not null,init_date datetime default null,mod_date datetime default null,created_by varchar(255)not null,modified_by varchar(255)not null,chemist_id varchar(255)not null,unknown_id int(11)default null,stereochemistry varchar(256)default null,geometric_isomerism varchar(256)default null,primary key(parent_id),unique key parent_pcn_idx(pcn),key parent_sid_idx(structure_id),key parent_dirty_idx(dirty_status))engine=innodb auto_increment=2663 default charset=utf8
;

-- testCreateTableIssue830_2
CREATE TABLE testyesr (id int, yy year, mm month, dd day)
;

-- testCreateTableIssue924_2
CREATE TABLE test_descending_indexes (c1 INT, c2 INT, INDEX idx1 (c1 ASC, c2 ASC), INDEX idx2 (c1 ASC, c2 DESC), INDEX idx3 (c1 DESC, c2 ASC), INDEX idx4 (c1 DESC, c2 DESC))
;

-- testIssue661Partition
CREATE TABLE T_TEST_PARTITION (PART_COLUMN VARCHAR2 (32) NOT NULL, OTHER_COLS VARCHAR2 (10) NOT NULL) TABLESPACE TBS_DATA_01 PARTITION BY HASH (PART_COLUMN) PARTITIONS 4 STORE IN (TBS_DATA_01) COMPRESS
;

-- testMySqlCreateTableWithConstraintWithCascade
CREATE TABLE table1 (id INT (10) UNSIGNED NOT NULL AUTO_INCREMENT, t2_id INT (10) UNSIGNED DEFAULT NULL, t3_id INT (10) UNSIGNED DEFAULT NULL, t4_id INT (10) UNSIGNED NOT NULL, PRIMARY KEY (id), KEY fkc_table1_t4 (t4_id), KEY fkc_table1_t2 (t2_id), KEY fkc_table1_t3 (t3_id), CONSTRAINT fkc_table1_t2 FOREIGN KEY (t2_id) REFERENCES table_two(t2o_id) ON DELETE CASCADE ON UPDATE CASCADE, CONSTRAINT fkc_table1_t3 FOREIGN KEY (t3_id) REFERENCES table_three(t3o_id) ON UPDATE CASCADE, CONSTRAINT fkc_table1_t4 FOREIGN KEY (t4_id) REFERENCES table_four(t4o_id) ON DELETE CASCADE) ENGINE = InnoDB AUTO_INCREMENT = 8761 DEFAULT CHARSET = utf8
;

-- testMySqlCreateTableWithTextIndexes
CREATE TABLE table2 (id INT (10) UNSIGNED NOT NULL AUTO_INCREMENT, name TEXT, url TEXT, created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, PRIMARY KEY (id), FULLTEXT KEY idx_table2_name (name)) ENGINE = InnoDB AUTO_INCREMENT = 7334 DEFAULT CHARSET = utf8
;

-- testCreateTableIfNotExists
CREATE TABLE IF NOT EXISTS animals (id INT NOT NULL)
;

-- testCreateUnitonIssue402
CREATE TABLE temp.abc AS SELECT sku FROM temp.a UNION SELECT sku FROM temp.b
;

