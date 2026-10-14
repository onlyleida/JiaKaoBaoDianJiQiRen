package com.loc;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class eo<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f12817a;
    private File b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f12819e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f12820f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f12821g;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, a> f12818d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Runnable f12822h = new Runnable() { // from class: com.loc.eo.2
        @Override // java.lang.Runnable
        public final void run() {
            if (eo.this.c) {
                if (eo.this.f12821g) {
                    eo.this.e();
                    eo.e(eo.this);
                }
                if (eo.this.f12819e != null) {
                    eo.this.f12819e.postDelayed(eo.this.f12822h, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
                }
            }
        }
    };

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f12825a;
        long b;
        long c;

        public a(int i, long j, long j2) {
            this.f12825a = i;
            this.b = j;
            this.c = j2;
        }
    }

    public eo(Context context, String str, Handler handler) {
        this.f12820f = null;
        if (context == null) {
            return;
        }
        this.f12819e = handler;
        this.f12817a = TextUtils.isEmpty(str) ? "unknow" : str;
        this.f12820f = fp.m(context);
        try {
            this.b = new File(context.getFilesDir().getPath(), this.f12817a);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        d();
    }

    public static int a(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    private void b(T t, long j) {
        if (t == null || d(t) < 0) {
            return;
        }
        String strB = b(t);
        a aVar = this.f12818d.get(strB);
        if (aVar == null) {
            a(t, j);
            this.f12818d.put(strB, new a(c(t), d(t), j));
            this.f12821g = true;
            return;
        }
        aVar.c = j;
        if (aVar.f12825a == c(t)) {
            a(t, aVar.b);
            return;
        }
        a(t, j);
        aVar.f12825a = c(t);
        aVar.b = d(t);
        this.f12821g = true;
    }

    private void d() {
        try {
            StringBuilder sb = new StringBuilder("restore from：\n");
            Iterator<String> it = fp.a(this.b).iterator();
            while (it.hasNext()) {
                try {
                    String str = new String(ex.b(o.b(it.next()), this.f12820f), "UTF-8");
                    sb.append(str);
                    sb.append("\n");
                    String[] strArrSplit = str.split(",");
                    this.f12818d.put(strArrSplit[0], new a(Integer.parseInt(strArrSplit[1]), Long.parseLong(strArrSplit[2]), strArrSplit.length >= 4 ? Long.parseLong(strArrSplit[3]) : fp.b()));
                } catch (Throwable th) {
                    if (this.b.exists()) {
                        this.b.delete();
                    }
                    th.printStackTrace();
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (c() > 0) {
            this.f12818d.size();
            if (b() > 0) {
                long jB = fp.b();
                Iterator<Map.Entry<String, a>> it = this.f12818d.entrySet().iterator();
                while (it.hasNext()) {
                    if (jB - this.f12818d.get(it.next().getKey()).c > b()) {
                        it.remove();
                    }
                }
            }
            if (this.f12818d.size() > c()) {
                ArrayList arrayList = new ArrayList(this.f12818d.keySet());
                Collections.sort(arrayList, new Comparator<String>() { // from class: com.loc.eo.1
                    /* JADX INFO: Access modifiers changed from: private */
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(String str, String str2) {
                        return eo.a(((a) eo.this.f12818d.get(str2)).c, ((a) eo.this.f12818d.get(str)).c);
                    }
                });
                for (int iC = (int) c(); iC < arrayList.size(); iC++) {
                    this.f12818d.remove(arrayList.get(iC));
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, a> entry : this.f12818d.entrySet()) {
            try {
                sb.append(o.b(ex.a((entry.getKey() + "," + entry.getValue().f12825a + "," + entry.getValue().b + "," + entry.getValue().c).getBytes("UTF-8"), this.f12820f)) + "\n");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
        String string = sb.toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        fp.a(this.b, string);
    }

    static /* synthetic */ boolean e(eo eoVar) {
        eoVar.f12821g = false;
        return false;
    }

    public final void a() {
        Handler handler;
        if (!this.c && (handler = this.f12819e) != null) {
            handler.removeCallbacks(this.f12822h);
            this.f12819e.postDelayed(this.f12822h, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
        }
        this.c = true;
    }

    public final void a(T t) {
        b(t, fp.b());
    }

    abstract void a(T t, long j);

    public final void a(List<T> list) {
        long jB = fp.b();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            b(it.next(), jB);
        }
        if (this.f12818d.size() >= list.size()) {
            this.f12821g = true;
        }
        if (this.f12818d.size() > 16384 || c() <= 0) {
            this.f12818d.clear();
            for (T t : list) {
                this.f12818d.put(b(t), new a(c(t), d(t), jB));
            }
        }
    }

    public final void a(boolean z) {
        Handler handler = this.f12819e;
        if (handler != null) {
            handler.removeCallbacks(this.f12822h);
        }
        if (!z) {
            this.f12822h.run();
        }
        this.c = false;
    }

    abstract long b();

    public abstract String b(T t);

    abstract int c(T t);

    abstract long c();

    abstract long d(T t);

    public final long e(T t) {
        return (fp.b() - d(t)) / 1000;
    }
}
