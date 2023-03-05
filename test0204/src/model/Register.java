package model;

import java.io.Serializable;

public class Register implements Serializable{
//	参列者用の情報を持つ
	private int id;
	private String name;
	private String kanaName;
	private String address;
	private String tel;
	private String message;
	
	public Register() {}
	
	public Register(String name,String kanaName,String address,String tel,String message) {
		this.name = name;
		this.kanaName = kanaName;
		this.address = address;
		this.tel = tel;
		this.message = message;
	}
	
	public Register(int id,String name,String kanaName,String address,String tel,String message) {
		this.id = id;
		this.name = name;
		this.kanaName = kanaName;
		this.address = address;
		this.tel = tel;
		this.message = message;
	}
	
	public int getId() {return id;}
	public String getName() {return name;}
	public String getKanaName() {return kanaName;}
	public String getAddress() {return address;}
	public String getTel() {return tel;}
	public String getMessage() {return message;}
}

