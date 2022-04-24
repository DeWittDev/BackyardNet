package com.group.backyardnet.services;

import java.util.List;
import java.util.Optional;

import com.group.backyardnet.models.Comment;
import com.group.backyardnet.repositories.CommentRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentService {
    @Autowired
    private CommentRepository commentRepo;

    // create comment
    public Comment addComment(Comment newComment) {
        commentRepo.save(newComment);
        return null;
    }

    public List<Comment> findAll() {
        return commentRepo.findAll();
    }

    public Comment findById(Long id) {
        Optional<Comment> result = commentRepo.findById(id);
        if (result.isPresent()) {
            return result.get();
        }
        return null;
    }

    // Edit Comment
    public Comment edit(Comment comment) {
        return commentRepo.save(comment);
    }

    // Delete Comment
    public void delete(Long id) {
        commentRepo.deleteById(id);
    }

}
