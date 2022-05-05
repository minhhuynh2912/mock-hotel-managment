/*
 * @author Ha Minh Tri
 * @date Mar 31, 2021
 * @project MockProject
 */


package spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.model.Room;
import spring.model.RoomCategory;
import spring.repository.RoomCategoryRepository;
import spring.repository.RoomRepository;

@Service
public class RoomServiceImp implements RoomService{
	
	@Autowired
	private RoomRepository roomRepository;
	
	@Autowired
	private RoomCategoryRepository roomCategoryRepository;

	@Override
	public void addRoom(Room room) {
		roomRepository.save(room);
		
	}

	@Override
	public List<RoomCategory> findAllRoomCate() {
		return roomCategoryRepository.findAll();
	}
}
