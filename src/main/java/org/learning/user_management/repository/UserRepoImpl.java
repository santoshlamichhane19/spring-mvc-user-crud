package org.learning.user_management.repository;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.learning.user_management.user.User;
import org.learning.user_management.util.HibernateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserRepoImpl implements UserRepo {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void createUser(User user) {
        Session session = HibernateUtil.getSession(sessionFactory);
        session.save(user);

    }

    @Override
    public void updateUser(User user) {
        Session session = HibernateUtil.getSession(sessionFactory);
        session.update(user);

    }

    @Override
    public void deleteUser(int id) {
        Session session = HibernateUtil.getSession(sessionFactory);
        User user = session.load(User.class, id);
        session.delete(user);
    }

    @Override
    public User getSingleUser(int id) {
        Session session = HibernateUtil.getSession(sessionFactory);
        return (User) session.get(User.class, id);

    }

    @SuppressWarnings("unchecked")
    @Override
    public List<User> getAllUser() {
        Session session = HibernateUtil.getSession(sessionFactory);
        Criteria criteria = session.createCriteria(User.class);

        return criteria.list();
    }

}
