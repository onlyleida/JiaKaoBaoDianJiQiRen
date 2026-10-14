package cn.mucang.sundial.library.entity;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u0011"}, d2 = {"Lcn/mucang/sundial/library/entity/ActivityBaseInfo;", "", "", "imei", "Ljava/lang/String;", "getImei", "()Ljava/lang/String;", "setImei", "(Ljava/lang/String;)V", "appVersion", "getAppVersion", "setAppVersion", "carNo", "getCarNo", "setCarNo", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ActivityBaseInfo {
    private String imei = "";
    private String carNo = "";
    private String appVersion = "";

    public final String getAppVersion() {
        return this.appVersion;
    }

    public final String getCarNo() {
        return this.carNo;
    }

    public final String getImei() {
        return this.imei;
    }

    public final void setAppVersion(String str) {
        r.e(str, "<set-?>");
        this.appVersion = str;
    }

    public final void setCarNo(String str) {
        r.e(str, "<set-?>");
        this.carNo = str;
    }

    public final void setImei(String str) {
        r.e(str, "<set-?>");
        this.imei = str;
    }
}
