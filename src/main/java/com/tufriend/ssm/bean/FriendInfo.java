package com.tufriend.ssm.bean;

public class FriendInfo {
    private Integer fId;

    private String fName;

    private String fPhone;

    private String fAddress;

    public FriendInfo() {
    }

    public FriendInfo(String fName, String fPhone, String fAddress) {
        this.fName = fName;
        this.fPhone = fPhone;
        this.fAddress = fAddress;
    }

    public FriendInfo(Integer fId, String fName, String fPhone, String fAddress) {
        this.fId = fId;
        this.fName = fName;
        this.fPhone = fPhone;
        this.fAddress = fAddress;
    }

    public Integer getfId() {
        return fId;
    }

    public void setfId(Integer fId) {
        this.fId = fId;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName == null ? null : fName.trim();
    }

    public String getfPhone() {
        return fPhone;
    }

    public void setfPhone(String fPhone) {
        this.fPhone = fPhone == null ? null : fPhone.trim();
    }

    public String getfAddress() {
        return fAddress;
    }

    public void setfAddress(String fAddress) {
        this.fAddress = fAddress == null ? null : fAddress.trim();
    }
}