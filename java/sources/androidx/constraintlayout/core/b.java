package androidx.constraintlayout.core;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class b implements d.a {
    boolean c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f597e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    SolverVariable f595a = null;
    float b = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ArrayList<SolverVariable> f596d = new ArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f598f = false;

    public interface a {
        boolean a(SolverVariable solverVariable);

        SolverVariable b(int i);

        void c(SolverVariable solverVariable, float f2, boolean z);

        void clear();

        void d();

        float e(SolverVariable solverVariable, boolean z);

        float f(b bVar, boolean z);

        void g(SolverVariable solverVariable, float f2);

        int getCurrentSize();

        float h(int i);

        float i(SolverVariable solverVariable);

        void j(float f2);
    }

    public b() {
    }

    private boolean u(SolverVariable solverVariable, d dVar) {
        return solverVariable.m <= 1;
    }

    private SolverVariable w(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable.Type type;
        int currentSize = this.f597e.getCurrentSize();
        SolverVariable solverVariable2 = null;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < currentSize; i++) {
            float fH = this.f597e.h(i);
            if (fH < BitmapDescriptorFactory.HUE_RED) {
                SolverVariable solverVariableB = this.f597e.b(i);
                if ((zArr == null || !zArr[solverVariableB.c]) && solverVariableB != solverVariable && (((type = solverVariableB.j) == SolverVariable.Type.SLACK || type == SolverVariable.Type.ERROR) && fH < f2)) {
                    f2 = fH;
                    solverVariable2 = solverVariableB;
                }
            }
        }
        return solverVariable2;
    }

    public void A(d dVar, SolverVariable solverVariable, boolean z) {
        if (solverVariable == null || !solverVariable.f587g) {
            return;
        }
        this.b += solverVariable.f586f * this.f597e.i(solverVariable);
        this.f597e.e(solverVariable, z);
        if (z) {
            solverVariable.d(this);
        }
        if (d.t && this.f597e.getCurrentSize() == 0) {
            this.f598f = true;
            dVar.f601a = true;
        }
    }

    public void B(d dVar, b bVar, boolean z) {
        this.b += bVar.b * this.f597e.f(bVar, z);
        if (z) {
            bVar.f595a.d(this);
        }
        if (d.t && this.f595a != null && this.f597e.getCurrentSize() == 0) {
            this.f598f = true;
            dVar.f601a = true;
        }
    }

    public void C(d dVar, SolverVariable solverVariable, boolean z) {
        if (solverVariable == null || !solverVariable.n) {
            return;
        }
        float fI = this.f597e.i(solverVariable);
        this.b += solverVariable.p * fI;
        this.f597e.e(solverVariable, z);
        if (z) {
            solverVariable.d(this);
        }
        this.f597e.c(dVar.n.f600d[solverVariable.o], fI, z);
        if (d.t && this.f597e.getCurrentSize() == 0) {
            this.f598f = true;
            dVar.f601a = true;
        }
    }

    public void D(d dVar) {
        if (dVar.f605g.length == 0) {
            return;
        }
        boolean z = false;
        while (!z) {
            int currentSize = this.f597e.getCurrentSize();
            for (int i = 0; i < currentSize; i++) {
                SolverVariable solverVariableB = this.f597e.b(i);
                if (solverVariableB.f584d != -1 || solverVariableB.f587g || solverVariableB.n) {
                    this.f596d.add(solverVariableB);
                }
            }
            int size = this.f596d.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    SolverVariable solverVariable = this.f596d.get(i2);
                    if (solverVariable.f587g) {
                        A(dVar, solverVariable, true);
                    } else if (solverVariable.n) {
                        C(dVar, solverVariable, true);
                    } else {
                        B(dVar, dVar.f605g[solverVariable.f584d], true);
                    }
                }
                this.f596d.clear();
            } else {
                z = true;
            }
        }
        if (d.t && this.f595a != null && this.f597e.getCurrentSize() == 0) {
            this.f598f = true;
            dVar.f601a = true;
        }
    }

    @Override // androidx.constraintlayout.core.d.a
    public void a(d.a aVar) {
        if (aVar instanceof b) {
            b bVar = (b) aVar;
            this.f595a = null;
            this.f597e.clear();
            for (int i = 0; i < bVar.f597e.getCurrentSize(); i++) {
                this.f597e.c(bVar.f597e.b(i), bVar.f597e.h(i), true);
            }
        }
    }

    @Override // androidx.constraintlayout.core.d.a
    public SolverVariable b(d dVar, boolean[] zArr) {
        return w(zArr, null);
    }

    @Override // androidx.constraintlayout.core.d.a
    public void c(SolverVariable solverVariable) {
        int i = solverVariable.f585e;
        float f2 = 1.0f;
        if (i != 1) {
            if (i == 2) {
                f2 = 1000.0f;
            } else if (i == 3) {
                f2 = 1000000.0f;
            } else if (i == 4) {
                f2 = 1.0E9f;
            } else if (i == 5) {
                f2 = 1.0E12f;
            }
        }
        this.f597e.g(solverVariable, f2);
    }

    @Override // androidx.constraintlayout.core.d.a
    public void clear() {
        this.f597e.clear();
        this.f595a = null;
        this.b = BitmapDescriptorFactory.HUE_RED;
    }

    public b d(d dVar, int i) {
        this.f597e.g(dVar.o(i, "ep"), 1.0f);
        this.f597e.g(dVar.o(i, "em"), -1.0f);
        return this;
    }

    b e(SolverVariable solverVariable, int i) {
        this.f597e.g(solverVariable, i);
        return this;
    }

    boolean f(d dVar) {
        boolean z;
        SolverVariable solverVariableG = g(dVar);
        if (solverVariableG == null) {
            z = true;
        } else {
            x(solverVariableG);
            z = false;
        }
        if (this.f597e.getCurrentSize() == 0) {
            this.f598f = true;
        }
        return z;
    }

    SolverVariable g(d dVar) {
        int currentSize = this.f597e.getCurrentSize();
        SolverVariable solverVariable = null;
        SolverVariable solverVariable2 = null;
        boolean z = false;
        boolean z2 = false;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < currentSize; i++) {
            float fH = this.f597e.h(i);
            SolverVariable solverVariableB = this.f597e.b(i);
            if (solverVariableB.j == SolverVariable.Type.UNRESTRICTED) {
                if (solverVariable == null || f2 > fH) {
                    boolean zU = u(solverVariableB, dVar);
                    z = zU;
                    f2 = fH;
                    solverVariable = solverVariableB;
                } else if (!z && u(solverVariableB, dVar)) {
                    f2 = fH;
                    solverVariable = solverVariableB;
                    z = true;
                }
            } else if (solverVariable == null && fH < BitmapDescriptorFactory.HUE_RED) {
                if (solverVariable2 == null || f3 > fH) {
                    boolean zU2 = u(solverVariableB, dVar);
                    z2 = zU2;
                    f3 = fH;
                    solverVariable2 = solverVariableB;
                } else if (!z2 && u(solverVariableB, dVar)) {
                    f3 = fH;
                    solverVariable2 = solverVariableB;
                    z2 = true;
                }
            }
        }
        return solverVariable != null ? solverVariable : solverVariable2;
    }

    @Override // androidx.constraintlayout.core.d.a
    public SolverVariable getKey() {
        return this.f595a;
    }

    b h(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f2, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2) {
        if (solverVariable2 == solverVariable3) {
            this.f597e.g(solverVariable, 1.0f);
            this.f597e.g(solverVariable4, 1.0f);
            this.f597e.g(solverVariable2, -2.0f);
            return this;
        }
        if (f2 == 0.5f) {
            this.f597e.g(solverVariable, 1.0f);
            this.f597e.g(solverVariable2, -1.0f);
            this.f597e.g(solverVariable3, -1.0f);
            this.f597e.g(solverVariable4, 1.0f);
            if (i > 0 || i2 > 0) {
                this.b = (-i) + i2;
            }
        } else if (f2 <= BitmapDescriptorFactory.HUE_RED) {
            this.f597e.g(solverVariable, -1.0f);
            this.f597e.g(solverVariable2, 1.0f);
            this.b = i;
        } else if (f2 >= 1.0f) {
            this.f597e.g(solverVariable4, -1.0f);
            this.f597e.g(solverVariable3, 1.0f);
            this.b = -i2;
        } else {
            float f3 = 1.0f - f2;
            this.f597e.g(solverVariable, f3 * 1.0f);
            this.f597e.g(solverVariable2, f3 * (-1.0f));
            this.f597e.g(solverVariable3, (-1.0f) * f2);
            this.f597e.g(solverVariable4, 1.0f * f2);
            if (i > 0 || i2 > 0) {
                this.b = ((-i) * f3) + (i2 * f2);
            }
        }
        return this;
    }

    b i(SolverVariable solverVariable, int i) {
        this.f595a = solverVariable;
        float f2 = i;
        solverVariable.f586f = f2;
        this.b = f2;
        this.f598f = true;
        return this;
    }

    @Override // androidx.constraintlayout.core.d.a
    public boolean isEmpty() {
        return this.f595a == null && this.b == BitmapDescriptorFactory.HUE_RED && this.f597e.getCurrentSize() == 0;
    }

    b j(SolverVariable solverVariable, SolverVariable solverVariable2, float f2) {
        this.f597e.g(solverVariable, -1.0f);
        this.f597e.g(solverVariable2, f2);
        return this;
    }

    public b k(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f2) {
        this.f597e.g(solverVariable, -1.0f);
        this.f597e.g(solverVariable2, 1.0f);
        this.f597e.g(solverVariable3, f2);
        this.f597e.g(solverVariable4, -f2);
        return this;
    }

    public b l(float f2, float f3, float f4, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.b = BitmapDescriptorFactory.HUE_RED;
        if (f3 == BitmapDescriptorFactory.HUE_RED || f2 == f4) {
            this.f597e.g(solverVariable, 1.0f);
            this.f597e.g(solverVariable2, -1.0f);
            this.f597e.g(solverVariable4, 1.0f);
            this.f597e.g(solverVariable3, -1.0f);
        } else if (f2 == BitmapDescriptorFactory.HUE_RED) {
            this.f597e.g(solverVariable, 1.0f);
            this.f597e.g(solverVariable2, -1.0f);
        } else if (f4 == BitmapDescriptorFactory.HUE_RED) {
            this.f597e.g(solverVariable3, 1.0f);
            this.f597e.g(solverVariable4, -1.0f);
        } else {
            float f5 = (f2 / f3) / (f4 / f3);
            this.f597e.g(solverVariable, 1.0f);
            this.f597e.g(solverVariable2, -1.0f);
            this.f597e.g(solverVariable4, f5);
            this.f597e.g(solverVariable3, -f5);
        }
        return this;
    }

    public b m(SolverVariable solverVariable, int i) {
        if (i < 0) {
            this.b = i * (-1);
            this.f597e.g(solverVariable, 1.0f);
        } else {
            this.b = i;
            this.f597e.g(solverVariable, -1.0f);
        }
        return this;
    }

    public b n(SolverVariable solverVariable, SolverVariable solverVariable2, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (z) {
            this.f597e.g(solverVariable, 1.0f);
            this.f597e.g(solverVariable2, -1.0f);
        } else {
            this.f597e.g(solverVariable, -1.0f);
            this.f597e.g(solverVariable2, 1.0f);
        }
        return this;
    }

    public b o(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (z) {
            this.f597e.g(solverVariable, 1.0f);
            this.f597e.g(solverVariable2, -1.0f);
            this.f597e.g(solverVariable3, -1.0f);
        } else {
            this.f597e.g(solverVariable, -1.0f);
            this.f597e.g(solverVariable2, 1.0f);
            this.f597e.g(solverVariable3, 1.0f);
        }
        return this;
    }

    public b p(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (z) {
            this.f597e.g(solverVariable, 1.0f);
            this.f597e.g(solverVariable2, -1.0f);
            this.f597e.g(solverVariable3, 1.0f);
        } else {
            this.f597e.g(solverVariable, -1.0f);
            this.f597e.g(solverVariable2, 1.0f);
            this.f597e.g(solverVariable3, -1.0f);
        }
        return this;
    }

    public b q(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f2) {
        this.f597e.g(solverVariable3, 0.5f);
        this.f597e.g(solverVariable4, 0.5f);
        this.f597e.g(solverVariable, -0.5f);
        this.f597e.g(solverVariable2, -0.5f);
        this.b = -f2;
        return this;
    }

    void r() {
        float f2 = this.b;
        if (f2 < BitmapDescriptorFactory.HUE_RED) {
            this.b = f2 * (-1.0f);
            this.f597e.d();
        }
    }

    boolean s() {
        SolverVariable solverVariable = this.f595a;
        return solverVariable != null && (solverVariable.j == SolverVariable.Type.UNRESTRICTED || this.b >= BitmapDescriptorFactory.HUE_RED);
    }

    boolean t(SolverVariable solverVariable) {
        return this.f597e.a(solverVariable);
    }

    public String toString() {
        return z();
    }

    public SolverVariable v(SolverVariable solverVariable) {
        return w(null, solverVariable);
    }

    void x(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.f595a;
        if (solverVariable2 != null) {
            this.f597e.g(solverVariable2, -1.0f);
            this.f595a.f584d = -1;
            this.f595a = null;
        }
        float fE = this.f597e.e(solverVariable, true) * (-1.0f);
        this.f595a = solverVariable;
        if (fE == 1.0f) {
            return;
        }
        this.b /= fE;
        this.f597e.j(fE);
    }

    public void y() {
        this.f595a = null;
        this.f597e.clear();
        this.b = BitmapDescriptorFactory.HUE_RED;
        this.f598f = false;
    }

    String z() {
        boolean z;
        String str = (this.f595a == null ? "0" : "" + this.f595a) + " = ";
        if (this.b != BitmapDescriptorFactory.HUE_RED) {
            str = str + this.b;
            z = true;
        } else {
            z = false;
        }
        int currentSize = this.f597e.getCurrentSize();
        for (int i = 0; i < currentSize; i++) {
            SolverVariable solverVariableB = this.f597e.b(i);
            if (solverVariableB != null) {
                float fH = this.f597e.h(i);
                if (fH != BitmapDescriptorFactory.HUE_RED) {
                    String string = solverVariableB.toString();
                    if (z) {
                        if (fH > BitmapDescriptorFactory.HUE_RED) {
                            str = str + " + ";
                        } else {
                            str = str + " - ";
                            fH *= -1.0f;
                        }
                    } else if (fH < BitmapDescriptorFactory.HUE_RED) {
                        str = str + "- ";
                        fH *= -1.0f;
                    }
                    str = fH == 1.0f ? str + string : str + fH + " " + string;
                    z = true;
                }
            }
        }
        if (z) {
            return str;
        }
        return str + "0.0";
    }

    public b(c cVar) {
        this.f597e = new androidx.constraintlayout.core.a(this, cVar);
    }
}
