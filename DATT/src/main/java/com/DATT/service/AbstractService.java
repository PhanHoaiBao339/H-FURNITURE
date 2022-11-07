package com.DATT.service;

import java.util.List;

public interface AbstractService<T, ID> {
	List<T> findAll();

	T findById(ID id);

	T create(T t);

	T update(T t);

	void delete(ID id);
}
