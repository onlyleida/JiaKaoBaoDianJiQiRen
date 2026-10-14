package cn.mucang.android.jiakaoyi.k3collect.manager;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    JLoadingDialog f4084a = null;

    class a implements cn.mucang.jiakaoyi.uilib.q.h.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.jiakaoyi.framework.h.b f4085a;
        final /* synthetic */ androidx.appcompat.app.d b;
        final /* synthetic */ ExamSiteModel c;

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.manager.h$a$a, reason: collision with other inner class name */
        class RunnableC0112a implements Runnable {
            RunnableC0112a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f4085a.callback(null);
            }
        }

        a(cn.mucang.android.jiakaoyi.framework.h.b bVar, androidx.appcompat.app.d dVar, ExamSiteModel examSiteModel) {
            this.f4085a = bVar;
            this.b = dVar;
            this.c = examSiteModel;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void d(cn.mucang.android.jiakaoyi.framework.h.b bVar, String str) {
            bVar.callback(str);
            JLoadingDialog jLoadingDialog = h.this.f4084a;
            if (jLoadingDialog == null || !jLoadingDialog.isShowing()) {
                return;
            }
            h.this.f4084a.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void f(androidx.appcompat.app.d dVar) {
            h.this.f4084a = new JLoadingDialog(dVar);
            h.this.f4084a.b("正在解析地图数据");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void h(ExamSiteModel examSiteModel, androidx.appcompat.app.d dVar, final cn.mucang.android.jiakaoyi.framework.h.b bVar) {
            try {
                final String strL = cn.mucang.jiakaoyi.uilib.mapupdate.h.l(examSiteModel.examSiteId);
                u.f(new SafeRunnable(dVar, new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4078a.d(bVar, strL);
                    }
                }));
            } catch (Throwable unused) {
                u.h("地图解析失败");
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.q.h.b
        public void a(float f2) {
        }

        @Override // cn.mucang.jiakaoyi.uilib.q.h.b
        public void b(boolean z, File file) {
            if (file == null || !file.exists()) {
                if (this.f4085a != null) {
                    u.f(new SafeRunnable(this.b, new RunnableC0112a()));
                }
            } else if (this.f4085a != null) {
                final androidx.appcompat.app.d dVar = this.b;
                u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4079a.f(dVar);
                    }
                });
                final ExamSiteModel examSiteModel = this.c;
                final androidx.appcompat.app.d dVar2 = this.b;
                final cn.mucang.android.jiakaoyi.framework.h.b bVar = this.f4085a;
                n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4080a.h(examSiteModel, dVar2, bVar);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void c(androidx.appcompat.app.d dVar, ExamSiteModel examSiteModel, cn.mucang.android.jiakaoyi.framework.h.b bVar) {
        new cn.mucang.jiakaoyi.uilib.mapupdate.h().c(dVar, examSiteModel, new a(bVar, dVar, examSiteModel));
    }

    public void a(final androidx.appcompat.app.d dVar, final ExamSiteModel examSiteModel, final cn.mucang.android.jiakaoyi.framework.h.b<String> bVar) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f4082a.c(dVar, examSiteModel, bVar);
            }
        });
    }
}
