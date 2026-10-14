package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n;

import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.communicate.w.n.i, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/IComConnectListener;", "", "onConnected", "", "comName", "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;", "onDisConnected", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface IComConnectListener {
    void a(ComName comName);

    void b(ComName comName);
}
