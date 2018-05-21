package com.shop.entiy;

public class Addres {
/*create table shop_addres(
id number(16) primary key,
consignee varchar(32),--收货人
consignee_phone varchar(11),--手机号码
region varchar(64),--地区
detailed_addres varchar(64),--详细地址
postcode varchar(16),--邮编
user_id number(16) references shop_user(id)
);*/
	private Long id;
	private String consignee;
	private String consigneePhone;
	private String region;
	private String detailedAddres;
	private String postcode;
	
	private User user;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getConsignee() {
		return consignee;
	}

	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}

	public String getConsigneePhone() {
		return consigneePhone;
	}

	public void setConsigneePhone(String consigneePhone) {
		this.consigneePhone = consigneePhone;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getDetailedAddres() {
		return detailedAddres;
	}

	public void setDetailedAddres(String detailedAddres) {
		this.detailedAddres = detailedAddres;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Addres(Long id, String consignee, String consigneePhone, String region, String detailedAddres,
			String postcode, User user) {
		this.id = id;
		this.consignee = consignee;
		this.consigneePhone = consigneePhone;
		this.region = region;
		this.detailedAddres = detailedAddres;
		this.postcode = postcode;
		this.user = user;
	}

	public Addres() {
	}

	@Override
	public String toString() {
		return "Addres [id=" + id + ", consignee=" + consignee + ", consigneePhone=" + consigneePhone + ", region="
				+ region + ", detailedAddres=" + detailedAddres + ", postcode=" + postcode + ", user=" + user + "]";
	}


	
	
}
