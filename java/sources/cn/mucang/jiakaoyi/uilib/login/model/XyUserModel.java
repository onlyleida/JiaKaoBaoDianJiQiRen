package cn.mucang.jiakaoyi.uilib.login.model;

import cn.mucang.android.account.data.AuthUser;
import cn.mucang.sundial.library.entity.ExtraKey;
import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b)\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010H\u001a\u00020IJ\u0006\u0010J\u001a\u00020IR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001a\u0010\u001b\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0015\"\u0004\b\u001d\u0010\u0017R\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\u001c\u0010'\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\u001c\u0010*\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR\u001c\u0010-\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\bR\u001a\u00100\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0015\"\u0004\b2\u0010\u0017R\u001c\u00103\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0006\"\u0004\b5\u0010\bR\u001c\u00106\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u0006\"\u0004\b8\u0010\bR\u001c\u00109\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u0006\"\u0004\b;\u0010\bR\u001c\u0010<\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u0006\"\u0004\b>\u0010\bR\u001a\u0010?\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010\u0015\"\u0004\bA\u0010\u0017R\u001a\u0010B\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010\u0015\"\u0004\bD\u0010\u0017R\u001c\u0010E\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010\u0006\"\u0004\bG\u0010\b¨\u0006K"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "Ljava/io/Serializable;", "()V", "authToken", "", "getAuthToken", "()Ljava/lang/String;", "setAuthToken", "(Ljava/lang/String;)V", "authUser", "Lcn/mucang/android/account/data/AuthUser;", "getAuthUser", "()Lcn/mucang/android/account/data/AuthUser;", "setAuthUser", "(Lcn/mucang/android/account/data/AuthUser;)V", ExtraKey.avatar, "getAvatar", "setAvatar", "courseId", "", "getCourseId", "()J", "setCourseId", "(J)V", "driveLicenseType", "getDriveLicenseType", "setDriveLicenseType", "expiredTime", "getExpiredTime", "setExpiredTime", "gender", "", "getGender", "()I", "setGender", "(I)V", "idCardEncrypted", "getIdCardEncrypted", "setIdCardEncrypted", "idCardIdentifier", "getIdCardIdentifier", "setIdCardIdentifier", "idCardMask", "getIdCardMask", "setIdCardMask", "idCardType", "getIdCardType", "setIdCardType", "loginId", "getLoginId", "setLoginId", "loginMode", "getLoginMode", "setLoginMode", "mucangId", "getMucangId", "setMucangId", Constant.PROTOCOL_WEBVIEW_NAME, "getName", "setName", "phoneEncrypted", "getPhoneEncrypted", "setPhoneEncrypted", "studentId", "getStudentId", "setStudentId", "tenantId", "getTenantId", "setTenantId", "xyToken", "getXyToken", "setXyToken", "isCoach", "", "isDebugUser", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class XyUserModel implements Serializable {
    private String authToken;
    private AuthUser authUser;
    private String avatar;
    private long courseId;
    private String driveLicenseType;
    private long expiredTime;
    private int gender;
    private String idCardEncrypted;
    private String idCardIdentifier;
    private String idCardMask;
    private String idCardType;
    private long loginId;
    private String loginMode;
    private String mucangId;
    private String name;
    private String phoneEncrypted;
    private long studentId;
    private long tenantId;
    private String xyToken;

    public final String getAuthToken() {
        return this.authToken;
    }

    public final AuthUser getAuthUser() {
        return this.authUser;
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final long getCourseId() {
        return this.courseId;
    }

    public final String getDriveLicenseType() {
        return this.driveLicenseType;
    }

    public final long getExpiredTime() {
        return this.expiredTime;
    }

    public final int getGender() {
        return this.gender;
    }

    public final String getIdCardEncrypted() {
        return this.idCardEncrypted;
    }

    public final String getIdCardIdentifier() {
        return this.idCardIdentifier;
    }

    public final String getIdCardMask() {
        return this.idCardMask;
    }

    public final String getIdCardType() {
        return this.idCardType;
    }

    public final long getLoginId() {
        return this.loginId;
    }

    public final String getLoginMode() {
        return this.loginMode;
    }

    public final String getMucangId() {
        return this.mucangId;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPhoneEncrypted() {
        return this.phoneEncrypted;
    }

    public final long getStudentId() {
        return this.studentId;
    }

    public final long getTenantId() {
        return this.tenantId;
    }

    public final String getXyToken() {
        return this.xyToken;
    }

    public final boolean isCoach() {
        return r.a(this.loginMode, "COACH");
    }

    public final boolean isDebugUser() {
        return this.studentId < 0;
    }

    public final void setAuthToken(String str) {
        this.authToken = str;
    }

    public final void setAuthUser(AuthUser authUser) {
        this.authUser = authUser;
    }

    public final void setAvatar(String str) {
        this.avatar = str;
    }

    public final void setCourseId(long j) {
        this.courseId = j;
    }

    public final void setDriveLicenseType(String str) {
        this.driveLicenseType = str;
    }

    public final void setExpiredTime(long j) {
        this.expiredTime = j;
    }

    public final void setGender(int i) {
        this.gender = i;
    }

    public final void setIdCardEncrypted(String str) {
        this.idCardEncrypted = str;
    }

    public final void setIdCardIdentifier(String str) {
        this.idCardIdentifier = str;
    }

    public final void setIdCardMask(String str) {
        this.idCardMask = str;
    }

    public final void setIdCardType(String str) {
        this.idCardType = str;
    }

    public final void setLoginId(long j) {
        this.loginId = j;
    }

    public final void setLoginMode(String str) {
        this.loginMode = str;
    }

    public final void setMucangId(String str) {
        this.mucangId = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setPhoneEncrypted(String str) {
        this.phoneEncrypted = str;
    }

    public final void setStudentId(long j) {
        this.studentId = j;
    }

    public final void setTenantId(long j) {
        this.tenantId = j;
    }

    public final void setXyToken(String str) {
        this.xyToken = str;
    }
}
