package cn.mucang.android.account.data;

import cn.mucang.android.account.api.data.Gender;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class MCUserInfo implements Serializable {
    private String accessToken;
    private String appId;
    private String avatar;
    private Gender gender;
    private String nickname;
    private String openId;
    private String session;
    private String unionId;

    public String getAccessToken() {
        return this.accessToken;
    }

    public String getAppId() {
        return this.appId;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public Gender getGender() {
        return this.gender;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getOpenId() {
        return this.openId;
    }

    public String getSession() {
        return this.session;
    }

    public String getUnionId() {
        return this.unionId;
    }

    public MCUserInfo setAccessToken(String str) {
        this.accessToken = str;
        return this;
    }

    public void setAppId(String str) {
        this.appId = str;
    }

    public MCUserInfo setAvatar(String str) {
        this.avatar = str;
        return this;
    }

    public MCUserInfo setGender(Gender gender) {
        this.gender = gender;
        return this;
    }

    public MCUserInfo setNickname(String str) {
        this.nickname = str;
        return this;
    }

    public MCUserInfo setOpenId(String str) {
        this.openId = str;
        return this;
    }

    public void setSession(String str) {
        this.session = str;
    }

    public MCUserInfo setUnionId(String str) {
        this.unionId = str;
        return this;
    }
}
