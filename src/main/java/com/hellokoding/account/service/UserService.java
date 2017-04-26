package com.hellokoding.account.service;

import java.util.List;

import com.hellokoding.account.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
    
    List<User> listUsers();
    void deleteUser(long id);
}
