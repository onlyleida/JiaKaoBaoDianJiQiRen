package androidx.collection;

/* JADX INFO: loaded from: classes.dex */
public class d<E> implements Cloneable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f568e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f569a;
    private long[] b;
    private Object[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f570d;

    public d() {
        this(10);
    }

    private void e() {
        int i = this.f570d;
        long[] jArr = this.b;
        Object[] objArr = this.c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f568e) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f569a = false;
        this.f570d = i2;
    }

    public void b(long j, E e2) {
        int i = this.f570d;
        if (i != 0 && j <= this.b[i - 1]) {
            j(j, e2);
            return;
        }
        if (this.f569a && i >= this.b.length) {
            e();
        }
        int i2 = this.f570d;
        if (i2 >= this.b.length) {
            int iF = c.f(i2 + 1);
            long[] jArr = new long[iF];
            Object[] objArr = new Object[iF];
            long[] jArr2 = this.b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.b = jArr;
            this.c = objArr;
        }
        this.b[i2] = j;
        this.c[i2] = e2;
        this.f570d = i2 + 1;
    }

    public void c() {
        int i = this.f570d;
        Object[] objArr = this.c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f570d = 0;
        this.f569a = false;
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public d<E> clone() {
        try {
            d<E> dVar = (d) super.clone();
            dVar.b = (long[]) this.b.clone();
            dVar.c = (Object[]) this.c.clone();
            return dVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public E f(long j) {
        return g(j, null);
    }

    public E g(long j, E e2) {
        int iB = c.b(this.b, this.f570d, j);
        if (iB >= 0) {
            Object[] objArr = this.c;
            if (objArr[iB] != f568e) {
                return (E) objArr[iB];
            }
        }
        return e2;
    }

    public int h(long j) {
        if (this.f569a) {
            e();
        }
        return c.b(this.b, this.f570d, j);
    }

    public long i(int i) {
        if (this.f569a) {
            e();
        }
        return this.b[i];
    }

    public void j(long j, E e2) {
        int iB = c.b(this.b, this.f570d, j);
        if (iB >= 0) {
            this.c[iB] = e2;
            return;
        }
        int i = ~iB;
        int i2 = this.f570d;
        if (i < i2) {
            Object[] objArr = this.c;
            if (objArr[i] == f568e) {
                this.b[i] = j;
                objArr[i] = e2;
                return;
            }
        }
        if (this.f569a && i2 >= this.b.length) {
            e();
            i = ~c.b(this.b, this.f570d, j);
        }
        int i3 = this.f570d;
        if (i3 >= this.b.length) {
            int iF = c.f(i3 + 1);
            long[] jArr = new long[iF];
            Object[] objArr2 = new Object[iF];
            long[] jArr2 = this.b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.b = jArr;
            this.c = objArr2;
        }
        int i4 = this.f570d;
        if (i4 - i != 0) {
            long[] jArr3 = this.b;
            int i5 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i5, i4 - i);
            Object[] objArr4 = this.c;
            System.arraycopy(objArr4, i, objArr4, i5, this.f570d - i);
        }
        this.b[i] = j;
        this.c[i] = e2;
        this.f570d++;
    }

    public void k(long j) {
        int iB = c.b(this.b, this.f570d, j);
        if (iB >= 0) {
            Object[] objArr = this.c;
            Object obj = objArr[iB];
            Object obj2 = f568e;
            if (obj != obj2) {
                objArr[iB] = obj2;
                this.f569a = true;
            }
        }
    }

    public void l(int i) {
        Object[] objArr = this.c;
        Object obj = objArr[i];
        Object obj2 = f568e;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f569a = true;
        }
    }

    public int m() {
        if (this.f569a) {
            e();
        }
        return this.f570d;
    }

    public E n(int i) {
        if (this.f569a) {
            e();
        }
        return (E) this.c[i];
    }

    public String toString() {
        if (m() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f570d * 28);
        sb.append('{');
        for (int i = 0; i < this.f570d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(i(i));
            sb.append('=');
            E eN = n(i);
            if (eN != this) {
                sb.append(eN);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public d(int i) {
        this.f569a = false;
        if (i == 0) {
            this.b = c.b;
            this.c = c.c;
        } else {
            int iF = c.f(i);
            this.b = new long[iF];
            this.c = new Object[iF];
        }
    }
}
