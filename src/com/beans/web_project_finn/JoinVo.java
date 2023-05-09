package com.beans.web_project_finn;

public class JoinVo{
	//Field --> Form의name = Vo의 field = DB 테이블의 컬럼은 반드시! 동일한 이름으로!
	String id, pass, name, gender, email1, email2, addr1, addr2, phone, tel,
	phone1, phone2, intro;
	String[] hobby;
	
	//데이터 가공 : email, address, phoneNumber, hobbyList --> getter/setter 필요
	String email, address, phoneNumber, hobbyList;
	
	public String getEmail() {
		return email1+"@"+email2;
	}
	public String getAddress() {
		return addr1 + addr2;
	}
	public String getPhoneNumber() {
		return tel+"-"+phone1+"-"+phone2;
	}
	public String getHobbyList() {
		return String.join(",",hobby);
	}
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String[] getHobby() {
		return hobby;
	}
	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}
	
	
}
	
	