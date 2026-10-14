package cn.mucang.android.jiakaoyi.teachingk2.safe.manager;

import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.IComConnectListener;
import cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.AutoAssistParamsSender;
import cn.mucang.android.jiakaoyi.teachingk2.error.BrakeCheck;
import cn.mucang.android.jiakaoyi.teachingk2.safe.RainModeMgr;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.t, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\b\u0010\n\u001a\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LogicOnComReconnectedMgr;", "", "()V", "TAG", "", "isInited", "", "isMasterDisConnected", "init", "", "invokeOnMasterReconnected", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LogicOnComReconnectedMgr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LogicOnComReconnectedMgr f7770a = new LogicOnComReconnectedMgr();
    private static boolean b;
    private static boolean c;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.t$a */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/safe/manager/LogicOnComReconnectedMgr$init$1", "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/IComConnectListener;", "onConnected", "", "comName", "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;", "onDisConnected", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements IComConnectListener {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.IComConnectListener
        public void a(ComName comName) {
            kotlin.jvm.internal.r.e(comName, "comName");
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("LogicOnComReconnectedMgr: onConnected:", comName.name));
            if (comName == ComName.MasterNet && LogicOnComReconnectedMgr.b) {
                LogicOnComReconnectedMgr.f7770a.e();
                LogicOnComReconnectedMgr.b = false;
            }
        }

        @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.IComConnectListener
        public void b(ComName comName) {
            kotlin.jvm.internal.r.e(comName, "comName");
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("LogicOnComReconnectedMgr: onDisConnected:", comName.name));
            if (comName == ComName.MasterNet) {
                LogicOnComReconnectedMgr logicOnComReconnectedMgr = LogicOnComReconnectedMgr.f7770a;
                LogicOnComReconnectedMgr.b = true;
            }
        }
    }

    private LogicOnComReconnectedMgr() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        try {
            SafeCommandManager.g(SafeLocalParamManager.a(), false, null, 6, null);
            SpeedBrakeManager.c();
            BrakeCheck.a();
            AutoAssistParamsSender.Companion.c(AutoAssistParamsSender.f6144a, false, null, 2, null);
            RainModeMgr.g(Integer.valueOf(RainModeMgr.c()));
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("LogicOnComReconnectedMgr: invokeOnMasterReconnected ", q0.d(e2)));
        }
    }

    public final void d() {
        if (c) {
            return;
        }
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().K(new a());
        c = true;
    }
}
