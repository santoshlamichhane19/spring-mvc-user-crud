package org.learning.user_management.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class HibernateUtil {

    // Using session factory
    public static Session getSession(SessionFactory sf) {
        Session session = sf.getCurrentSession();
        if (session == null) {
            session = sf.openSession();
        }
        return session;
    }

}
