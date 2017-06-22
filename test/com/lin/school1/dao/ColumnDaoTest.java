package com.lin.school1.dao;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import com.lin.school1.bean.Article;
import com.lin.school1.bean.Column;
import com.lin.school1.service.ColumnService;

public class ColumnDaoTest {

	@Test
	public void testAdd() {
		fail("尚未实现");
	}

	@Test
	public void testDelete() {
		fail("尚未实现");
	}

	@Test
	public void testUpdate() {
		fail("尚未实现");
	}

	@Test
	public void testFindById() {
		Column column = new ColumnDao().findById(1);
		System.out.println(column);
	}

	@Test
	public void testQuery() {
		Column column = new ColumnDao().findById(1);
		List<Article> query = new ArticleDao().findAllByColumnId(column);
		System.out.println(query);
	}
	
	@Test
	public void findLeft() {
		System.out.println(new ColumnService().findLeft());
	}
	
	@Test
	public void findRight() {
		System.out.println(new ColumnService().findRight());
	}

}
