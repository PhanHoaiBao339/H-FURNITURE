package com.DATT.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.DATT.entity.Comment;

public interface CommentDAO extends JpaRepository<Comment, Long>{

}
