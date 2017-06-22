package com.lin.school1.dao;

import org.apache.commons.dbutils.QueryRunner;

import cn.itcast.jdbc.TxQueryRunner;

public abstract class Dao {
	protected String sql;
	protected QueryRunner qr = new TxQueryRunner();
}
