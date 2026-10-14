package cn.mucang.android.jiakaoyi.framework.base.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.view.Window;
import android.view.WindowManager;
import androidx.lifecycle.Lifecycle;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0007"}, d2 = {"addLifecycleObserver", "", "Landroid/app/Dialog;", "activity", "Landroid/app/Activity;", "safeDismiss", "setCenter", "framework_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
public final class DialogExtensionKt {
    public static final void a(final Dialog dialog, final Activity activity) {
        Lifecycle lifecycle;
        kotlin.jvm.internal.r.e(dialog, "<this>");
        kotlin.jvm.internal.r.e(activity, "activity");
        androidx.appcompat.app.d dVar = activity instanceof androidx.appcompat.app.d ? (androidx.appcompat.app.d) activity : null;
        if (dVar == null || (lifecycle = dVar.getLifecycle()) == null) {
            return;
        }
        lifecycle.a(new androidx.lifecycle.o() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt$addLifecycleObserver$1
            @Override // androidx.lifecycle.o
            public void b(androidx.lifecycle.r source, Lifecycle.Event event) {
                Lifecycle lifecycle2;
                kotlin.jvm.internal.r.e(source, "source");
                kotlin.jvm.internal.r.e(event, "event");
                if (event == Lifecycle.Event.ON_STOP) {
                    Activity activity2 = activity;
                    androidx.appcompat.app.d dVar2 = activity2 instanceof androidx.appcompat.app.d ? (androidx.appcompat.app.d) activity2 : null;
                    if (dVar2 != null && (lifecycle2 = dVar2.getLifecycle()) != null) {
                        lifecycle2.c(this);
                    }
                    DialogExtensionKt.b(dialog);
                }
            }
        });
    }

    public static final void b(Dialog dialog) {
        kotlin.jvm.internal.r.e(dialog, "<this>");
        try {
            dialog.dismiss();
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("弹窗 dismiss 异常:", q0.d(e2)));
            cn.mucang.android.core.utils.t.d("TAG", e2.getMessage());
        }
    }

    public static final void c(Dialog dialog) {
        kotlin.jvm.internal.r.e(dialog, "<this>");
        Window window = dialog.getWindow();
        WindowManager.LayoutParams attributes = window == null ? null : window.getAttributes();
        if (attributes == null) {
            return;
        }
        attributes.gravity = 17;
    }
}
