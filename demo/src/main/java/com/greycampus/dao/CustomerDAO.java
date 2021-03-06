package com.greycampus.dao;

import java.util.List;

import javax.sql.DataSource;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.greycampus.entity.Customer;

@Repository
@Transactional
public class CustomerDAO extends JdbcDaoSupport {

	@Autowired
	public CustomerDAO(DataSource dataSource) {
		this.setDataSource(dataSource);
	}

	public static java.sql.Date getCurrentDate() {
		java.util.Date today = new java.util.Date();
		return new java.sql.Date(today.getTime());
	}

	public int insert(Customer customer) {
		String sql = "insert into customer values(?,?,?,?,?,?,?,?,?)";
//		String query = "insert into address values(?,?,?,?)";

//		customer.setAddress(address);
//		address.setCustomer(customer);
//		address.setAid(customer.getCid());
//		int setAid = address.setAid(customer.getCid());
//		System.out.println(setAid);
//		int aid = address.getAid();
//		System.out.println(aid);
		return getJdbcTemplate().update(sql, customer.getCid(), customer.getName(), customer.getType(),
				customer.getPhone(), customer.getStreet(), customer.getCity(), customer.getCountry(), getCurrentDate(),
				getCurrentDate());
//
//		getJdbcTemplate().update(query, address.getStreet(), address.getCity(), address.getCountry(),
//				customer.getCid());
	}

	public void delete(int cid) {
		String sql = "delete from customer where cid =?";
		getJdbcTemplate().update(sql, cid);
	}

	public int update(Customer customer) {
		String sql = "update customer set name=? , phone=? where cid =?";
		return getJdbcTemplate().update(sql, customer.getName(), customer.getPhone(), customer.getCid());
	}

	public List<Customer> search(int cid) {
		String sql = "select * from customer where cid=" + cid;
		return getJdbcTemplate().query(sql,
				(rs, i) -> new Customer(rs.getInt("cid"), rs.getString("name"), rs.getString("type"),
						rs.getString("phone"), rs.getString("street"), rs.getString("city"), rs.getString("country")));
	}
//	public Customer get(int id) {
//	    String sql = "SELECT * FROM SALES WHERE id = ?";
//	    Object[] args = {id};
//	    Customer customer = getJdbcTemplate().queryForObject(sql, args,
//	                    BeanPropertyRowMapper.newInstance(Sale.class));
//	    return sale;
//	}

}
