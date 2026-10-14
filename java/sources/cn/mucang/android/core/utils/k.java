package cn.mucang.android.core.utils;

import android.app.Dialog;

/* JADX INFO: loaded from: classes.dex */
public class k {
    static /* synthetic */ void a(Dialog dialog) {
        try {
            dialog.dismiss();
        } catch (Exception e2) {
            t.n("DialogUtils", "safeDismiss", e2);
        }
    }

    public static void b(final Dialog dialog) {
        if (dialog == null) {
            return;
        }
        u.f(new Runnable() { // from class: cn.mucang.android.core.utils.a
            @Override // java.lang.Runnable
            public final void run() {
                k.a(dialog);
            }
        });
    }
}
