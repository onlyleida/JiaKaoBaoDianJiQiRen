package cn.mucang.android.account.api.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ThirdLoginRequest implements Serializable {
    private String appId;
    private String avatar;
    private String birthday;
    private String description;
    private String from;
    private String gender;
    private String homePage;
    private String nickname;
    private String openId;
    private String thirdParty;
    private String unionId;

    public String getAppId() {
        return this.appId;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public String getDescription() {
        return this.description;
    }

    public String getFrom() {
        return this.from;
    }

    public String getGender() {
        return this.gender;
    }

    public String getHomePage() {
        return this.homePage;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getOpenId() {
        return this.openId;
    }

    public String getThirdParty() {
        return this.thirdParty;
    }

    public String getUnionId() {
        return this.unionId;
    }

    public void setAppId(String str) {
        this.appId = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBirthday(String str) {
        this.birthday = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setFrom(String str) {
        this.from = str;
    }

    public void setGender(String str) {
        this.gender = str;
    }

    public void setHomePage(String str) {
        this.homePage = str;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setOpenId(String str) {
        this.openId = str;
    }

    public void setThirdParty(String str) {
        this.thirdParty = str;
    }

    public void setUnionId(String str) {
        this.unionId = str;
    }
}
