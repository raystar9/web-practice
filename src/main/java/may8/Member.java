package may8;

public class Member {
	private String _id;
	private String _pass;
	private String _name;
	private int _age;
	private String _gender;
	private String _email;

	public String getId() {
		return _id;
	}

	public String getPass() {
		return _pass;
	}

	public String getName() {
		return _name;
	}

	public int getAge() {
		return _age;
	}

	public String getGender() {
		return _gender;
	}

	public String getEmail() {
		return _email;
	}

	public void setId(String id) {
		_id = id;
	}

	public void setPass(String pass) {
		_pass = pass;
	}

	public void setName(String name) {
		_name = name;
	}

	public void setAge(int age) {
		_age = age;
	}

	public void setGender(String gender) {
		_gender = gender;
	}

	public void setEmail(String email) {
		_email = email;
	}

	public Member() {}
	
}
