package cn.mucang.jiakaoyi.uilib.socket.util;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import cn.mucang.jiakaoyi.uilib.TeachEventHandler;
import com.mucang.android.jiakaoyi.uilib.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class NetworkErrorUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DialogGrade f9694a;
    private String b;
    private WeakReference<CommonAlertDialog> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<Runnable> f9695d;

    public enum DialogGrade {
        Low(1),
        Middle(2),
        High(3);

        public final int grade;

        DialogGrade(int i) {
            this.grade = i;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final NetworkErrorUtil f9696a = new NetworkErrorUtil();
    }

    private void a() {
        WeakReference<CommonAlertDialog> weakReference = this.c;
        if (weakReference != null) {
            weakReference.clear();
        }
    }

    public static NetworkErrorUtil c() {
        return b.f9696a;
    }

    private CommonAlertDialog d(String str, Context context) {
        WeakReference<CommonAlertDialog> weakReference = this.c;
        if (weakReference == null || weakReference.get() == null) {
            CommonAlertDialog commonAlertDialog = new CommonAlertDialog(context, new CommonAlertDialog.DialogParams(str, String.format(k0.a(R.string.uilib_contact_official), n0.c(R.string.mc_contact_number)), k0.a(R.string.uilib_retry), new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.socket.util.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f9698a.g(view);
                }
            }, null));
            commonAlertDialog.setCancelable(false);
            this.c = new WeakReference<>(commonAlertDialog);
            this.b = str;
        }
        return this.c.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void g(View view) {
        Iterator<Runnable> it = this.f9695d.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        this.f9695d.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void i(String str, DialogInterface dialogInterface) {
        f.o("弹窗(" + str + ")消失");
        a();
    }

    public void b() {
        CommonAlertDialog commonAlertDialog;
        WeakReference<CommonAlertDialog> weakReference = this.c;
        if (weakReference == null || (commonAlertDialog = weakReference.get()) == null) {
            return;
        }
        try {
            commonAlertDialog.dismiss();
            Iterator<Runnable> it = this.f9695d.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
            this.f9695d.clear();
        } catch (Exception e2) {
            f.o("Dialog dismiss异常：" + e2.getLocalizedMessage());
            t.d("TAG", e2.getMessage());
        }
    }

    public boolean e() {
        CommonAlertDialog commonAlertDialog;
        WeakReference<CommonAlertDialog> weakReference = this.c;
        if (weakReference == null || (commonAlertDialog = weakReference.get()) == null) {
            return false;
        }
        return commonAlertDialog.isShowing();
    }

    public synchronized boolean j(final String str, Runnable runnable, DialogGrade dialogGrade) {
        AutoTeachEvent autoTeachEvent;
        if (MucangConfig.getContext() instanceof TeachEventHandler) {
            if (dialogGrade == DialogGrade.Low) {
                autoTeachEvent = AutoTeachEvent.GpsError;
            } else {
                autoTeachEvent = dialogGrade == DialogGrade.Middle ? AutoTeachEvent.ServerError : AutoTeachEvent.NetError;
            }
            if (((TeachEventHandler) MucangConfig.getContext()).a(autoTeachEvent)) {
                return false;
            }
        }
        Activity activityI = MucangConfig.i();
        if (activityI != null && !activityI.isFinishing() && !activityI.isDestroyed() && !n.a()) {
            if (dialogGrade.grade > this.f9694a.grade) {
                Iterator<Runnable> it = this.f9695d.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
                b();
                a();
            }
            if (runnable != null && !this.f9695d.contains(runnable)) {
                this.f9695d.add(runnable);
            }
            CommonAlertDialog commonAlertDialogD = d(str, activityI);
            if (commonAlertDialogD.isShowing()) {
                return false;
            }
            if (!this.b.equals(str)) {
                a();
                commonAlertDialogD = d(str, activityI);
            }
            commonAlertDialogD.show();
            commonAlertDialogD.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.jiakaoyi.uilib.socket.util.a
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f9697a.i(str, dialogInterface);
                }
            });
            this.f9694a = dialogGrade;
            return true;
        }
        runnable.run();
        return false;
    }

    private NetworkErrorUtil() {
        this.f9694a = DialogGrade.Low;
        this.b = "";
        this.f9695d = new ArrayList();
    }
}
