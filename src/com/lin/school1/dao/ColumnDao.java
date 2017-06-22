package com.lin.school1.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import com.lin.school1.bean.Column;

import cn.itcast.commons.CommonUtils;

/**
 * 栏目信息数据持久层
 * @author Administrator
 *
 */
public class ColumnDao extends Dao{
	
	/**
	 * 添加栏目信息
	 * @param column
	 */
	public void add(Column column) {
		
	}
	
	/**
	 * 删除栏目信息
	 */
	public void delete(int columnId) {
		
	}
	
	/**
	 * 修改栏目信息
	 */
	public void update() {
		
	}
	
	/**
	 * 根据id查找栏目信息
	 * @param columnId
	 * @return
	 */
	public Column findById(int columnId) {
		if (columnId == 0){
			return null;
		}
		try {
			//sql查询语句
			sql = "SELECT * FROM colum WHERE columnId=? AND columnState!=1";
			//获得所有的栏目集合
			Map<String, Object> map = qr.query(sql, new MapHandler(), columnId);
			//map封装一个column对象
			return mapToColumn(map);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 将map封装为Column对象
	 * @param map
	 * @return
	 */
	private Column mapToColumn(Map<String, Object> map) {
		Column column = CommonUtils.toBean(map, Column.class);
		//设置父代的column
		column.setParentColumn(findById((int)map.get("parentColumnId")));
		//设置子代的column集合
		column.setChildColumn(findByParentId(column.getColumnId()));
		//返回Column对象
		return column;
	}

	/**
	 * 根据父类的ID获得子类的集合
	 * @param columnId
	 * @return
	 */
	private List<Column> findByParentId(int parentColumnId) {
		List<Column> columns = new ArrayList<>();
		try {
			//sql查询语句,0是正常 1是删除
			sql = "SELECT * FROM colum WHERE columnState!=1 AND parentColumnId=?";
			//获得所有的栏目集合
			List<Map<String, Object>> maps = qr.query(sql, new MapListHandler(), parentColumnId);
			//System.out.println(maps);
			//获得所有数据
			for (Map<String, Object> map:maps) {
				//封装一个column对象
				Column column = CommonUtils.toBean(map, Column.class);
				columns.add(column);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return columns;
	}

	/**
	 * 查找所有的顶层栏目信息
	 * @return
	 */
	public List<Column> query() {
		List<Column> lists = new ArrayList<>();
		try {
			//sql查询语句,0是正常 1是删除
			sql = "SELECT * FROM colum WHERE columnState!=1 AND parentColumnId=0";
			//获得所有的栏目集合
			List<Map<String, Object>> maps = qr.query(sql, new MapListHandler());
			//获得所有数据
			for (Map<String, Object> map:maps) {
				//封装一个column对象
				lists.add(mapToColumn(map));
			}
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return lists;
	}

	/**
	 * 根据标示码查找栏目数据
	 * @param i
	 * @return
	 */
	public List<Column> findByColumnState(int columnState) {
		List<Column> lists = new ArrayList<>();
		try {
			//sql查询语句,0是正常 1是删除
			sql = "SELECT * FROM colum WHERE columnState=? AND parentColumnId!=0";
			//获得所有的栏目集合
			lists = qr.query(sql, new BeanListHandler<Column>(Column.class), columnState);
			//List<Map<String, Object>> maps = qr.query(sql, new MapListHandler(),columnState);
			//获得所有数据
//			for (Map<String, Object> map:maps) {
//				//封装一个column对象
//				lists.add(mapToColumn(map));
//			}
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return lists;
	}
}
