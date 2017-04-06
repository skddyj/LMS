package com.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.po.Employee;


public class EmployeeDao {
	private SessionFactory sessionFactory;
	public Employee getEmployee(int eid){
		Session session=sessionFactory.openSession();
		Employee employee=(Employee)session.get(Employee.class,eid);
		return employee;
	}
	public Employee getEmployeeByEname(String ename){
		Session session=sessionFactory.openSession();
		Employee employee=(Employee)session.get(Employee.class,ename);
		return employee;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	

}