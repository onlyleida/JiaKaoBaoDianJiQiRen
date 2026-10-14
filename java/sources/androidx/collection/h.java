package androidx.collection;

/* JADX INFO: loaded from: classes.dex */
public class h<E> implements Cloneable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f580e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f581a;
    private int[] b;
    private Object[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f582d;

    public h() {
        this(10);
    }

    private void e() {
        int i = this.f582d;
        int[] iArr = this.b;
        Object[] objArr = this.c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f580e) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f581a = false;
        this.f582d = i2;
    }

    public void b(int i, E e2) {
        int i2 = this.f582d;
        if (i2 != 0 && i <= this.b[i2 - 1]) {
            j(i, e2);
            return;
        }
        if (this.f581a && i2 >= this.b.length) {
            e();
        }
        int i3 = this.f582d;
        if (i3 >= this.b.length) {
            int iE = c.e(i3 + 1);
            int[] iArr = new int[iE];
            Object[] objArr = new Object[iE];
            int[] iArr2 = this.b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.b = iArr;
            this.c = objArr;
        }
        this.b[i3] = i;
        this.c[i3] = e2;
        this.f582d = i3 + 1;
    }

    public void c() {
        int i = this.f582d;
        Object[] objArr = this.c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f582d = 0;
        this.f581a = false;
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public h<E> clone() {
        try {
            h<E> hVar = (h) super.clone();
            hVar.b = (int[]) this.b.clone();
            hVar.c = (Object[]) this.c.clone();
            return hVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public E f(int i) {
        return g(i, null);
    }

    public E g(int i, E e2) {
        int iA = c.a(this.b, this.f582d, i);
        if (iA >= 0) {
            Object[] objArr = this.c;
            if (objArr[iA] != f580e) {
                return (E) objArr[iA];
            }
        }
        return e2;
    }

    public int h(E e2) {
        if (this.f581a) {
            e();
        }
        for (int i = 0; i < this.f582d; i++) {
            if (this.c[i] == e2) {
                return i;
            }
        }
        return -1;
    }

    public int i(int i) {
        if (this.f581a) {
            e();
        }
        return this.b[i];
    }

    public void j(int i, E e2) {
        int iA = c.a(this.b, this.f582d, i);
        if (iA >= 0) {
            this.c[iA] = e2;
            return;
        }
        int i2 = ~iA;
        int i3 = this.f582d;
        if (i2 < i3) {
            Object[] objArr = this.c;
            if (objArr[i2] == f580e) {
                this.b[i2] = i;
                objArr[i2] = e2;
                return;
            }
        }
        if (this.f581a && i3 >= this.b.length) {
            e();
            i2 = ~c.a(this.b, this.f582d, i);
        }
        int i4 = this.f582d;
        if (i4 >= this.b.length) {
            int iE = c.e(i4 + 1);
            int[] iArr = new int[iE];
            Object[] objArr2 = new Object[iE];
            int[] iArr2 = this.b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.b = iArr;
            this.c = objArr2;
        }
        int i5 = this.f582d;
        if (i5 - i2 != 0) {
            int[] iArr3 = this.b;
            int i6 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i6, i5 - i2);
            Object[] objArr4 = this.c;
            System.arraycopy(objArr4, i2, objArr4, i6, this.f582d - i2);
        }
        this.b[i2] = i;
        this.c[i2] = e2;
        this.f582d++;
    }

    public int k() {
        if (this.f581a) {
            e();
        }
        return this.f582d;
    }

    public E l(int i) {
        if (this.f581a) {
            e();
        }
        return (E) this.c[i];
    }

    public String toString() {
        if (k() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f582d * 28);
        sb.append('{');
        for (int i = 0; i < this.f582d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(i(i));
            sb.append('=');
            E eL = l(i);
            if (eL != this) {
                sb.append(eL);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public h(int i) {
        this.f581a = false;
        if (i == 0) {
            this.b = c.f567a;
            this.c = c.c;
        } else {
            int iE = c.e(i);
            this.b = new int[iE];
            this.c = new Object[iE];
        }
    }
}
