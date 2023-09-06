package com.pablos.spring.mvc.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.pablos.spring.mvc.entity.Employee;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository // аннотация DAO
public class EmployeeDAOImpl implements EmployeeDAO {
    @Autowired //мы уже описали этот БИН в конфиге XML TODO: попробовать убрать эту аннотацию - СПРИНГ сам подхватит???
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<Employee> getAllEmployees() {
        Session session = sessionFactory.getCurrentSession();
        Query<Employee> query = session.createQuery("from Employee"
                , Employee.class); // создаём запрос
        return query.getResultList(); // пуляеем запрос и сразу отдаём
        // a можно и одной строкой:
        // return sessionFactory.getCurrentSession().createQuery("from Employee", Employee.class).getResultList();
    }
}
