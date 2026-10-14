package cn.mucang.android.jiakaoyi.framework.dialogmgr;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.collections.y;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.g.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\bH\u0007J\b\u0010\u0011\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0010\u0012\f\u0012\n \t*\u0004\u0018\u00010\b0\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/dialogmgr/DialogMgr;", "", "()V", "Priority_1", "", "Priority_2", "finishCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/framework/dialogmgr/DialogMgr$DialogShow;", "kotlin.jvm.PlatformType", "lastTime", "", "showTask", "", "clear", "", "insert", "show", "DialogShow", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DialogMgr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DialogMgr f3457a = new DialogMgr();
    private static final List<a> b = new ArrayList();
    private static final b<a> c = new b() { // from class: cn.mucang.android.jiakaoyi.framework.g.e
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            DialogMgr.c((DialogMgr.a) obj);
        }
    };

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.g.f$a */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\tH&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/dialogmgr/DialogMgr$DialogShow;", "", "priority", "", "getPriority", "()I", "show", "", "finishCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface a {
        /* JADX INFO: renamed from: b */
        int getF7255a();

        void c(b<a> bVar);
    }

    private DialogMgr() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b() {
        b.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(a data) {
        r.e(data, "data");
        List<a> list = b;
        boolean zContains = list.contains(data);
        f.o("弹窗管理-回调:" + data.getF7255a() + ',' + zContains);
        if (zContains) {
            list.remove(data);
            f3457a.m();
        }
    }

    public static final void d(final a show) {
        r.e(show, "show");
        f.o(r.m("弹窗管理-添加:", Integer.valueOf(show.getF7255a())));
        if (!u.b()) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.g.c
                @Override // java.lang.Runnable
                public final void run() {
                    DialogMgr.g(show);
                }
            });
            return;
        }
        List<a> list = b;
        boolean zIsEmpty = list.isEmpty();
        if (!list.contains(show)) {
            list.add(show);
        }
        y.A(list, new Comparator() { // from class: cn.mucang.android.jiakaoyi.framework.g.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return DialogMgr.e((DialogMgr.a) obj, (DialogMgr.a) obj2);
            }
        });
        if (zIsEmpty) {
            u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.g.b
                @Override // java.lang.Runnable
                public final void run() {
                    DialogMgr.f();
                }
            }, 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int e(a o1, a o2) {
        r.e(o1, "o1");
        r.e(o2, "o2");
        return r.g(o1.getF7255a(), o2.getF7255a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f() {
        f3457a.m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(a show) {
        r.e(show, "$show");
        d(show);
    }

    private final void m() {
        List<a> list = b;
        if (list.isEmpty()) {
            return;
        }
        a aVar = (a) s.o0(list);
        try {
            aVar.c(c);
        } catch (Throwable th) {
            f.o(r.m("弹窗管理-异常:", q0.d(th)));
            c.callback(aVar);
        }
    }

    public final void a() {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.g.d
            @Override // java.lang.Runnable
            public final void run() {
                DialogMgr.b();
            }
        });
    }
}
