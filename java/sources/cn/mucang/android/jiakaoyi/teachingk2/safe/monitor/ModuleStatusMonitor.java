package cn.mucang.android.jiakaoyi.teachingk2.safe.monitor;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.DialogInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.config.n;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.center.model.CheckModuleStatus;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity;
import cn.mucang.android.jiakaoyi.teachingk2.provider.TeachSafeProvider;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ui.P0ErrorDialog;
import cn.mucang.android.jiakaoyi.teachingk2.ui.settings.CheckModuleManager;
import cn.mucang.android.jiakaoyi.unity.activity.UnityMainActivity;
import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import cn.mucang.jiakaoyi.uilib.TeachEventHandler;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.m, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0007J\b\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u0019H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\f\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/ModuleStatusMonitor;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "dialog", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/P0ErrorDialog;", "lastCode", "", "list", "", "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;", "markIndex", "", "moduleMark", "getModuleMark", "()Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;", "setModuleMark", "(Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;)V", "startErrorTime", "", "init", "", "isShowing", "", "onSignalChanged", "it", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "showErrorDialog", "signalGetter", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ModuleStatusMonitor implements cn.mucang.android.jiakaoyi.signal.c.f.a {
    private static P0ErrorDialog b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f7801e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static CheckModuleStatus f7802f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static long f7803g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ModuleStatusMonitor f7799a = new ModuleStatusMonitor();
    private static final List<CheckModuleStatus> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f7800d = "";

    private ModuleStatusMonitor() {
    }

    public static final void b() {
        u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.h
            @Override // java.lang.Runnable
            public final void run() {
                ModuleStatusMonitor.c();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c() {
        List<CheckModuleStatus> checkList;
        List<CheckModuleStatus> list = c;
        list.clear();
        TeachSafeProvider teachSafeProvider = (TeachSafeProvider) DataProviderRegister.b(DataProviderRegister.f3433a, TeachSafeProvider.class, null, 2, null);
        if (teachSafeProvider != null && (checkList = teachSafeProvider.getCheckList()) != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : checkList) {
                if (((CheckModuleStatus) obj).getLevel() == 0) {
                    arrayList.add(obj);
                }
            }
            list.addAll(arrayList);
        }
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(f7799a);
    }

    public static final boolean d() {
        P0ErrorDialog p0ErrorDialog = b;
        return p0ErrorDialog != null && p0ErrorDialog.isShowing();
    }

    private final void h(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        boolean z = false;
        String strSubstring = "";
        CheckModuleStatus checkModuleStatus = null;
        int i = 0;
        for (Object obj : c) {
            int i2 = i + 1;
            if (i < 0) {
                s.t();
                throw null;
            }
            CheckModuleStatus checkModuleStatus2 = (CheckModuleStatus) obj;
            if (!checkModuleStatus2.checkPass(checkModuleStatus2.getCheckInt(eVar))) {
                if (!CheckModuleManager.a(checkModuleStatus2.getModule(), checkModuleStatus2.getCode())) {
                    if (checkModuleStatus == null) {
                        checkModuleStatus = checkModuleStatus2;
                    }
                    strSubstring = strSubstring + checkModuleStatus2.getCode() + ',';
                }
                int i3 = f7801e;
                if (i3 == 0 || i < i3) {
                    ModuleStatusMonitor moduleStatusMonitor = f7799a;
                    f7801e = i;
                    moduleStatusMonitor.g(checkModuleStatus2);
                }
            }
            i = i2;
        }
        if (strSubstring.length() > 0) {
            int length = strSubstring.length() - 1;
            Objects.requireNonNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
            strSubstring = strSubstring.substring(0, length);
            r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        if (!r.a(strSubstring, f7800d)) {
            if (strSubstring.length() > 0) {
                cn.mucang.jiakaoyi.uilib.socket.u.p(strSubstring);
            }
        }
        f7800d = strSubstring;
        ComponentCallbacks2 context = MucangConfig.getContext();
        TeachEventHandler teachEventHandler = context instanceof TeachEventHandler ? (TeachEventHandler) context : null;
        if (teachEventHandler != null && teachEventHandler.a(AutoTeachEvent.P0Error)) {
            z = true;
        }
        if (z) {
            P0ErrorDialog p0ErrorDialog = b;
            if (p0ErrorDialog != null) {
                DialogExtensionKt.b(p0ErrorDialog);
            }
            f7803g = eVar.d().L;
            return;
        }
        if (checkModuleStatus == null) {
            P0ErrorDialog p0ErrorDialog2 = b;
            if (p0ErrorDialog2 != null) {
                DialogExtensionKt.b(p0ErrorDialog2);
            }
            f7803g = eVar.d().L;
            return;
        }
        P0ErrorDialog p0ErrorDialog3 = b;
        if (p0ErrorDialog3 != null) {
            if (p0ErrorDialog3 == null) {
                return;
            }
            p0ErrorDialog3.g(checkModuleStatus);
            return;
        }
        Activity activityI = MucangConfig.i();
        n nVar = activityI instanceof n ? (n) activityI : null;
        if (nVar == null || nVar.isFinishing() || nVar.isDestroyed()) {
            return;
        }
        if (!AppUtils.n() || (nVar instanceof UnityMainActivity)) {
            if ((!AppUtils.b() || (nVar instanceof LoginActivity) || nVar.getStatName().equals("B2Main") || nVar.getStatName().equals("B2Exam") || nVar.getStatName().equals("B2Train")) && eVar.d().L - f7803g > 2500) {
                P0ErrorDialog p0ErrorDialog4 = new P0ErrorDialog(nVar, checkModuleStatus);
                b = p0ErrorDialog4;
                p0ErrorDialog4.show();
                P0ErrorDialog p0ErrorDialog5 = b;
                if (p0ErrorDialog5 == null) {
                    return;
                }
                p0ErrorDialog5.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.i
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        ModuleStatusMonitor.i(dialogInterface);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(DialogInterface dialogInterface) {
        b = null;
    }

    public final CheckModuleStatus a() {
        return f7802f;
    }

    public final void g(CheckModuleStatus checkModuleStatus) {
        f7802f = checkModuleStatus;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e it) {
        r.e(it, "it");
        if (it.d().M != 1) {
            return;
        }
        h(it);
    }
}
