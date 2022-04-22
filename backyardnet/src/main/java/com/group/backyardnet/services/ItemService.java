package com.group.backyardnet.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.group.backyardnet.models.Item;
import com.group.backyardnet.repositories.ItemRepository;

@Service
public class ItemService {
	
    @Autowired
    private ItemRepository itemRepository;
    
  //Create Item
    public Item addItem(Item newItem) {
    	itemRepository.save(newItem);
    	return null;
    }
    
  //Find Items
    public List<Item> findAll() {
    	return itemRepository.findAll();
    }
    
    public Item findById(Long id) {
    	Optional<Item> result = itemRepository.findById(id);
    	if(result.isPresent()) {
    		return result.get();
    	}
    	return null;
    }
    
  //Edit Items
    public Item edit(Item item) {
    	return itemRepository.save(item);
    }
    
  //Delete Items
    public void delete(Long id) {
    	itemRepository.deleteById(id);
    }
}
