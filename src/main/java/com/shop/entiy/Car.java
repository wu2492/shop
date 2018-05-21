package com.shop.entiy;

public class Car {
	/*create table shop_car(
id number(16) primary key,
user_id number(16) references shop_user(id),
pro_id number(16) references pro(id),
shop_count number(8) default(0)
	);
	*/
	private Long id;
	private Integer count;
	
	private User user;
	private Pro pro;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	
	}

	public Pro getPro() {
		return pro;
	}
	public void setPro(Pro pro) {
		this.pro = pro;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Car() {
	}
	public Car(Long id, Integer count, User user, Pro pro) {
		super();
		this.id = id;
		this.count = count;
		this.user = user;
		this.pro = pro;
	}
	@Override
	public String toString() {
		return "Car [id=" + id + ", count=" + count + ", user=" + user + ", pro=" + pro + "]";
	}
	
}
