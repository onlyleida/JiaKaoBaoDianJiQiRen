package cn.mucang.android.jiakaoyi.exam.k3.light;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;", "Ljava/io/Serializable;", "()V", "builtIn", "", "getBuiltIn", "()Z", "setBuiltIn", "(Z)V", TtmlNode.ATTR_ID, "", "getId", "()J", "setId", "(J)V", "isPlaying", "setPlaying", "lights", "", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "getLights", "()Ljava/util/List;", "setLights", "(Ljava/util/List;)V", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "exam_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightAssembleModel implements Serializable {
    private boolean builtIn;
    private long id;
    private transient boolean isPlaying;
    private List<LightExamModel> lights;
    private String name;

    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    public final long getId() {
        return this.id;
    }

    public final List<LightExamModel> getLights() {
        return this.lights;
    }

    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: isPlaying, reason: from getter */
    public final boolean getIsPlaying() {
        return this.isPlaying;
    }

    public final void setBuiltIn(boolean z) {
        this.builtIn = z;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setLights(List<LightExamModel> list) {
        this.lights = list;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setPlaying(boolean z) {
        this.isPlaying = z;
    }
}
