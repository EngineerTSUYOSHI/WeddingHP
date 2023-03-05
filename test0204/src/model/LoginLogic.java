package model;

public class LoginLogic {
	//入力されたパスが正しいかの判定
	public boolean execute(User user) {
		if(user.getPass().equals("1234")) {
			return true;
		}
		return false;
	}
}
