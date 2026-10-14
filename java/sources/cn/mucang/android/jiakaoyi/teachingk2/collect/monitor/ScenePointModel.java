package cn.mucang.android.jiakaoyi.teachingk2.collect.monitor;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;", "Ljava/io/Serializable;", "()V", TtmlNode.ATTR_ID, "", "getId", "()J", "setId", "(J)V", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ScenePointModel implements Serializable {
    private long id;
    private String name;

    public final long getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setName(String str) {
        this.name = str;
    }
}
