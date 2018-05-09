package com.shop.entiy;

import org.springframework.web.multipart.MultipartFile;

public class Pro {
	/*
	 * create table pro(
id number(16) primary key,
name varchar(64),
print_url varchar(64),
price number(16,2),
describe varchar(256),
sort_id number(16) references pro_sort(id)
);
	 */

	private Long id;
	private String name;
	private String printUrl;
	private Long price;
	private String describe;
	
	private MultipartFile print;
	private Sort sort;

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

	public MultipartFile getPrint() {
		return print;
	}

	public void setPrint(MultipartFile print) {
		this.print = print;
	}

	public String getPrintUrl() {
		return printUrl;
	}

	public void setPrintUrl(String printUrl) {
		this.printUrl = printUrl;
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public Sort getSort() {
		return sort;
	}

	public void setSort(Sort sort) {
		this.sort = sort;
	}

	public Pro(Long id, String name, MultipartFile print, String printUrl, Long price, String describe, Sort sort) {
		this.id = id;
		this.name = name;
		this.print = print;
		this.printUrl = printUrl;
		this.price = price;
		this.describe = describe;
		this.sort = sort;
	}

	public Pro() {
	}

	@Override
	public String toString() {
		return "Pro [id=" + id + ", name=" + name + ", print=" + print + ", printUrl=" + printUrl + ", price=" + price
				+ ", describe=" + describe + ", sort=" + sort + "]";
	}
	
}
