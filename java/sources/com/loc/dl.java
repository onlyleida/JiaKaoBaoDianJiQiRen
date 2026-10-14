package com.loc;

import android.os.SystemClock;
import android.util.LongSparseArray;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class dl {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile dl f12720g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Object f12721h = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object f12724e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Object f12725f = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LongSparseArray<a> f12722a = new LongSparseArray<>();
    private LongSparseArray<a> b = new LongSparseArray<>();
    private LongSparseArray<a> c = new LongSparseArray<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LongSparseArray<a> f12723d = new LongSparseArray<>();

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f12726a;
        long b;
        boolean c;

        private a() {
        }

        /* synthetic */ a(byte b) {
            this();
        }
    }

    private dl() {
    }

    public static dl a() {
        if (f12720g == null) {
            synchronized (f12721h) {
                if (f12720g == null) {
                    f12720g = new dl();
                }
            }
        }
        return f12720g;
    }

    private static short a(LongSparseArray<a> longSparseArray, long j) {
        synchronized (longSparseArray) {
            a aVar = longSparseArray.get(j);
            if (aVar == null) {
                return (short) 0;
            }
            short sMax = (short) Math.max(1L, Math.min(32767L, (b() - aVar.b) / 1000));
            if (!aVar.c) {
                sMax = (short) (-sMax);
            }
            return sMax;
        }
    }

    private static void a(List<dk> list, LongSparseArray<a> longSparseArray, LongSparseArray<a> longSparseArray2) {
        long jB = b();
        int size = longSparseArray.size();
        byte b = 0;
        Iterator<dk> it = list.iterator();
        if (size == 0) {
            while (it.hasNext()) {
                dk next = it.next();
                a aVar = new a(b);
                aVar.f12726a = next.b();
                aVar.b = jB;
                aVar.c = false;
                longSparseArray2.put(next.a(), aVar);
            }
            return;
        }
        while (it.hasNext()) {
            dk next2 = it.next();
            long jA = next2.a();
            a aVar2 = longSparseArray.get(jA);
            if (aVar2 == null) {
                aVar2 = new a(b);
            } else {
                if (aVar2.f12726a != next2.b()) {
                }
                longSparseArray2.put(jA, aVar2);
            }
            aVar2.f12726a = next2.b();
            aVar2.b = jB;
            aVar2.c = true;
            longSparseArray2.put(jA, aVar2);
        }
    }

    private static long b() {
        return SystemClock.elapsedRealtime();
    }

    final short a(long j) {
        return a(this.f12722a, j);
    }

    final void a(List<dk> list) {
        if (list.isEmpty()) {
            return;
        }
        synchronized (this.f12724e) {
            a(list, this.f12722a, this.b);
            LongSparseArray<a> longSparseArray = this.f12722a;
            this.f12722a = this.b;
            this.b = longSparseArray;
            longSparseArray.clear();
        }
    }

    final short b(long j) {
        return a(this.c, j);
    }

    final void b(List<dk> list) {
        if (list.isEmpty()) {
            return;
        }
        synchronized (this.f12725f) {
            a(list, this.c, this.f12723d);
            LongSparseArray<a> longSparseArray = this.c;
            this.c = this.f12723d;
            this.f12723d = longSparseArray;
            longSparseArray.clear();
        }
    }
}
