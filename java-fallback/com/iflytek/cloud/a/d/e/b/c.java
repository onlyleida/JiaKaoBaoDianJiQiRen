package com.iflytek.cloud.a.d.e.b;

import java.util.LinkedList;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedList<a> f12238a;
    private final LinkedList<a> b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f12239d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f12240e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f12241f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f12242g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f12243h;
    private boolean i;
    private boolean j;
    private long k;
    private final Object l;

    public static class a extends b<byte[], Integer> {
        public a(byte[] r1, Integer r2) {
            super(r1, r2);
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
        public /* bridge */ /* synthetic */ Object setValue(Object r1) {
            return super.setValue(r1);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [byte[], java.lang.Object] */
        @Override // com.iflytek.cloud.a.d.e.b.c.b
        public /* bridge */ /* synthetic */ byte[] a(byte[] r1) {
            return super.a(r1);
        }
    }

    private static class b<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private K f12244a;
        private V b;

        public b(K r2, V r3) {
            this.f12244a = null;
            this.b = null;
            this.f12244a = r2;
            this.b = r3;
        }

        public K a(K r1) {
            this.f12244a = r1;
            return r1;
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
        public V setValue(V r2) {
            V r0 = this.b;
            this.b = r2;
            return r0;
        }

        public void a() {
            this.f12244a = null;
            this.b = null;
        }
    }

    public c(long r4, int r6, long r7, boolean r9, boolean r10) {
        this.f12238a = new LinkedList();
        this.b = new LinkedList();
        this.c = 512;
        this.f12239d = 5120;
        this.f12240e = -1;
        this.f12241f = 0;
        this.f12242g = 0;
        this.f12243h = 0;
        this.i = false;
        this.j = true;
        this.k = 0;
        this.l = new Object();
        this.f12240e = r4;
        this.f12239d = r7;
        this.c = r6;
        this.i = r9;
        this.j = r10;
        this.k = r4 + ((long) (r6 * 2));
        if (r9 == true) goto L6;
        h();
        return;
    }

    private a d() throws OutOfMemoryError {
        byte[] r1 = null;
        if (this.b.isEmpty() == true) goto L5;
        a r0 = this.b.remove();
    L6:
        if (r0 == null) goto L8;
        return r0;
    L8:
        if (this.i == false) goto L10;
    L14:
        int r2 = 0;
        if (this.i == true) goto L18;
        r2 = this.c;
        r1 = new byte[r2];
        this.f12241f += (long) r2;
    L18:
        return new a(r1, Integer.valueOf(r2));
    L10:
        if (j() == false) goto L14;
        throw new OutOfMemoryError("current buffer len=" + this.f12241f + ", has match max len: " + this.f12240e);
    L5:
        r0 = null;
        goto L6
    }

    private void h() {
        long r0 = this.f12239d;
        if (0 >= r0) goto L7;
        int r1 = (int) ((r0 / ((long) this.c)) + 2);
        int r2 = 0;
    L5:
        if (r2 >= r1) goto L9;
        int r3 = this.c;
        this.b.add(new a(new byte[r3], Integer.valueOf(r3)));
        this.f12241f += (long) this.c;
        r2 = r2 + 1;
        goto L5
    L9:
        return;
    }

    private boolean j() {
        if ((-1) != this.f12240e) goto L5;
    L7:
        return false;
    L5:
        if (this.k > this.f12241f) goto L7;
        return true;
    }

    private void l() throws OutOfMemoryError {
        a r0 = this.f12238a.peek();
        if (r0 == null) goto L11;
        long r1 = this.f12242g + ((long) ((Integer) r0.getValue()).intValue());
        if (g() > (this.f12243h - r1)) goto L12;
        a r2 = this.f12238a.remove();
        if (this.i == false) goto L9;
        r2.a();
    L9:
        this.b.add(r2);
        this.f12242g = r1;
        return;
    L12:
        return;
    }

    public void a(long r4) {
        Object r0 = this.l;
        monitor-enter(r0);
        long r1 = this.f12240e + r4;     // Catch: Throwable -> L7
        this.f12240e = r1;     // Catch: Throwable -> L7
        this.k = r1 + ((long) (this.c * 2));     // Catch: Throwable -> L7
        monitor-exit(r0);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        throw th;
    }

    public void b() {
        Object r0 = this.l;
        monitor-enter(r0);
        boolean r1 = false;
    L17:
    L14:
        th = move-exception;
        throw th;
    L6:
        if (this.f12239d >= this.f12241f) goto L10;
        if (this.b.isEmpty() == true) goto L10;
        this.b.remove();     // Catch: Throwable -> L14
        this.f12241f -= (long) this.c;     // Catch: Throwable -> L14
        r1 = true;
    L10:
        monitor-exit(r0);     // Catch: Throwable -> L14
        if (r1 == false) goto L21;
        System.gc();
        return;
    }

    public long c() {
        Object r0 = this.l;
        monitor-enter(r0);
        long r1 = this.b.size() * this.c;     // Catch: Throwable -> L7
        monitor-exit(r0);     // Catch: Throwable -> L7
        return r1;
    L7:
        th = move-exception;
        throw th;
    }

    public long e() {
        Object r0 = this.l;
        monitor-enter(r0);
        long r1 = this.f12243h - this.f12242g;     // Catch: Throwable -> L7
        monitor-exit(r0);     // Catch: Throwable -> L7
        return r1;
    L7:
        th = move-exception;
        throw th;
    }

    public int f() {
        Object r0 = this.l;
        monitor-enter(r0);
        int r1 = this.f12238a.size();     // Catch: Throwable -> L7
        monitor-exit(r0);     // Catch: Throwable -> L7
        return r1;
    L7:
        th = move-exception;
        throw th;
    }

    public long g() {
        Object r0 = this.l;
        monitor-enter(r0);
        long r1 = this.f12240e;     // Catch: Throwable -> L7
        monitor-exit(r0);     // Catch: Throwable -> L7
        return r1;
    L7:
        th = move-exception;
        throw th;
    }

    public boolean i() {
        Object r0 = this.l;
        monitor-enter(r0);
        boolean r1 = this.f12238a.isEmpty();     // Catch: Throwable -> L7
        monitor-exit(r0);     // Catch: Throwable -> L7
        return r1;
    L7:
        th = move-exception;
        throw th;
    }

    public a k() {
        Object r0 = this.l;
        monitor-enter(r0);
    L14:
        th = move-exception;
        throw th;
    L5:
        if (this.f12238a.isEmpty() == true) goto L11;
        a r1 = this.f12238a.pop();     // Catch: Throwable -> L14
        this.f12242g += (long) ((Integer) r1.getValue()).intValue();     // Catch: Throwable -> L14
        if (this.i == false) goto L9;
    L12:
        monitor-exit(r0);     // Catch: Throwable -> L14
        return r1;
    L9:
        if (r1.getKey() == null) goto L12;
        this.f12241f -= (long) ((byte[]) r1.getKey()).length;     // Catch: Throwable -> L14
        goto L12
    L11:
        r1 = null;
        goto L12
    }

    public void a() {
        Object r0 = this.l;
        monitor-enter(r0);
        this.f12242g = 0;     // Catch: Throwable -> L14
        this.f12243h = 0;     // Catch: Throwable -> L14
    L7:
        if (this.f12238a.isEmpty() == true) goto L12;
        a r1 = this.f12238a.pop();     // Catch: Throwable -> L14
        if (this.i == false) goto L11;
        r1.a();     // Catch: Throwable -> L14
    L11:
        this.b.add(r1);     // Catch: Throwable -> L14
        goto L7
    L12:
        monitor-exit(r0);     // Catch: Throwable -> L14
        return;
    L14:
        th = move-exception;
        throw th;
    }

    public void a(a r7) {
        Object r0 = this.l;
        monitor-enter(r0);
        if (r7 != null) goto L18;
    L13:
        monitor-exit(r0);     // Catch: Throwable -> L15
        return;
    L15:
        th = move-exception;
        throw th;
    L18:
        if (this.i == false) goto L9;
        r7.a();     // Catch: Throwable -> L15
        this.b.add(r7);     // Catch: Throwable -> L15
        goto L13
    L9:
        if (this.f12241f >= this.f12240e) goto L13;
        if (r7.getKey() == null) goto L13;
        this.b.add(r7);     // Catch: Throwable -> L15
        this.f12241f += (long) ((byte[]) r7.getKey()).length;     // Catch: Throwable -> L15
        goto L13
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00db -> B:33:0x0094). Please report as a decompilation issue!!! */
    public void a(byte[] r11, int r12, int r13) throws IllegalArgumentException, NullPointerException, OutOfMemoryError {
        int r0 = r12 + r13;
        if (r11 == null) goto L51;
        if (r11.length < r0) goto L51;
        if (r13 < 0) goto L51;
        if (this.i == false) goto L10;
        if (r12 > 0) goto L51;
    L10:
        Object r1 = this.l;
        monitor-enter(r1);
        long r4 = this.f12240e;     // Catch: Throwable -> L47
        if (0 >= r4) goto L45;
        if (r13 <= 0) goto L45;
        if (this.j == false) goto L19;
    L23:
        a r2 = null;
        if (this.i == true) goto L27;
        r2 = this.f12238a.peekLast();     // Catch: Throwable -> L47
    L27:
        if (r2 != null) goto L29;
    L32:
        r2 = d();     // Catch: Throwable -> L47
    L33:
        int r5 = 0;
    L34:
        if (r12 >= r0) goto L45;
        if (this.i == false) goto L38;
        r2.a(r11);     // Catch: Throwable -> L47
        int r6 = r13;
    L39:
        r12 = r12 + r6;     // Catch: Throwable -> L47
        r2.setValue(Integer.valueOf(r5 + r6));     // Catch: Throwable -> L47
        this.f12243h += (long) r6;     // Catch: Throwable -> L47
        if (r2.equals(this.f12238a.peekLast()) == true) goto L42;
        this.f12238a.add(r2);     // Catch: Throwable -> L47
    L42:
        l();     // Catch: Throwable -> L47
        if (r12 >= r0) goto L34;
        r2 = d();     // Catch: Throwable -> L47
        goto L33
    L38:
        r6 = Math.min(r0 - r12, ((byte[]) r2.getKey()).length - r5);     // Catch: Throwable -> L47
        System.arraycopy(r11, r12, r2.getKey(), r5, r6);     // Catch: Throwable -> L47
        goto L39
    L29:
        if (((byte[]) r2.getKey()).length == ((Integer) r2.getValue()).intValue()) goto L32;
        r5 = ((Integer) r2.getValue()).intValue();     // Catch: Throwable -> L47
        goto L34
    L19:
        if (((this.f12243h - this.f12242g) + ((long) r13)) <= r4) goto L23;
        throw new OutOfMemoryError("current start=" + this.f12242g + ", current end=" + this.f12243h + ", data len=" + r13 + ", has over max len=" + this.f12240e);     // Catch: Throwable -> L47
    L45:
        monitor-exit(r1);     // Catch: Throwable -> L47
        return;
    L47:
        th = move-exception;
        throw th;
    L51:
        throw new IllegalArgumentException();
    }
}
