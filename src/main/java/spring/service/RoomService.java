/*
 * @author Ha Minh Tri
 * @date Mar 31, 2021
 * @project MockProject
 */


package spring.service;

import java.util.List;

import spring.model.Room;
import spring.model.RoomCategory;

public interface RoomService {
	void addRoom(Room room);
	List<RoomCategory> findAllRoomCate();
}
