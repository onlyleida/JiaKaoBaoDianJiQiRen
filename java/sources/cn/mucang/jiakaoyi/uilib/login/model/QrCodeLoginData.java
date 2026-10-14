package cn.mucang.jiakaoyi.uilib.login.model;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u0005¢\u0006\u0002\u0010\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/model/QrCodeLoginData;", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;", "authToken", "", "(Ljava/lang/String;)V", "()V", "getAuthToken", "()Ljava/lang/String;", "setAuthToken", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class QrCodeLoginData extends LoginData {
    private String authToken;

    public QrCodeLoginData() {
    }

    public final String getAuthToken() {
        return this.authToken;
    }

    public final void setAuthToken(String str) {
        this.authToken = str;
    }

    public QrCodeLoginData(String str) {
        this();
        this.authToken = str;
    }
}
