package org.learning.user_management.repository;

import org.learning.user_management.user.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepo {

    void createUser(User user);

    void updateUser(User user);

    void deleteUser(int id);

    User getSingleUser(int id);

    List<User> getAllUser();

}
