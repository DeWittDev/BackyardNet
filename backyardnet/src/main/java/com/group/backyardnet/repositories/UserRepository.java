package com.group.backyardnet.repositories;

import com.group.backyardnet.models.User;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<User, String> {
    User findByUserName(String userName);

    User findByEmail(String email);

    User findById(Long id);
}
