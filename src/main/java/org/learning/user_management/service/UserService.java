package org.learning.user_management.service;

import org.learning.user_management.user.User;

import java.util.List;

public interface UserService {

    void createUser(User user);

    void updateUser(User user);

    void deleteUser(int id);

    User getSingleUser(int id);

    List<User> getAllUser();

}
