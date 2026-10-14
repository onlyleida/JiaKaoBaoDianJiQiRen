package cn.mucang.android.jiakaoyi.teachingk2.autoteach.model;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\b¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerNavigationPoint;", "Ljava/io/Serializable;", "()V", "from", "", "getFrom", "()I", "setFrom", "(I)V", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "path", "", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "getPath", "()Ljava/util/List;", "setPath", "(Ljava/util/List;)V", "to", "getTo", "setTo", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ServerNavigationPoint implements Serializable {
    private int from;
    private String name;
    private List<? extends Pos> path;
    private int to;

    public final int getFrom() {
        return this.from;
    }

    public final String getName() {
        return this.name;
    }

    public final List<Pos> getPath() {
        return this.path;
    }

    public final int getTo() {
        return this.to;
    }

    public final void setFrom(int i) {
        this.from = i;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setPath(List<? extends Pos> list) {
        this.path = list;
    }

    public final void setTo(int i) {
        this.to = i;
    }
}
