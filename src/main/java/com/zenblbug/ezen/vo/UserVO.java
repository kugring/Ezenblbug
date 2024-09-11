package com.zenblbug.ezen.vo;

public class UserVO {
	private int projectId;
	private String userId;
	private String password;
	private String email;
	private String nickname;
	private String profileImage;
	private String selfIntro;
	private String address;
	private String addressDetail;
	private String phoneNumber;
	private int agreeCheck;
	private String role;
	private String account;
	private String activityArea;
	private String activitySubArea;



	public String getProfileImage() {
		return profileImage;
	}
	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}
	public String getSelfIntro() {
		return selfIntro;
	}
	public void setSelfIntro(String selfIntro) {
		this.selfIntro = selfIntro;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	public int getAgreeCheck() {
		return agreeCheck;
	}

	public void setAgreeCheck(int agreeCheck) {
		this.agreeCheck = agreeCheck;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getProjectId() {
		return projectId;
	}

	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getActivityArea() {
		return activityArea;
	}

	public void setActivityArea(String activityArea) {
		this.activityArea = activityArea;
	}

	public String getActivitySubArea() {
		return activitySubArea;
	}

	public void setActivitySubArea(String activitySubArea) {
		this.activitySubArea = activitySubArea;
	}
}
