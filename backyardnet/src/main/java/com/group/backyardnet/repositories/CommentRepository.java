package com.group.backyardnet.repositories;

import com.group.backyardnet.models.Comment;

import org.springframework.data.repository.CrudRepository;

public interface CommentRepository extends CrudRepository<Comment, Long> {

}
