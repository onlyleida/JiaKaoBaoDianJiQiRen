package cn.mucang.jiakaoyi.uilib.login.model;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0012"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/model/MatchResultModel;", "Ljava/io/Serializable;", "()V", "maxScore", "", "getMaxScore", "()Ljava/lang/String;", "setMaxScore", "(Ljava/lang/String;)V", "success", "", "getSuccess", "()Z", "setSuccess", "(Z)V", "token", "getToken", "setToken", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MatchResultModel implements Serializable {
    private String maxScore;
    private boolean success;
    private String token;

    public final String getMaxScore() {
        return this.maxScore;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public final String getToken() {
        return this.token;
    }

    public final void setMaxScore(String str) {
        this.maxScore = str;
    }

    public final void setSuccess(boolean z) {
        this.success = z;
    }

    public final void setToken(String str) {
        this.token = str;
    }
}
