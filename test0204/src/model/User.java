package model;

import java.io.Serializable;

public class User implements Serializable {
//	招待者用の情報を持つ
	public String name;
	public String pass;
	
	public User() {}
	public User(String name,String pass) {
		this.name = name;
		this.pass = pass;
	}
	
	public String getName() {return name;}
	public String getPass() {return pass;}
}
