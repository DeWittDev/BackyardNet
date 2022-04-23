package com.group.backyardnet.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.group.backyardnet.models.Item;

@Repository
public interface ItemRepository extends CrudRepository<Item, Long> {
    
	List<Item> findAll();
	
	Item findById(String id);
	
}
