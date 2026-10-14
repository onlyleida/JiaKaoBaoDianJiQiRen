package com.iflytek.cloud.a.d.e.b;

import java.util.LinkedList;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class c {
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f12239d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f12240e;
    private boolean i;
    private boolean j;
    private long k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedList<a> f12238a = new LinkedList<>();
    private final LinkedList<a> b = new LinkedList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f12241f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f12242g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f12243h = 0;
    private final Object l = new Object();

    public static class a extends b<byte[], Integer> {
        public a(byte[] bArr, Integer num) {
            super(bArr, num);
        }

        @Override // com.iflytek.cloud.a.d.e.b.c.b
        public /* bridge */ /* synthetic */ void a() {
            super.a();
        }

        @Override // com.iflytek.cloud.a.d.e.b.c.b, java.util.Map.Entry
        public /* bridge */ /* synthetic */ Object getKey() {
            return super.getKey();
        }

        @Override // com.iflytek.cloud.a.d.e.b.c.b, java.util.Map.Entry
        public /* bridge */ /* synthetic */ Object getValue() {
            return super.getValue();
        }

        @Override // com.iflytek.cloud.a.d.e.b.c.b, java.util.Map.Entry
        public /* bridge */ /* synthetic */ Object setValue(Object obj) {
            return super.setValue(obj);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [byte[], java.lang.Object] */
        @Override // com.iflytek.cloud.a.d.e.b.c.b
        public /* bridge */ /* synthetic */ byte[] a(byte[] bArr) {
            return super.a(bArr);
        }
    }

    private static class b<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private K f12244a;
        private V b;

        public b(K k, V v) {
            this.f12244a = null;
            this.b = null;
            this.f12244a = k;
            this.b = v;
        }

        public K a(K k) {
            this.f12244a = k;
            return k;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f12244a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.b;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.b;
            this.b = v;
            return v2;
        }

        public void a() {
            this.f12244a = null;
            this.b = null;
        }
    }

    public c(long j, int i, long j2, boolean z, boolean z2) {
        this.c = 512;
        this.f12239d = 5120L;
        this.f12240e = -1L;
        this.i = false;
        this.j = true;
        this.k = 0L;
        this.f12240e = j;
        this.f12239d = j2;
        this.c = i;
        this.i = z;
        this.j = z2;
        this.k = j + ((long) (i * 2));
        if (z) {
            return;
        }
        h();
    }

    private a d() throws OutOfMemoryError {
        byte[] bArr = null;
        a aVarRemove = !this.b.isEmpty() ? this.b.remove() : null;
        if (aVarRemove != null) {
            return aVarRemove;
        }
        if (this.i || !j()) {
            int i = 0;
            if (!this.i) {
                i = this.c;
                bArr = new byte[i];
                this.f12241f += (long) i;
            }
            return new a(bArr, Integer.valueOf(i));
        }
        throw new OutOfMemoryError("current buffer len=" + this.f12241f + ", has match max len: " + this.f12240e);
    }

    private void h() {
        long j = this.f12239d;
        if (0 < j) {
            int i = (int) ((j / ((long) this.c)) + 2);
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = this.c;
                this.b.add(new a(new byte[i3], Integer.valueOf(i3)));
                this.f12241f += (long) this.c;
            }
        }
    }

    private boolean j() {
        return -1 != this.f12240e && this.k <= this.f12241f;
    }

    private void l() throws OutOfMemoryError {
        a aVarPeek = this.f12238a.peek();
        if (aVarPeek != null) {
            long jIntValue = this.f12242g + ((long) ((Integer) aVarPeek.getValue()).intValue());
            if (g() <= this.f12243h - jIntValue) {
                a aVarRemove = this.f12238a.remove();
                if (this.i) {
                    aVarRemove.a();
                }
                this.b.add(aVarRemove);
                this.f12242g = jIntValue;
            }
        }
    }

    public void a(long j) {
        synchronized (this.l) {
            long j2 = this.f12240e + j;
            this.f12240e = j2;
            this.k = j2 + ((long) (this.c * 2));
        }
    }

    public void b() {
        boolean z;
        synchronized (this.l) {
            z = false;
            while (this.f12239d < this.f12241f && !this.b.isEmpty()) {
                this.b.remove();
                this.f12241f -= (long) this.c;
                z = true;
            }
        }
        if (z) {
            System.gc();
        }
    }

    public long c() {
        long size;
        synchronized (this.l) {
            size = this.b.size() * this.c;
        }
        return size;
    }

    public long e() {
        long j;
        synchronized (this.l) {
            j = this.f12243h - this.f12242g;
        }
        return j;
    }

    public int f() {
        int size;
        synchronized (this.l) {
            size = this.f12238a.size();
        }
        return size;
    }

    public long g() {
        long j;
        synchronized (this.l) {
            j = this.f12240e;
        }
        return j;
    }

    public boolean i() {
        boolean zIsEmpty;
        synchronized (this.l) {
            zIsEmpty = this.f12238a.isEmpty();
        }
        return zIsEmpty;
    }

    public a k() {
        a aVarPop;
        synchronized (this.l) {
            if (this.f12238a.isEmpty()) {
                aVarPop = null;
            } else {
                aVarPop = this.f12238a.pop();
                this.f12242g += (long) ((Integer) aVarPop.getValue()).intValue();
                if (!this.i && aVarPop.getKey() != null) {
                    this.f12241f -= (long) ((byte[]) aVarPop.getKey()).length;
                }
            }
        }
        return aVarPop;
    }

    public void a() {
        synchronized (this.l) {
            this.f12242g = 0L;
            this.f12243h = 0L;
            while (!this.f12238a.isEmpty()) {
                a aVarPop = this.f12238a.pop();
                if (this.i) {
                    aVarPop.a();
                }
                this.b.add(aVarPop);
            }
        }
    }

    public void a(a aVar) {
        synchronized (this.l) {
            if (aVar != null) {
                if (this.i) {
                    aVar.a();
                    this.b.add(aVar);
                } else if (this.f12241f < this.f12240e && aVar.getKey() != null) {
                    this.b.add(aVar);
                    this.f12241f += (long) ((byte[]) aVar.getKey()).length;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0097 A[Catch: all -> 0x00e2, TryCatch #0 {, blocks: (B:13:0x0014, B:16:0x001c, B:18:0x0020, B:21:0x002c, B:22:0x0060, B:23:0x0061, B:25:0x0066, B:28:0x0071, B:31:0x0085, B:35:0x0097, B:37:0x009b, B:39:0x00b5, B:41:0x00d1, B:42:0x00d6, B:44:0x00db, B:38:0x00a0, B:32:0x0090, B:45:0x00e0), top: B:52:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x009b A[Catch: all -> 0x00e2, TryCatch #0 {, blocks: (B:13:0x0014, B:16:0x001c, B:18:0x0020, B:21:0x002c, B:22:0x0060, B:23:0x0061, B:25:0x0066, B:28:0x0071, B:31:0x0085, B:35:0x0097, B:37:0x009b, B:39:0x00b5, B:41:0x00d1, B:42:0x00d6, B:44:0x00db, B:38:0x00a0, B:32:0x0090, B:45:0x00e0), top: B:52:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a0 A[Catch: all -> 0x00e2, TryCatch #0 {, blocks: (B:13:0x0014, B:16:0x001c, B:18:0x0020, B:21:0x002c, B:22:0x0060, B:23:0x0061, B:25:0x0066, B:28:0x0071, B:31:0x0085, B:35:0x0097, B:37:0x009b, B:39:0x00b5, B:41:0x00d1, B:42:0x00d6, B:44:0x00db, B:38:0x00a0, B:32:0x0090, B:45:0x00e0), top: B:52:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00d1 A[Catch: all -> 0x00e2, TryCatch #0 {, blocks: (B:13:0x0014, B:16:0x001c, B:18:0x0020, B:21:0x002c, B:22:0x0060, B:23:0x0061, B:25:0x0066, B:28:0x0071, B:31:0x0085, B:35:0x0097, B:37:0x009b, B:39:0x00b5, B:41:0x00d1, B:42:0x00d6, B:44:0x00db, B:38:0x00a0, B:32:0x0090, B:45:0x00e0), top: B:52:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00e0 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00db -> B:33:0x0094). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:35:0x0097
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public void a(byte[] r11, int r12, int r13) throws java.lang.IllegalArgumentException, java.lang.NullPointerException, java.lang.OutOfMemoryError {
        /*
            Method dump skipped, instruction units count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.a.d.e.b.c.a(byte[], int, int):void");
    }
}
