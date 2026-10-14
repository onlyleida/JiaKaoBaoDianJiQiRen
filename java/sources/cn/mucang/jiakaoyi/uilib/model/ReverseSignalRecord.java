package cn.mucang.jiakaoyi.uilib.model;

import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/model/ReverseSignalRecord;", "Ljava/io/Serializable;", "()V", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "signalId", "", "getSignalId", "()I", "setSignalId", "(I)V", "status", "", "getStatus", "()Z", "setStatus", "(Z)V", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ReverseSignalRecord implements Serializable {
    private String name = "";
    private int signalId = -1;
    private boolean status;

    public final String getName() {
        return this.name;
    }

    public final int getSignalId() {
        return this.signalId;
    }

    public final boolean getStatus() {
        return this.status;
    }

    public final void setName(String str) {
        r.e(str, "<set-?>");
        this.name = str;
    }

    public final void setSignalId(int i) {
        this.signalId = i;
    }

    public final void setStatus(boolean z) {
        this.status = z;
    }
}
