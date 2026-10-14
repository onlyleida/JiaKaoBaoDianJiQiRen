package cn.mucang.android.jiakaoyi.teachingk2.p007unity.business;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.hpmap.a.b.c;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.c.f.a;
import cn.mucang.android.jiakaoyi.signal.handle.gps.f;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.dialog.SwitchKeMuDialog;
import cn.mucang.android.jiakaoyi.teachingk2.res.model.AreaModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.business.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\tH\u0007J\b\u0010\u0010\u001a\u00020\u000bH\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/KeMuAreaSwitcher;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "areaList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;", "dialog", "Landroid/app/Dialog;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "onSignalChanged", "", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "showDialog", "startSwitch", "stop", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class KeMuAreaSwitcher implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final KeMuAreaSwitcher f8405a = new KeMuAreaSwitcher();
    private static final List<AreaModel> b = new ArrayList();
    private static Dialog c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static KeMu f8406d;

    private KeMuAreaSwitcher() {
    }

    private final void b() {
        KeMu keMu = f8406d;
        if (keMu != null && c == null) {
            Activity activityI = MucangConfig.i();
            r.d(activityI, "getCurrentActivity()");
            SwitchKeMuDialog switchKeMuDialog = new SwitchKeMuDialog(activityI, keMu);
            c = switchKeMuDialog;
            if (switchKeMuDialog != null) {
                switchKeMuDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.business.a
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        KeMuAreaSwitcher.c(dialogInterface);
                    }
                });
            }
            Dialog dialog = c;
            if (dialog == null) {
                return;
            }
            dialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(DialogInterface dialogInterface) {
        c = null;
    }

    public static final void d(KeMu keMu) {
        r.e(keMu, "keMu");
        KeMuAreaSwitcher keMuAreaSwitcher = f8405a;
        f8406d = keMu;
        List<AreaModel> list = b;
        list.clear();
        List<AreaModel> list2 = n.b().m.get(keMu);
        if (g.d(list2)) {
            r.c(list2);
            list.addAll(list2);
            d.m.b(keMuAreaSwitcher);
        }
    }

    public static final void e() {
        d.m.n(f8405a);
        f8406d = null;
        b.clear();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(e signalGetter) {
        r.e(signalGetter, "signalGetter");
        if (signalGetter.d().h() && f.a(signalGetter.getCurrentPosition().f5282h) && signalGetter.c().center != null) {
            boolean z = false;
            Iterator<T> it = b.iterator();
            while (it.hasNext()) {
                if (c.i(signalGetter.c().center, ((AreaModel) it.next()).pointList)) {
                    z = true;
                    break;
                }
            }
            if (z) {
                b();
                return;
            }
            Dialog dialog = c;
            if (dialog == null) {
                return;
            }
            dialog.dismiss();
        }
    }
}
