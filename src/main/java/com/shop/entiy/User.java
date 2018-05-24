package com.shop.entiy;

import javax.validation.constraints.Email;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class User {
	/*create table shop_user(
      id number(16) primary key,
      username varchar(64),
      password varchar(64),
      e_mail varchar(64),
      phone varchar(16),
      role_id number(16) references shop_role(id)
      );*/
	private Long id;
	@Size(min=4,max=32,message="用户名在4~32之间")
	private String username;
	@Size(min=6,max=64,message="密码在6~64之间")
	private String password;
	@Email(regexp="^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*\\.[a-zA-Z0-9]{2,6}$",message="邮箱号不符合规则")
	private String eMail;
	@Pattern(regexp="^1[3|4|5|7|8][0-9]{9}$",message="手机号不符合规则")
	private String phone;
	
	private Role role;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", eMail=" + eMail + ", phone=" + phone + "]";
	}
	public User(Long id, String username, String password, String eMail, String phone) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.eMail = eMail;
		this.phone = phone;
	}
	public User() {
	}
	public User(Long id) {
		this.id = id;
	}
	
	
}
