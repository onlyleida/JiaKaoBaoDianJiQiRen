package cn.mucang.sundial.library.entity;

import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u001b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b/\u00100R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0004\u001a\u0004\b\u0011\u0010\u0006\"\u0004\b\u0012\u0010\bR$\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u000b\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0004\u001a\u0004\b\u001e\u0010\u0006\"\u0004\b\u001f\u0010\bR\"\u0010 \u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u0004\u001a\u0004\b!\u0010\u0006\"\u0004\b\"\u0010\bR\"\u0010#\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0004\u001a\u0004\b$\u0010\u0006\"\u0004\b%\u0010\bR$\u0010&\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0004\u001a\u0004\b'\u0010\u0006\"\u0004\b(\u0010\bR$\u0010)\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010\u000b\u001a\u0004\b*\u0010\r\"\u0004\b+\u0010\u000fR$\u0010,\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010\u0004\u001a\u0004\b-\u0010\u0006\"\u0004\b.\u0010\b¨\u00061"}, d2 = {"Lcn/mucang/sundial/library/entity/ServerStudentInfo;", "Ljava/io/Serializable;", "", "confirmMessage", "Ljava/lang/String;", "getConfirmMessage", "()Ljava/lang/String;", "setConfirmMessage", "(Ljava/lang/String;)V", "", "todayVehicleSurplusTime", "Ljava/lang/Integer;", "getTodayVehicleSurplusTime", "()Ljava/lang/Integer;", "setTodayVehicleSurplusTime", "(Ljava/lang/Integer;)V", "certificateCode", "getCertificateCode", "setCertificateCode", "subject3SurplusTime", "getSubject3SurplusTime", "setSubject3SurplusTime", "", "coachTakePhoto", "Z", "getCoachTakePhoto", "()Z", "setCoachTakePhoto", "(Z)V", ExtraKey.avatar, "getAvatar", "setAvatar", Constant.PROTOCOL_WEBVIEW_NAME, "getName", "setName", "globalCode", "getGlobalCode", "setGlobalCode", "driveLicence", "getDriveLicence", "setDriveLicence", "subject2SurplusTime", "getSubject2SurplusTime", "setSubject2SurplusTime", "errorMessage", "getErrorMessage", "setErrorMessage", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ServerStudentInfo implements Serializable {
    private boolean coachTakePhoto;
    private Integer subject2SurplusTime;
    private Integer subject3SurplusTime;
    private Integer todayVehicleSurplusTime;
    private String globalCode = "";
    private String avatar = "";
    private String name = "";
    private String certificateCode = "";
    private String driveLicence = "";
    private String confirmMessage = "";
    private String errorMessage = "";

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getCertificateCode() {
        return this.certificateCode;
    }

    public final boolean getCoachTakePhoto() {
        return this.coachTakePhoto;
    }

    public final String getConfirmMessage() {
        return this.confirmMessage;
    }

    public final String getDriveLicence() {
        return this.driveLicence;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final String getGlobalCode() {
        return this.globalCode;
    }

    public final String getName() {
        return this.name;
    }

    public final Integer getSubject2SurplusTime() {
        return this.subject2SurplusTime;
    }

    public final Integer getSubject3SurplusTime() {
        return this.subject3SurplusTime;
    }

    public final Integer getTodayVehicleSurplusTime() {
        return this.todayVehicleSurplusTime;
    }

    public final void setAvatar(String str) {
        r.e(str, "<set-?>");
        this.avatar = str;
    }

    public final void setCertificateCode(String str) {
        r.e(str, "<set-?>");
        this.certificateCode = str;
    }

    public final void setCoachTakePhoto(boolean z) {
        this.coachTakePhoto = z;
    }

    public final void setConfirmMessage(String str) {
        this.confirmMessage = str;
    }

    public final void setDriveLicence(String str) {
        this.driveLicence = str;
    }

    public final void setErrorMessage(String str) {
        this.errorMessage = str;
    }

    public final void setGlobalCode(String str) {
        r.e(str, "<set-?>");
        this.globalCode = str;
    }

    public final void setName(String str) {
        r.e(str, "<set-?>");
        this.name = str;
    }

    public final void setSubject2SurplusTime(Integer num) {
        this.subject2SurplusTime = num;
    }

    public final void setSubject3SurplusTime(Integer num) {
        this.subject3SurplusTime = num;
    }

    public final void setTodayVehicleSurplusTime(Integer num) {
        this.todayVehicleSurplusTime = num;
    }
}
