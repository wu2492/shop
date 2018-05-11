package com.shop.entiy;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Order {
	/*create table shop_order(
id number(16) primary key,
order_number varchar(64),--订单编号
order_time date, --订单时间
payment_mode int,--支付方式
payment_status int,--支付状态
order_status int,--货物状态
merchant varchar(64),--商家
user_id number(16) references shop_user(id),
pro_id number(16) references pro(id)
);*/
	
	private Long id;
	private String orderNumber;
	@DateTimeFormat(pattern="yyy/MM/dd HH:mm:ss")
	private Date orderTime;
	private Integer paymentMode;
	private Integer paymentStatus;
	private Integer orderStatus;
	private String merchant;
	
	private User user;
	private Pro pro;
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public Integer getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(Integer paymentMode) {
		this.paymentMode = paymentMode;
	}

	public Integer getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(Integer paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public String getMerchant() {
		return merchant;
	}

	public void setMerchant(String merchant) {
		this.merchant = merchant;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Date getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}

	public Order(Long id, String orderNumber, Date orderTime, Integer paymentMode, Integer paymentStatus,
			Integer orderStatus, String merchant, User user, Pro pro) {
		this.id = id;
		this.orderNumber = orderNumber;
		this.orderTime = orderTime;
		this.paymentMode = paymentMode;
		this.paymentStatus = paymentStatus;
		this.orderStatus = orderStatus;
		this.merchant = merchant;
		this.user = user;
		this.pro = pro;
	}

	public Order() {
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", orderNumber=" + orderNumber + ", orderTime=" + orderTime + ", paymentMode="
				+ paymentMode + ", paymentStatus=" + paymentStatus + ", orderStatus=" + orderStatus + ", merchant="
				+ merchant + ", user=" + user + ", pro=" + pro + "]";
	}



}
