package cn.mucang.android.core.webview.tracker;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.webview.tracker.http.model.Track;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static final String b = "c";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Queue<cn.mucang.android.core.webview.tracker.a> f2896a = new LinkedList();

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f2897a;

        a(c cVar, List list) {
            this.f2897a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                new cn.mucang.android.core.webview.tracker.d.c().b(this.f2897a);
            } catch (ApiException unused) {
                t.a(c.b, "report fail.");
            } catch (HttpException unused2) {
                t.a(c.b, "report fail.");
            } catch (InternalException unused3) {
                t.a(c.b, "report fail.");
            }
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2898a;

        static {
            int[] iArr = new int[Event.values().length];
            f2898a = iArr;
            try {
                iArr[Event.PAGE_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2898a[Event.PAGE_FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private List<Track> c() {
        ArrayList arrayList = new ArrayList();
        cn.mucang.android.core.webview.tracker.a aVarPoll = this.f2896a.poll();
        cn.mucang.android.core.webview.tracker.a aVar = null;
        while (aVarPoll != null) {
            int i = b.f2898a[aVarPoll.a().ordinal()];
            if (i != 1) {
                if (i == 2) {
                    if (aVar == null) {
                        t.m(b, "PAGE_FINISHED should always has a PAGE_START before it.");
                    } else {
                        t.h(b, "pre " + aVar.a() + " head " + aVarPoll.a());
                    }
                }
                aVarPoll = this.f2896a.poll();
            } else if (aVar != null) {
                long jB = aVarPoll.b() - aVar.b();
                if (jB < 0) {
                    t.m(b, "wrong raw event order. must check code immediately!!!");
                }
                if (aVar.a() == Event.PAGE_START) {
                    arrayList.add(new Track(aVar, 302, jB));
                } else if (aVar.a() == Event.PAGE_FINISHED) {
                    arrayList.add(new Track(aVar, 200, jB));
                }
            }
            aVar = aVarPoll;
            aVarPoll = this.f2896a.poll();
        }
        if (aVar != null) {
            if (aVar.a() == Event.PAGE_FINISHED) {
                arrayList.add(new Track(aVar, 200, System.currentTimeMillis() - aVar.b()));
            } else if (aVar.a() == Event.PAGE_START) {
                arrayList.add(new Track(aVar, 302, System.currentTimeMillis() - aVar.b()));
            }
        }
        return arrayList;
    }

    public void b(cn.mucang.android.core.webview.tracker.a aVar) {
        String str = b;
        t.h(str, String.format("%s: startMs=%s, url=%s.)", aVar.a(), Long.valueOf(aVar.b()), aVar.c()));
        if (this.f2896a.size() > 1024) {
            t.a(str, "queue is full.");
        } else {
            this.f2896a.add(aVar);
        }
    }

    public void d() {
        List<Track> listC = c();
        Iterator<Track> it = listC.iterator();
        while (it.hasNext()) {
            t.a(b, it.next().toString());
        }
        this.f2896a.clear();
        MucangConfig.f(new a(this, listC));
    }
}
