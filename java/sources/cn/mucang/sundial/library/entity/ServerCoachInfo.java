package cn.mucang.sundial.library.entity;

import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0007\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR\"\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0007\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000bR\"\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0007\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR\"\u0010\u0015\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0007\u001a\u0004\b\u0016\u0010\t\"\u0004\b\u0017\u0010\u000bR\"\u0010\u0018\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0007\u001a\u0004\b\u0019\u0010\t\"\u0004\b\u001a\u0010\u000bR\"\u0010\u001b\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0007\u001a\u0004\b\u001c\u0010\t\"\u0004\b\u001d\u0010\u000b¨\u0006 "}, d2 = {"Lcn/mucang/sundial/library/entity/ServerCoachInfo;", "Ljava/io/Serializable;", "", "infoValid", "()Z", "", "driveType", "Ljava/lang/String;", "getDriveType", "()Ljava/lang/String;", "setDriveType", "(Ljava/lang/String;)V", "schoolName", "getSchoolName", "setSchoolName", "globalCode", "getGlobalCode", "setGlobalCode", Constant.PROTOCOL_WEBVIEW_NAME, "getName", "setName", ExtraKey.avatar, "getAvatar", "setAvatar", "certificateCode", "getCertificateCode", "setCertificateCode", "teachLicenceType", "getTeachLicenceType", "setTeachLicenceType", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ServerCoachInfo implements Serializable {
    private String globalCode = "";
    private String avatar = "";
    private String name = "";
    private String teachLicenceType = "";
    private String driveType = "";
    private String schoolName = "";
    private String certificateCode = "";

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getCertificateCode() {
        return this.certificateCode;
    }

    public final String getDriveType() {
        return this.driveType;
    }

    public final String getGlobalCode() {
        return this.globalCode;
    }

    public final String getName() {
        return this.name;
    }

    public final String getSchoolName() {
        return this.schoolName;
    }

    public final String getTeachLicenceType() {
        return this.teachLicenceType;
    }

    public final boolean infoValid() {
        return (t.r(this.globalCode) ^ true) && (t.r(this.certificateCode) ^ true);
    }

    public final void setAvatar(String str) {
        r.e(str, "<set-?>");
        this.avatar = str;
    }

    public final void setCertificateCode(String str) {
        r.e(str, "<set-?>");
        this.certificateCode = str;
    }

    public final void setDriveType(String str) {
        r.e(str, "<set-?>");
        this.driveType = str;
    }

    public final void setGlobalCode(String str) {
        r.e(str, "<set-?>");
        this.globalCode = str;
    }

    public final void setName(String str) {
        r.e(str, "<set-?>");
        this.name = str;
    }

    public final void setSchoolName(String str) {
        r.e(str, "<set-?>");
        this.schoolName = str;
    }

    public final void setTeachLicenceType(String str) {
        r.e(str, "<set-?>");
        this.teachLicenceType = str;
    }
}
