package cn.mucang.android.jiakaoyi.teachingk2.provider;

import android.os.Bundle;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider;
import cn.mucang.android.jiakaoyi.signal.communicate.ComProviderWrap;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.c.d;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/provider/RobotSignalProvider;", "Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;", "args", "Landroid/os/Bundle;", "(Landroid/os/Bundle;)V", "getComProvider", "Lcn/mucang/android/jiakaoyi/signal/communicate/ComProviderWrap;", "useNonOldProtocol", "", "appteachk2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RobotSignalProvider extends AbsSignalProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RobotSignalProvider(Bundle args) {
        super(args);
        r.e(args, "args");
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider
    public ComProviderWrap getComProvider() {
        return new ComProviderWrap("机器人连接器", new d());
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider
    public boolean useNonOldProtocol() {
        return (n.a() || AppUtils.m()) ? false : true;
    }
}
