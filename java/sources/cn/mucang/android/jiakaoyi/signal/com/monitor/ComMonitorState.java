package cn.mucang.android.jiakaoyi.signal.com.monitor;

import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.com.w.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/com/monitor/ComMonitorState;", "", "state", "Lcn/mucang/android/jiakaoyi/signal/com/ComState;", SocialConstants.PARAM_SEND_MSG, "", "comName", "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;", "(Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V", "getComName", "()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;", "getMsg", "()Ljava/lang/String;", "getState", "()Lcn/mucang/android/jiakaoyi/signal/com/ComState;", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ComMonitorState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ComState f5359a;
    private final String b;
    private final ComName c;

    public ComMonitorState(ComState comState, String str, ComName comName) {
        this.f5359a = comState;
        this.b = str;
        this.c = comName;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final ComName getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final ComState getF5359a() {
        return this.f5359a;
    }
}
