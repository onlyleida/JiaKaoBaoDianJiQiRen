package androidx.constraintlayout.core;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class SolverVariable implements Comparable<SolverVariable> {
    private static int q = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f583a;
    private String b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f586f;
    Type j;
    public int c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f584d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f585e = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f587g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float[] f588h = new float[9];
    float[] i = new float[9];
    b[] k = new b[16];
    int l = 0;
    public int m = 0;
    boolean n = false;
    int o = -1;
    float p = BitmapDescriptorFactory.HUE_RED;

    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public SolverVariable(Type type, String str) {
        this.j = type;
    }

    static void c() {
        q++;
    }

    public final void a(b bVar) {
        int i = 0;
        while (true) {
            int i2 = this.l;
            if (i >= i2) {
                b[] bVarArr = this.k;
                if (i2 >= bVarArr.length) {
                    this.k = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                b[] bVarArr2 = this.k;
                int i3 = this.l;
                bVarArr2[i3] = bVar;
                this.l = i3 + 1;
                return;
            }
            if (this.k[i] == bVar) {
                return;
            } else {
                i++;
            }
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(SolverVariable solverVariable) {
        return this.c - solverVariable.c;
    }

    public final void d(b bVar) {
        int i = this.l;
        int i2 = 0;
        while (i2 < i) {
            if (this.k[i2] == bVar) {
                while (i2 < i - 1) {
                    b[] bVarArr = this.k;
                    int i3 = i2 + 1;
                    bVarArr[i2] = bVarArr[i3];
                    i2 = i3;
                }
                this.l--;
                return;
            }
            i2++;
        }
    }

    public void e() {
        this.b = null;
        this.j = Type.UNKNOWN;
        this.f585e = 0;
        this.c = -1;
        this.f584d = -1;
        this.f586f = BitmapDescriptorFactory.HUE_RED;
        this.f587g = false;
        this.n = false;
        this.o = -1;
        this.p = BitmapDescriptorFactory.HUE_RED;
        int i = this.l;
        for (int i2 = 0; i2 < i; i2++) {
            this.k[i2] = null;
        }
        this.l = 0;
        this.m = 0;
        this.f583a = false;
        Arrays.fill(this.i, BitmapDescriptorFactory.HUE_RED);
    }

    public void g(d dVar, float f2) {
        this.f586f = f2;
        this.f587g = true;
        this.n = false;
        this.o = -1;
        this.p = BitmapDescriptorFactory.HUE_RED;
        int i = this.l;
        this.f584d = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.k[i2].A(dVar, this, false);
        }
        this.l = 0;
    }

    public void h(Type type, String str) {
        this.j = type;
    }

    public final void k(d dVar, b bVar) {
        int i = this.l;
        for (int i2 = 0; i2 < i; i2++) {
            this.k[i2].B(dVar, bVar, false);
        }
        this.l = 0;
    }

    public String toString() {
        if (this.b != null) {
            return "" + this.b;
        }
        return "" + this.c;
    }
}
