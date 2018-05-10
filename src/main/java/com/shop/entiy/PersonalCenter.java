package com.shop.entiy;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

public class PersonalCenter {
	/*create table personal_center(
id number(16) primary key,
name varchar(32) not null,
portrait_url varchar(64),
city varchar(64) not null,
sex int check (sex in (0,1)),
identity_card varchar(18),
type varchar(32),
ndividual_resume varchar(256),
user_id number(16) references shop_user(id)
);
*/
	
	private Long id;
	@Size(min=1,max=8,message="名字在1到18")
	private String name;
	private String portraitUrl;
	@NotNull(message="必选")
	private String city;
	private Integer sex;
	private String identityCard;
	private String type;
	private String ndividualResume;
	
	private MultipartFile portrait;
	private User user;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getIdentityCard() {
		return identityCard;
	}

	public void setIdentityCard(String identityCard) {
		this.identityCard = identityCard;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getNdividualResume() {
		return ndividualResume;
	}

	public void setNdividualResume(String ndividualResume) {
		this.ndividualResume = ndividualResume;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getPortraitUrl() {
		return portraitUrl;
	}

	public void setPortraitUrl(String portraitUrl) {
		this.portraitUrl = portraitUrl;
	}
	
	public MultipartFile getPortrait() {
		return portrait;
	}

	public void setPortrait(MultipartFile portrait) {
		this.portrait = portrait;
	}

	public PersonalCenter(Long id, String name, String portraitUrl, String city, Integer sex, String identityCard,
			String type, String ndividualResume, User user) {
		this.id = id;
		this.name = name;
		this.portraitUrl = portraitUrl;
		this.city = city;
		this.sex = sex;
		this.identityCard = identityCard;
		this.type = type;
		this.ndividualResume = ndividualResume;
		this.user = user;
	}

	public PersonalCenter() {
	}

	@Override
	public String toString() {
		return "PersonalCenter [id=" + id + ", name=" + name + ", portraitUrl=" + portraitUrl + ", city=" + city
				+ ", sex=" + sex + ", identityCard=" + identityCard + ", type=" + type + ", ndividualResume="
				+ ndividualResume + ", user=" + user + "]";
	}



}
