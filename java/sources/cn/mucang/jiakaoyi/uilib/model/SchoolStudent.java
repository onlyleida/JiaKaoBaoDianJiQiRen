package cn.mucang.jiakaoyi.uilib.model;

import cn.mucang.android.account.data.AuthUser;
import cn.mucang.jiakaoyi.uilib.ui.billing.StudentModel;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class SchoolStudent implements Serializable {
    public static final int TYPE_IMPLEMENTER = 2;
    public String authToken;
    public AuthUser authUser;
    public String avatar;
    public float coin;
    public boolean expired;
    public long expiredTime;
    public String mucangId;
    public String name;
    public float oweAmount;
    public int remainMinutes;
    public String studentId;
    public int type;
    public String xyToken;

    public String getAuthToken() {
        return this.authToken;
    }

    public AuthUser getAuthUser() {
        return this.authUser;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public float getCoin() {
        return this.coin;
    }

    public long getExpiredTime() {
        return this.expiredTime;
    }

    public String getMucangId() {
        return this.mucangId;
    }

    public String getName() {
        return this.name;
    }

    public float getOweAmount() {
        return this.oweAmount;
    }

    public int getRemainMinutes() {
        return this.remainMinutes;
    }

    public String getStudentId() {
        return this.studentId;
    }

    public int getType() {
        return this.type;
    }

    public String getXyToken() {
        return this.xyToken;
    }

    public StudentModel map() {
        StudentModel studentModel = new StudentModel();
        studentModel.userId = this.mucangId;
        String str = this.name;
        studentModel.userName = str;
        studentModel.id = this.studentId;
        studentModel.studentAuthToken = this.authToken;
        studentModel.avatar = this.avatar;
        studentModel.userName = str;
        studentModel.coin = this.coin;
        studentModel.oweAmount = this.oweAmount;
        studentModel.remainMinutes = this.remainMinutes;
        return studentModel;
    }

    public void setAuthToken(String str) {
        this.authToken = str;
    }

    public void setAuthUser(AuthUser authUser) {
        this.authUser = authUser;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setCoin(float f2) {
        this.coin = f2;
    }

    public void setExpiredTime(long j) {
        this.expiredTime = j;
    }

    public void setMucangId(String str) {
        this.mucangId = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOweAmount(float f2) {
        this.oweAmount = f2;
    }

    public void setRemainMinutes(int i) {
        this.remainMinutes = i;
    }

    public void setStudentId(String str) {
        this.studentId = str;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setXyToken(String str) {
        this.xyToken = str;
    }
}
