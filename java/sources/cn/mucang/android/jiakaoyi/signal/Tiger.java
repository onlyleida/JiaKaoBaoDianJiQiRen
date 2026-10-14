package cn.mucang.android.jiakaoyi.signal;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.o;
import androidx.lifecycle.r;
import cn.mucang.android.core.api.c.e;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class Tiger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<Class<?>, List<cn.mucang.android.jiakaoyi.framework.h.b<?>>> f5204a = new HashMap();
    private static final Handler b = new a(Looper.getMainLooper());

    static class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                Tiger.f(message.obj);
                return;
            }
            if (i == 2) {
                b bVar = (b) message.obj;
                Tiger.e(bVar.f5206a, bVar.b);
            } else {
                if (i != 3) {
                    return;
                }
                b bVar2 = (b) message.obj;
                Tiger.k(bVar2.c, bVar2.f5206a, bVar2.b);
            }
        }
    }

    private static class b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final cn.mucang.android.jiakaoyi.framework.h.b<T> f5206a;
        final Class<T> b;
        final r c;

        /* synthetic */ b(cn.mucang.android.jiakaoyi.framework.h.b bVar, Class cls, r rVar, a aVar) {
            this(bVar, cls, rVar);
        }

        private b(cn.mucang.android.jiakaoyi.framework.h.b<T> bVar, Class<T> cls, r rVar) {
            this.f5206a = bVar;
            this.b = cls;
            this.c = rVar;
        }
    }

    private static void d(r rVar, final cn.mucang.android.jiakaoyi.framework.h.b<?> bVar, final Class<?> cls) {
        Map<Class<?>, List<cn.mucang.android.jiakaoyi.framework.h.b<?>>> map = f5204a;
        List<cn.mucang.android.jiakaoyi.framework.h.b<?>> arrayList = map.get(cls);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            map.put(cls, arrayList);
        }
        if (arrayList.contains(bVar)) {
            return;
        }
        arrayList.add(bVar);
        if (rVar != null) {
            rVar.getLifecycle().a(new o() { // from class: cn.mucang.android.jiakaoyi.signal.Tiger.2
                @Override // androidx.lifecycle.o
                public void b(r rVar2, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_DESTROY) {
                        rVar2.getLifecycle().c(this);
                        Tiger.e(bVar, cls);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(cn.mucang.android.jiakaoyi.framework.h.b<?> bVar, Class<?> cls) {
        if (MucangConfig.v()) {
            Log.e("Tiger", "注销:" + cls);
        }
        List<cn.mucang.android.jiakaoyi.framework.h.b<?>> list = f5204a.get(cls);
        if (list == null) {
            return;
        }
        list.remove(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void f(T t) {
        if (MucangConfig.v()) {
            Log.e("Tiger", "分发:" + t);
        }
        List<cn.mucang.android.jiakaoyi.framework.h.b<?>> list = f5204a.get(t.getClass());
        if (list == null) {
            return;
        }
        Iterator<cn.mucang.android.jiakaoyi.framework.h.b<?>> it = list.iterator();
        while (it.hasNext()) {
            it.next().callback(t);
        }
    }

    private static boolean g(Activity activity) {
        return activity == null || activity.isDestroyed() || activity.isFinishing();
    }

    public static <T> void h(T t) {
        Handler handler = b;
        handler.sendMessage(handler.obtainMessage(1, t));
    }

    public static <T> void i(r rVar, cn.mucang.android.jiakaoyi.framework.h.b<T> bVar, Class<T> cls) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            k(rVar, bVar, cls);
        } else {
            Handler handler = b;
            handler.sendMessage(handler.obtainMessage(3, new b(bVar, cls, rVar, null)));
        }
    }

    public static <T> void j(cn.mucang.android.jiakaoyi.framework.h.b<T> bVar, Class<T> cls) {
        i(null, bVar, cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static void k(r rVar, cn.mucang.android.jiakaoyi.framework.h.b<?> bVar, Class<?> cls) {
        if (MucangConfig.v()) {
            Log.e("Tiger", "注册:" + cls + "," + rVar);
        }
        if (rVar != 0) {
            if ((rVar instanceof Activity) && g((Activity) rVar)) {
                t.d("Tiger", "注册时页面已销毁");
                return;
            }
            if (rVar instanceof Fragment) {
                Fragment fragment = (Fragment) rVar;
                if (g(fragment.getActivity())) {
                    t.d("Tiger", "注册时页面已销毁");
                    return;
                } else if (fragment.isDetached() || fragment.isRemoving()) {
                    t.d("Tiger", "注册时页面已销毁");
                    return;
                }
            }
            if ((rVar instanceof e) && ((e) rVar).a()) {
                t.d("Tiger", "注册时页面已销毁");
                return;
            }
        }
        d(rVar, bVar, cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void l(cn.mucang.android.jiakaoyi.framework.h.b<T> bVar, Class<T> cls) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            e(bVar, cls);
        } else {
            Handler handler = b;
            handler.sendMessage(handler.obtainMessage(2, new b(bVar, cls, null, 0 == true ? 1 : 0)));
        }
    }
}
