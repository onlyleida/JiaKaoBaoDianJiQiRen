package cn.mucang.android.account.data;

import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.account.api.data.Gender;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AuthUser implements Serializable {
    private String authToken;
    private String avatar;
    private String birthday;
    private boolean certified;
    private CheckType checkType;
    private String cityCode;
    private String cityName;
    private long createTime;
    private String description;
    private long expiredTime;
    private Gender gender;
    private String homePage;
    private String largeAvatar;
    private String mucangId;
    private boolean needBindThird;
    private boolean newAccount;
    private String nickname;
    private boolean passwordSet;
    private String phone;
    private String smsToken;
    private long validDuration;
    private WeChatUserEntity weChatUserEntity;

    public String getAuthToken() {
        return this.authToken;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public CheckType getCheckType() {
        return this.checkType;
    }

    public String getCityCode() {
        return this.cityCode;
    }

    public String getCityName() {
        return this.cityName;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public String getDescription() {
        return this.description;
    }

    public long getExpiredTime() {
        return this.expiredTime;
    }

    public Gender getGender() {
        return this.gender;
    }

    public String getHomePage() {
        return this.homePage;
    }

    public String getLargeAvatar() {
        return this.largeAvatar;
    }

    public String getMucangId() {
        return this.mucangId;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getSmsToken() {
        return this.smsToken;
    }

    public long getValidDuration() {
        return this.validDuration;
    }

    public WeChatUserEntity getWeChatUserEntity() {
        return this.weChatUserEntity;
    }

    public boolean isCertified() {
        return this.certified;
    }

    public boolean isNeedBindThird() {
        return this.needBindThird;
    }

    public boolean isNewAccount() {
        return this.newAccount;
    }

    public boolean isPasswordSet() {
        return this.passwordSet;
    }

    public void setAuthToken(String str) {
        this.authToken = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBirthday(String str) {
        this.birthday = str;
    }

    public void setCertified(boolean z) {
        this.certified = z;
    }

    public void setCheckType(CheckType checkType) {
        this.checkType = checkType;
    }

    public void setCityCode(String str) {
        this.cityCode = str;
    }

    public void setCityName(String str) {
        this.cityName = str;
    }

    public void setCreateTime(long j) {
        this.createTime = j;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setExpiredTime(long j) {
        this.expiredTime = j;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public void setHomePage(String str) {
        this.homePage = str;
    }

    public void setLargeAvatar(String str) {
        this.largeAvatar = str;
    }

    public void setMucangId(String str) {
        this.mucangId = str;
    }

    public AuthUser setNeedBindThird(boolean z) {
        this.needBindThird = z;
        return this;
    }

    public void setNewAccount(boolean z) {
        this.newAccount = z;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setPasswordSet(boolean z) {
        this.passwordSet = z;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setSmsToken(String str) {
        this.smsToken = str;
    }

    public void setValidDuration(long j) {
        this.validDuration = j;
    }

    public void setWeChatUserEntity(WeChatUserEntity weChatUserEntity) {
        this.weChatUserEntity = weChatUserEntity;
    }
}
