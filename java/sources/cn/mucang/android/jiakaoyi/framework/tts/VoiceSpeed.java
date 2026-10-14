package cn.mucang.android.jiakaoyi.framework.tts;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;", "", "index", "", "speedName", "", "(Ljava/lang/String;IILjava/lang/String;)V", "getIndex", "()I", "getSpeedName", "()Ljava/lang/String;", "Slow", "Slower", "Standard", "Faster", "Fast", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum VoiceSpeed {
    Slow(0, "缓慢"),
    Slower(1, "较慢"),
    Standard(2, "标准"),
    Faster(3, "较快"),
    Fast(4, "快速");

    private final int index;
    private final String speedName;

    VoiceSpeed(int i, String str) {
        this.index = i;
        this.speedName = str;
    }

    public final int getIndex() {
        return this.index;
    }

    public final String getSpeedName() {
        return this.speedName;
    }
}
