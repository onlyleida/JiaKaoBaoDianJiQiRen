package cn.mucang.android.jiakaoyi.framework.base.k;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List<c> f3422a = new ArrayList();

    public static void a() {
        new Thread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.base.k.a
            @Override // java.lang.Runnable
            public final void run() {
                d.c();
            }
        }).start();
    }

    public static void b(List<c> list) {
        List<c> list2 = f3422a;
        synchronized (list2) {
            list2.addAll(list);
            Collections.sort(list2, new Comparator() { // from class: cn.mucang.android.jiakaoyi.framework.base.k.b
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Integer.compare(((c) obj).f3421a, ((c) obj2).f3421a);
                }
            });
        }
    }

    static /* synthetic */ void c() {
        c cVarRemove;
        while (true) {
            List<c> list = f3422a;
            synchronized (list) {
                if (list.size() <= 0) {
                    return;
                } else {
                    cVarRemove = list.remove(0);
                }
            }
            if (cVarRemove != null) {
                try {
                    cVarRemove.run();
                } catch (Throwable th) {
                    Log.e("TAG", "执行任务失败:" + th);
                }
            }
        }
    }
}
