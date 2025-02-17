package com.example.userservice.repository;

import com.example.userservice.model.User;
import org.springframework.stereotype.Repository;

import java.util.Arrays;
import java.util.List;

@Repository
public class UserRepository {
    public List<User> getUsers() {
        return Arrays.asList(
            new User(1L, "John Doe", "john@example.com"),
            new User(2L, "Jane Doe", "jane@example.com")
        );
    }
}

