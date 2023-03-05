package model;

import java.util.List;

import dao.RegisterDAO;

public class GetRegisterListLogic {	
	//参列者のリストを返す
	public List<Register> execute() throws ClassNotFoundException{
		RegisterDAO dao = new RegisterDAO();
		List<Register> registerList = dao.findAll();
		return registerList;
	}
}
