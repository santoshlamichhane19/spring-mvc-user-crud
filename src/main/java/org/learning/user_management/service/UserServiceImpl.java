package org.learning.user_management.service;

import org.learning.user_management.repository.UserRepo;
import org.learning.user_management.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepo userRepo;

    public void createUser(User user) {
        userRepo.createUser(user);

    }

    @Override
    public void updateUser(User user) {
        userRepo.updateUser(user);

    }

    @Override
    public void deleteUser(int id) {
        userRepo.deleteUser(id);

    }

    @Override
    public User getSingleUser(int id) {
        return userRepo.getSingleUser(id);

    }

    @Override
    public List<User> getAllUser() {
        return userRepo.getAllUser();
    }

}
