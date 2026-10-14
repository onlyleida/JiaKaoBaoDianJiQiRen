package cn.mucang.android.jiakaoyi.teachingk2.audio;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioModel;", "Ljava/io/Serializable;", "()V", "accessToken", "", "getAccessToken", "()Ljava/lang/String;", "setAccessToken", "(Ljava/lang/String;)V", "channelName", "getChannelName", "setChannelName", "type", "", "getType", "()I", "setType", "(I)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AudioModel implements Serializable {
    private String accessToken;
    private String channelName;
    private int type;

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final String getChannelName() {
        return this.channelName;
    }

    public final int getType() {
        return this.type;
    }

    public final void setAccessToken(String str) {
        this.accessToken = str;
    }

    public final void setChannelName(String str) {
        this.channelName = str;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
