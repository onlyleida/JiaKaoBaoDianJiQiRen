package cn.mucang.sundial.library.entity;

import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0016\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0015\u0010\u0016R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0018"}, d2 = {"Lcn/mucang/sundial/library/entity/ServerCardInfo;", "Ljava/io/Serializable;", "", ExtraKey.avatar, "Ljava/lang/String;", "getAvatar", "()Ljava/lang/String;", "setAvatar", "(Ljava/lang/String;)V", "type", "getType", "setType", Constant.PROTOCOL_WEBVIEW_NAME, "getName", "setName", "globalCode", "getGlobalCode", "setGlobalCode", "certificateCode", "getCertificateCode", "setCertificateCode", "<init>", "()V", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ServerCardInfo implements Serializable {
    public static final String TYPE_COACH = "Coach";
    public static final String TYPE_STUDENT = "Student";
    private String globalCode = "";
    private String avatar = "";
    private String name = "";
    private String certificateCode = "";
    private String type = "";

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getCertificateCode() {
        return this.certificateCode;
    }

    public final String getGlobalCode() {
        return this.globalCode;
    }

    public final String getName() {
        return this.name;
    }

    public final String getType() {
        return this.type;
    }

    public final void setAvatar(String str) {
        r.e(str, "<set-?>");
        this.avatar = str;
    }

    public final void setCertificateCode(String str) {
        r.e(str, "<set-?>");
        this.certificateCode = str;
    }

    public final void setGlobalCode(String str) {
        r.e(str, "<set-?>");
        this.globalCode = str;
    }

    public final void setName(String str) {
        r.e(str, "<set-?>");
        this.name = str;
    }

    public final void setType(String str) {
        r.e(str, "<set-?>");
        this.type = str;
    }
}
