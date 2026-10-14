package cn.mucang.android.account.api.data;

import cn.mucang.android.account.data.WeChatUserEntity;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class UpdateUserInfo implements Serializable {
    private String avatar;
    private String birthday;
    private String cityCode;
    private String cityName;
    private String description;
    private Gender gender;
    private String nickname;
    private WeChatUserEntity weChatUserEntity;

    public String getAvatar() {
        return this.avatar;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public String getCityCode() {
        return this.cityCode;
    }

    public String getCityName() {
        return this.cityName;
    }

    public String getDescription() {
        return this.description;
    }

    public Gender getGender() {
        return this.gender;
    }

    public String getNickname() {
        return this.nickname;
    }

    public WeChatUserEntity getWeChatUserEntity() {
        return this.weChatUserEntity;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBirthday(String str) {
        this.birthday = str;
    }

    public void setCityCode(String str) {
        this.cityCode = str;
    }

    public void setCityName(String str) {
        this.cityName = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setWeChatUserEntity(WeChatUserEntity weChatUserEntity) {
        this.weChatUserEntity = weChatUserEntity;
    }
}
