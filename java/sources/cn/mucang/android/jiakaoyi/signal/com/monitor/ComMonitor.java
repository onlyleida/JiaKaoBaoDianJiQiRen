package cn.mucang.android.jiakaoyi.signal.com.monitor;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.com.w.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\b\u0010\u0012\u001a\u00020\u000eH\u0007R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/com/monitor/ComMonitor;", "", "()V", "dialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;", "getDialog$annotations", "getDialog", "()Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;", "setDialog", "(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;)V", "toConnectCom", "", "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;", "init", "", "onComError", "cms", "Lcn/mucang/android/jiakaoyi/signal/com/monitor/ComMonitorState;", "release", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ComMonitor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static CommonAlertDialog f5358a;
    private static final List<ComName> b = new ArrayList();

    public static final CommonAlertDialog a() {
        return f5358a;
    }

    public static final void e(final ComMonitorState cms) {
        r.e(cms, "cms");
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.com.w.c
            @Override // java.lang.Runnable
            public final void run() {
                ComMonitor.f(cms);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(ComMonitorState cms) {
        String str;
        r.e(cms, "$cms");
        Activity activityI = MucangConfig.i();
        if (activityI == null || activityI.isFinishing() || activityI.isDestroyed()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        ComName c = cms.getC();
        sb.append((Object) (c == null ? null : c.name));
        sb.append(':');
        ComState f5359a = cms.getF5359a();
        sb.append((Object) (f5359a != null ? f5359a.desc : null));
        sb.append(':');
        sb.append((Object) cms.getB());
        f.f(sb.toString());
        if (a() == null) {
            b.clear();
            CommonAlertDialog.a aVar = new CommonAlertDialog.a(activityI);
            ComName c2 = cms.getC();
            if (c2 == null || (str = c2.name) == null) {
                str = "";
            }
            aVar.e(r.m(str, "连接错误"));
            String b2 = cms.getB();
            aVar.d(b2 != null ? b2 : "");
            aVar.c("重新连接");
            aVar.b(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.signal.com.w.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ComMonitor.g(view);
                }
            });
            j(aVar.a());
            CommonAlertDialog commonAlertDialogA = a();
            if (commonAlertDialogA != null) {
                commonAlertDialogA.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.signal.com.w.b
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        ComMonitor.h(dialogInterface);
                    }
                });
            }
            CommonAlertDialog commonAlertDialogA2 = a();
            if (commonAlertDialogA2 != null) {
                commonAlertDialogA2.show();
            }
        }
        if (cms.getC() != null) {
            b.add(cms.getC());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(View view) {
        List<ComName> list = b;
        if (!g.d(list)) {
            f.f("全部销毁重连");
            m.h().L();
            m.h().R();
            return;
        }
        for (ComName comName : list) {
            if (m.h().c(comName)) {
                f.f(r.m(comName.name, "通道销毁重连"));
                m.h().r(comName);
            } else {
                f.f(r.m("不销毁，直接启动", comName));
                m.h().R();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(DialogInterface dialogInterface) {
        j(null);
        b.clear();
    }

    public static final void i() {
    }

    public static final void j(CommonAlertDialog commonAlertDialog) {
        f5358a = commonAlertDialog;
    }
}
