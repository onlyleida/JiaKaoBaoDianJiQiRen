package cn.mucang.android.jiakaoyi.teachingk2.collect.monitor;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.alibaba.fastjson.annotation.JSONField;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0006\"\u0004\b\u0013\u0010\bR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0006\"\u0004\b\u0016\u0010\bR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;", "Ljava/io/Serializable;", "()V", "coordinate", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "getCoordinate", "()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "setCoordinate", "(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V", "enable", "", "getEnable", "()Z", "setEnable", "(Z)V", "isCamera", "setCamera", "proportion", "getProportion", "setProportion", "rotation", "getRotation", "setRotation", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class BaseTriggerModel implements Serializable {
    private Pos coordinate;
    private boolean enable;

    @JSONField(name = "isCamera")
    private boolean isCamera;
    private Pos proportion;
    private Pos rotation;
    private String type;

    public final Pos getCoordinate() {
        return this.coordinate;
    }

    public final boolean getEnable() {
        return this.enable;
    }

    public final Pos getProportion() {
        return this.proportion;
    }

    public final Pos getRotation() {
        return this.rotation;
    }

    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: isCamera, reason: from getter */
    public final boolean getIsCamera() {
        return this.isCamera;
    }

    public final void setCamera(boolean z) {
        this.isCamera = z;
    }

    public final void setCoordinate(Pos pos) {
        this.coordinate = pos;
    }

    public final void setEnable(boolean z) {
        this.enable = z;
    }

    public final void setProportion(Pos pos) {
        this.proportion = pos;
    }

    public final void setRotation(Pos pos) {
        this.rotation = pos;
    }

    public final void setType(String str) {
        this.type = str;
    }
}
