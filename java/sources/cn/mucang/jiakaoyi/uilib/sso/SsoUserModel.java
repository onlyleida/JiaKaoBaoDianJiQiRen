package cn.mucang.jiakaoyi.uilib.sso;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;", "Ljava/io/Serializable;", "()V", "status", "", "getStatus", "()I", "setStatus", "(I)V", "userToken", "", "getUserToken", "()Ljava/lang/String;", "setUserToken", "(Ljava/lang/String;)V", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SsoUserModel implements Serializable {
    private int status;
    private String userToken;

    public final int getStatus() {
        return this.status;
    }

    public final String getUserToken() {
        return this.userToken;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setUserToken(String str) {
        this.userToken = str;
    }
}
