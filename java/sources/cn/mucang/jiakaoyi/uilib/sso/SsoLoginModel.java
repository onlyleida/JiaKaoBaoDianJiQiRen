package cn.mucang.jiakaoyi.uilib.sso;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;", "Ljava/io/Serializable;", "()V", "checkInterval", "", "getCheckInterval", "()I", "setCheckInterval", "(I)V", "token", "", "getToken", "()Ljava/lang/String;", "setToken", "(Ljava/lang/String;)V", "url", "getUrl", "setUrl", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SsoLoginModel implements Serializable {
    private int checkInterval;
    private String token;
    private String url;

    public final int getCheckInterval() {
        return this.checkInterval;
    }

    public final String getToken() {
        return this.token;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setCheckInterval(int i) {
        this.checkInterval = i;
    }

    public final void setToken(String str) {
        this.token = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }
}
