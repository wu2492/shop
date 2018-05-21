package com.shop.entiy;

import java.util.Date;
import java.util.List;

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
pro_id number(16) references pro(id),
addres_id number(16) references shop_addres(id)
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
	private List<Pro> pros;
	private Addres addres;
	
	public Order() {
	}

	public Order(Long id, String orderNumber, Date orderTime, Integer paymentMode, Integer paymentStatus,
			Integer orderStatus, String merchant, User user, List<Pro> pros, Addres addres) {
		super();
		this.id = id;
		this.orderNumber = orderNumber;
		this.orderTime = orderTime;
		this.paymentMode = paymentMode;
		this.paymentStatus = paymentStatus;
		this.orderStatus = orderStatus;
		this.merchant = merchant;
		this.user = user;
		this.pros = pros;
		this.addres = addres;
	}

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

	public Date getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
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

	public Integer getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(Integer orderStatus) {
		this.orderStatus = orderStatus;
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

	public List<Pro> getPro() {
		return pros;
	}

	public void setPro(List<Pro> pros) {
		this.pros = pros;
	}

	public Addres getAddres() {
		return addres;
	}

	public void setAddres(Addres addres) {
		this.addres = addres;
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", orderNumber=" + orderNumber + ", orderTime=" + orderTime + ", paymentMode="
				+ paymentMode + ", paymentStatus=" + paymentStatus + ", orderStatus=" + orderStatus + ", merchant="
				+ merchant + ", user=" + user + ", pros=" + pros + ", addres=" + addres + "]";
	}
}
