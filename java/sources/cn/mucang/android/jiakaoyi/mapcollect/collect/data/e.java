package cn.mucang.android.jiakaoyi.mapcollect.collect.data;

import android.content.SharedPreferences;
import android.os.Looper;
import android.util.Log;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public class e<T extends SourceData> implements d<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ExecutorService f4781f = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4782a;
    private String b;
    private final List<T> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Class<T> f4783d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<List<SourceData>> f4784e;

    public e(String str, Class<T> cls) {
        this(str, cls, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        synchronized (this.c) {
            try {
                p(i(), JSON.toJSONString(this.c));
            } catch (Throwable unused) {
                Log.e("TAG", "添加失败");
                f.o("项目数据保存到SP文件失败：" + i());
            }
        }
    }

    private static String f(String str, String str2) {
        return j0.b("hpmap_site_sp").getString(str, str2);
    }

    private void g() {
        f4781f.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.data.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f4778a.l();
            }
        });
    }

    private String i() {
        return this.b + "-id-" + this.f4782a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void l() {
        h();
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.data.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f4779a.n();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n() {
        cn.mucang.android.jiakaoyi.framework.h.b<List<SourceData>> bVar = this.f4784e;
        if (bVar != null) {
            bVar.callback(this.c);
        }
    }

    private void o() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            f4781f.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.data.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f4780a.e();
                }
            });
        } else {
            e();
        }
    }

    private static void p(String str, String str2) {
        SharedPreferences.Editor editorEdit = j0.b("hpmap_site_sp").edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.d
    public void a(T t) {
        synchronized (this.c) {
            if (this.c.remove(t)) {
                o();
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.d
    public void b(T t) {
        synchronized (this.c) {
            this.c.add(t);
            o();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.d
    public void c(T t) {
        synchronized (this.c) {
            boolean z = false;
            for (T t2 : this.c) {
                if (t2.getName().equals(t.getName())) {
                    t2.set(t);
                    z = true;
                    break;
                }
            }
            if (z) {
                o();
            }
        }
    }

    public void d(List<T> list, boolean z) {
        synchronized (this.c) {
            if (z) {
                this.c.clear();
                this.c.addAll(list);
                o();
            } else {
                this.c.addAll(list);
                o();
            }
            throw th;
        }
    }

    public List<T> h() {
        try {
            synchronized (this.c) {
                if (g.b(this.c)) {
                    String strI = i();
                    String strF = f(strI, null);
                    if (strF == null && strI.startsWith("C2")) {
                        strF = f(strI.substring(2), null);
                    }
                    if (strF != null) {
                        this.c.addAll(JSON.parseArray(strF, this.f4783d));
                        f.o("使用SP文件缓存的数据，key：" + strI);
                    }
                }
                Iterator<T> it = this.c.iterator();
                while (it.hasNext()) {
                    it.next().createKey();
                }
            }
        } catch (Throwable th) {
            f.o("科二数据初始化失败:" + i() + ":" + th.getLocalizedMessage());
            StringBuilder sb = new StringBuilder();
            sb.append(this.b);
            sb.append("初始化失败:");
            sb.append(th.getLocalizedMessage());
            Log.e("TAG", sb.toString());
        }
        return this.c;
    }

    public e(String str, Class<T> cls, cn.mucang.android.jiakaoyi.framework.h.b<List<SourceData>> bVar) {
        this.c = new ArrayList();
        this.f4782a = str;
        this.f4783d = cls;
        this.f4784e = bVar;
        this.b = cls.getSimpleName();
        Log.i("TAG", "类名 : " + this.b);
        if (bVar != null) {
            g();
        }
    }
}
