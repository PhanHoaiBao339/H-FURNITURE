package com.DATT.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.DATT.entity.News;

public interface NewsDAO extends JpaRepository<News, String>{

}
