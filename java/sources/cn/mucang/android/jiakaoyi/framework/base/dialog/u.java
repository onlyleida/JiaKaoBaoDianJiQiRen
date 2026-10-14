package cn.mucang.android.jiakaoyi.framework.base.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.util.Log;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.utils.n0;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes2.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f3410a;
    private JLoadingDialog b;
    private Future c;

    class a implements Callable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f3411a;
        final /* synthetic */ cn.mucang.android.jiakaoyi.framework.h.b b;
        final /* synthetic */ String c;

        a(e eVar, cn.mucang.android.jiakaoyi.framework.h.b bVar, String str) {
            this.f3411a = eVar;
            this.b = bVar;
            this.c = str;
        }

        @Override // java.util.concurrent.Callable
        public Object call() throws Exception {
            try {
                try {
                    this.f3411a.a();
                } catch (Exception e2) {
                    if ((e2 instanceof ApiException) && n0.g(e2.getMessage())) {
                        u.this.k(e2.getMessage(), this.b);
                    } else {
                        u.this.k(this.c, this.b);
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.o("异常栈信息：" + Log.getStackTraceString(e2));
                    cn.mucang.android.core.utils.t.d("SimpleLoadingDialog", e2.getMessage());
                }
                return null;
            } finally {
                u.this.g();
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Callable f3413a;

        b(Callable callable) {
            this.f3413a = callable;
        }

        @Override // java.lang.Runnable
        public void run() {
            u.this.c = cn.mucang.android.jiakaoyi.framework.utils.n0.c(this.f3413a);
        }
    }

    class c implements DialogInterface.OnCancelListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            if (u.this.c == null || u.this.c.isDone()) {
                return;
            }
            u.this.c.cancel(true);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u.this.f3410a == null || u.this.f3410a.isFinishing() || u.this.b == null || !u.this.b.isShowing()) {
                return;
            }
            u.this.b.dismiss();
        }
    }

    public interface e {
        void a() throws Exception;
    }

    public u(Activity activity) {
        this.f3410a = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        cn.mucang.android.core.utils.u.c(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(final String str, final cn.mucang.android.jiakaoyi.framework.h.b<String> bVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.q
            @Override // java.lang.Runnable
            public final void run() {
                u.m(str, bVar);
            }
        });
    }

    private void l() {
        if (this.b == null) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this.f3410a);
            this.b = jLoadingDialog;
            jLoadingDialog.setOnCancelListener(new c());
        }
    }

    static /* synthetic */ void m(String str, cn.mucang.android.jiakaoyi.framework.h.b bVar) {
        cn.mucang.android.core.utils.u.h(str);
        if (bVar != null) {
            bVar.callback(str);
        }
    }

    public void h(e eVar, String str, String str2) {
        j(eVar, str, str2, 0L, null);
    }

    public void i(e eVar, String str, String str2, cn.mucang.android.jiakaoyi.framework.h.b<String> bVar) {
        j(eVar, str, str2, 0L, bVar);
    }

    public void j(e eVar, String str, String str2, long j, cn.mucang.android.jiakaoyi.framework.h.b<String> bVar) {
        l();
        this.b.b(str);
        a aVar = new a(eVar, bVar, str2);
        if (j > 0) {
            cn.mucang.android.core.utils.u.d(new b(aVar), j);
        } else {
            this.c = cn.mucang.android.jiakaoyi.framework.utils.n0.c(aVar);
        }
    }
}
