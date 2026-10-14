package androidx.constraintlayout.core;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class h extends androidx.constraintlayout.core.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f614g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SolverVariable[] f615h;
    private SolverVariable[] i;
    private int j;
    b k;

    class a implements Comparator<SolverVariable> {
        a(h hVar) {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(SolverVariable solverVariable, SolverVariable solverVariable2) {
            return solverVariable.c - solverVariable2.c;
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SolverVariable f616a;

        public b(h hVar) {
        }

        public boolean a(SolverVariable solverVariable, float f2) {
            boolean z = true;
            if (!this.f616a.f583a) {
                for (int i = 0; i < 9; i++) {
                    float f3 = solverVariable.i[i];
                    if (f3 != BitmapDescriptorFactory.HUE_RED) {
                        float f4 = f3 * f2;
                        if (Math.abs(f4) < 1.0E-4f) {
                            f4 = BitmapDescriptorFactory.HUE_RED;
                        }
                        this.f616a.i[i] = f4;
                    } else {
                        this.f616a.i[i] = 0.0f;
                    }
                }
                return true;
            }
            for (int i2 = 0; i2 < 9; i2++) {
                float[] fArr = this.f616a.i;
                fArr[i2] = fArr[i2] + (solverVariable.i[i2] * f2);
                if (Math.abs(fArr[i2]) < 1.0E-4f) {
                    this.f616a.i[i2] = 0.0f;
                } else {
                    z = false;
                }
            }
            if (z) {
                h.this.G(this.f616a);
            }
            return false;
        }

        public void b(SolverVariable solverVariable) {
            this.f616a = solverVariable;
        }

        public final boolean c() {
            for (int i = 8; i >= 0; i--) {
                float f2 = this.f616a.i[i];
                if (f2 > BitmapDescriptorFactory.HUE_RED) {
                    return false;
                }
                if (f2 < BitmapDescriptorFactory.HUE_RED) {
                    return true;
                }
            }
            return false;
        }

        public final boolean d(SolverVariable solverVariable) {
            for (int i = 8; i >= 0; i--) {
                float f2 = solverVariable.i[i];
                float f3 = this.f616a.i[i];
                if (f3 != f2) {
                    if (f3 < f2) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void e() {
            Arrays.fill(this.f616a.i, BitmapDescriptorFactory.HUE_RED);
        }

        public String toString() {
            String str = "[ ";
            if (this.f616a != null) {
                for (int i = 0; i < 9; i++) {
                    str = str + this.f616a.i[i] + " ";
                }
            }
            return str + "] " + this.f616a;
        }
    }

    public h(c cVar) {
        super(cVar);
        this.f614g = 128;
        this.f615h = new SolverVariable[128];
        this.i = new SolverVariable[128];
        this.j = 0;
        this.k = new b(this);
    }

    private final void F(SolverVariable solverVariable) {
        int i;
        int i2 = this.j + 1;
        SolverVariable[] solverVariableArr = this.f615h;
        if (i2 > solverVariableArr.length) {
            SolverVariable[] solverVariableArr2 = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            this.f615h = solverVariableArr2;
            this.i = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.f615h;
        int i3 = this.j;
        solverVariableArr3[i3] = solverVariable;
        int i4 = i3 + 1;
        this.j = i4;
        if (i4 > 1 && solverVariableArr3[i4 - 1].c > solverVariable.c) {
            int i5 = 0;
            while (true) {
                i = this.j;
                if (i5 >= i) {
                    break;
                }
                this.i[i5] = this.f615h[i5];
                i5++;
            }
            Arrays.sort(this.i, 0, i, new a(this));
            for (int i6 = 0; i6 < this.j; i6++) {
                this.f615h[i6] = this.i[i6];
            }
        }
        solverVariable.f583a = true;
        solverVariable.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(SolverVariable solverVariable) {
        int i = 0;
        while (i < this.j) {
            if (this.f615h[i] == solverVariable) {
                while (true) {
                    int i2 = this.j;
                    if (i >= i2 - 1) {
                        this.j = i2 - 1;
                        solverVariable.f583a = false;
                        return;
                    } else {
                        SolverVariable[] solverVariableArr = this.f615h;
                        int i3 = i + 1;
                        solverVariableArr[i] = solverVariableArr[i3];
                        i = i3;
                    }
                }
            } else {
                i++;
            }
        }
    }

    @Override // androidx.constraintlayout.core.b
    public void B(d dVar, androidx.constraintlayout.core.b bVar, boolean z) {
        SolverVariable solverVariable = bVar.f595a;
        if (solverVariable == null) {
            return;
        }
        androidx.constraintlayout.core.b.a aVar = bVar.f597e;
        int currentSize = aVar.getCurrentSize();
        for (int i = 0; i < currentSize; i++) {
            SolverVariable solverVariableB = aVar.b(i);
            float fH = aVar.h(i);
            this.k.b(solverVariableB);
            if (this.k.a(solverVariable, fH)) {
                F(solverVariableB);
            }
            this.b += bVar.b * fH;
        }
        G(solverVariable);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002e  */
    @Override // androidx.constraintlayout.core.b, androidx.constraintlayout.core.d.a
    public SolverVariable b(d dVar, boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.j; i2++) {
            SolverVariable solverVariable = this.f615h[i2];
            if (!zArr[solverVariable.c]) {
                this.k.b(solverVariable);
                if (i == -1) {
                    if (this.k.c()) {
                        i = i2;
                    }
                } else if (this.k.d(this.f615h[i])) {
                    i = i2;
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.f615h[i];
    }

    @Override // androidx.constraintlayout.core.b, androidx.constraintlayout.core.d.a
    public void c(SolverVariable solverVariable) {
        this.k.b(solverVariable);
        this.k.e();
        solverVariable.i[solverVariable.f585e] = 1.0f;
        F(solverVariable);
    }

    @Override // androidx.constraintlayout.core.b, androidx.constraintlayout.core.d.a
    public void clear() {
        this.j = 0;
        this.b = BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.core.b, androidx.constraintlayout.core.d.a
    public boolean isEmpty() {
        return this.j == 0;
    }

    @Override // androidx.constraintlayout.core.b
    public String toString() {
        String str = " goal -> (" + this.b + ") : ";
        for (int i = 0; i < this.j; i++) {
            this.k.b(this.f615h[i]);
            str = str + this.k + " ";
        }
        return str;
    }
}
