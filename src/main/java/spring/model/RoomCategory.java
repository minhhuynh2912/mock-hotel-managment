/*
 * @author Ha Minh Tri
 * @date Mar 31, 2021
 * @project MockProject
 */


package spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "Room_Category")
@Table(name = "Room_Category")
public class RoomCategory {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "categoryroomid")
	private int id;
	
	@Column(name = "categoryname")
	private String catRoomName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCatRoomName() {
		return catRoomName;
	}

	public void setCatRoomName(String catRoomName) {
		this.catRoomName = catRoomName;
	}


	
	
}
