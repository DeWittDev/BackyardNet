package com.group.backyardnet.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.group.backyardnet.models.Comment;

@Repository
public interface CommentRepository extends CrudRepository<Comment, Long> {

}
