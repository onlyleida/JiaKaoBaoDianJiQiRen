package cn.mucang.android.jiakaoyi.teachingk2.acceptance;

import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;", "Ljava/io/Serializable;", "()V", "lastSubmitTime", "", "getLastSubmitTime", "()J", "setLastSubmitTime", "(J)V", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "status", "", "getStatus", "()I", "setStatus", "(I)V", "type", "getType", "setType", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AcceptanceModel implements Serializable {
    private long lastSubmitTime;
    private String name;
    private int status;
    private int type;

    public final long getLastSubmitTime() {
        return this.lastSubmitTime;
    }

    public final String getName() {
        return this.name;
    }

    public final int getStatus() {
        return this.status;
    }

    public final int getType() {
        return this.type;
    }

    public final void setLastSubmitTime(long j) {
        this.lastSubmitTime = j;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
