package cn.mucang.android.facelib.model;

import cn.mucang.jiakaoyi.uilib.login.model.LoginData;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u0005¢\u0006\u0002\u0010\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Lcn/mucang/android/facelib/model/NonPerceiveLoginData;", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;", "token", "", "(Ljava/lang/String;)V", "()V", "getToken", "()Ljava/lang/String;", "setToken", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NonPerceiveLoginData extends LoginData {
    private String token;

    public NonPerceiveLoginData() {
    }

    public final String getToken() {
        return this.token;
    }

    public final void setToken(String str) {
        this.token = str;
    }

    public NonPerceiveLoginData(String str) {
        this();
        this.token = str;
    }
}
