package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class c extends WidgetRun {
    ArrayList<WidgetRun> k;
    private int l;

    public c(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        this.k = new ArrayList<>();
        this.f696f = i;
        q();
    }

    private void q() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2 = this.b;
        ConstraintWidget constraintWidgetJ = constraintWidget2.J(this.f696f);
        while (true) {
            ConstraintWidget constraintWidget3 = constraintWidgetJ;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            } else {
                constraintWidgetJ = constraintWidget2.J(this.f696f);
            }
        }
        this.b = constraintWidget;
        this.k.add(constraintWidget.L(this.f696f));
        ConstraintWidget constraintWidgetH = constraintWidget.H(this.f696f);
        while (constraintWidgetH != null) {
            this.k.add(constraintWidgetH.L(this.f696f));
            constraintWidgetH = constraintWidgetH.H(this.f696f);
        }
        for (WidgetRun widgetRun : this.k) {
            int i = this.f696f;
            if (i == 0) {
                widgetRun.b.b = this;
            } else if (i == 1) {
                widgetRun.b.c = this;
            }
        }
        if ((this.f696f == 0 && ((androidx.constraintlayout.core.widgets.d) this.b.I()).G1()) && this.k.size() > 1) {
            ArrayList<WidgetRun> arrayList = this.k;
            this.b = arrayList.get(arrayList.size() - 1).b;
        }
        this.l = this.f696f == 0 ? this.b.x() : this.b.N();
    }

    private ConstraintWidget r() {
        for (int i = 0; i < this.k.size(); i++) {
            WidgetRun widgetRun = this.k.get(i);
            if (widgetRun.b.Q() != 8) {
                return widgetRun.b;
            }
        }
        return null;
    }

    private ConstraintWidget s() {
        for (int size = this.k.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.k.get(size);
            if (widgetRun.b.Q() != 8) {
                return widgetRun.b;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:113:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:294:0x00f4 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ec A[ADDED_TO_REGION] */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.d
    public void a(d dVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        float f2;
        boolean z;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        float f3;
        if (this.f698h.j && this.i.j) {
            ConstraintWidget constraintWidgetI = this.b.I();
            boolean zG1 = constraintWidgetI instanceof androidx.constraintlayout.core.widgets.d ? ((androidx.constraintlayout.core.widgets.d) constraintWidgetI).G1() : false;
            int i13 = this.i.f691g - this.f698h.f691g;
            int size = this.k.size();
            int i14 = 0;
            while (true) {
                i = -1;
                i2 = 8;
                if (i14 >= size) {
                    i14 = -1;
                    break;
                } else if (this.k.get(i14).b.Q() != 8) {
                    break;
                } else {
                    i14++;
                }
            }
            int i15 = size - 1;
            for (int i16 = i15; i16 >= 0; i16--) {
                if (this.k.get(i16).b.Q() != 8) {
                    i = i16;
                    break;
                }
            }
            int i17 = 0;
            while (true) {
                if (i17 >= 2) {
                    i3 = 0;
                    i4 = 0;
                    i5 = 0;
                    f2 = BitmapDescriptorFactory.HUE_RED;
                    break;
                }
                int i18 = 0;
                i4 = 0;
                i5 = 0;
                int i19 = 0;
                f2 = BitmapDescriptorFactory.HUE_RED;
                while (i18 < size) {
                    WidgetRun widgetRun = this.k.get(i18);
                    if (widgetRun.b.Q() != i2) {
                        i19++;
                        if (i18 > 0 && i18 >= i14) {
                            i4 += widgetRun.f698h.f690f;
                        }
                        f fVar = widgetRun.f695e;
                        int i20 = fVar.f691g;
                        boolean z2 = widgetRun.f694d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (z2) {
                            int i21 = this.f696f;
                            if (i21 == 0 && !widgetRun.b.f681d.f695e.j) {
                                return;
                            }
                            if (i21 == 1 && !widgetRun.b.f682e.f695e.j) {
                                return;
                            } else {
                                i11 = i20;
                            }
                        } else {
                            i11 = i20;
                            if (widgetRun.f693a == 1 && i17 == 0) {
                                i12 = fVar.m;
                                i5++;
                            } else {
                                if (fVar.j) {
                                    i12 = i11;
                                }
                                if (z2) {
                                    i4 += i12;
                                } else {
                                    i5++;
                                    f3 = widgetRun.b.o0[this.f696f];
                                    if (f3 >= BitmapDescriptorFactory.HUE_RED) {
                                        f2 += f3;
                                    }
                                }
                                if (i18 >= i15 && i18 < i) {
                                    i4 += -widgetRun.i.f690f;
                                }
                            }
                            z2 = true;
                            if (z2) {
                                i5++;
                                f3 = widgetRun.b.o0[this.f696f];
                                if (f3 >= BitmapDescriptorFactory.HUE_RED) {
                                    f2 += f3;
                                }
                            } else {
                                i4 += i12;
                            }
                            if (i18 >= i15) {
                            }
                        }
                        i12 = i11;
                        if (z2) {
                            i5++;
                            f3 = widgetRun.b.o0[this.f696f];
                            if (f3 >= BitmapDescriptorFactory.HUE_RED) {
                                f2 += f3;
                            }
                        } else {
                            i4 += i12;
                        }
                        if (i18 >= i15) {
                        }
                    }
                    i18++;
                    i2 = 8;
                }
                if (i4 < i13 || i5 == 0) {
                    i3 = i19;
                    break;
                } else {
                    i17++;
                    i2 = 8;
                }
            }
            int i22 = this.f698h.f691g;
            if (zG1) {
                i22 = this.i.f691g;
            }
            if (i4 > i13) {
                i22 = zG1 ? i22 + ((int) (((i4 - i13) / 2.0f) + 0.5f)) : i22 - ((int) (((i4 - i13) / 2.0f) + 0.5f));
            }
            if (i5 > 0) {
                float f4 = i13 - i4;
                int i23 = (int) ((f4 / i5) + 0.5f);
                int i24 = 0;
                int i25 = 0;
                while (i24 < size) {
                    WidgetRun widgetRun2 = this.k.get(i24);
                    int i26 = i23;
                    int i27 = i4;
                    if (widgetRun2.b.Q() != 8 && widgetRun2.f694d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        f fVar2 = widgetRun2.f695e;
                        if (fVar2.j) {
                            zG1 = zG1;
                            i22 = i22;
                            f4 = f4;
                        } else {
                            int i28 = f2 > BitmapDescriptorFactory.HUE_RED ? (int) (((widgetRun2.b.o0[this.f696f] * f4) / f2) + 0.5f) : i26;
                            if (this.f696f == 0) {
                                ConstraintWidget constraintWidget = widgetRun2.b;
                                i10 = constraintWidget.w;
                                i9 = constraintWidget.v;
                            } else {
                                ConstraintWidget constraintWidget2 = widgetRun2.b;
                                int i29 = constraintWidget2.z;
                                i9 = constraintWidget2.y;
                                i10 = i29;
                            }
                            int iMax = Math.max(i9, widgetRun2.f693a == 1 ? Math.min(i28, fVar2.m) : i28);
                            if (i10 > 0) {
                                iMax = Math.min(i10, iMax);
                            }
                            if (iMax != i28) {
                                i25++;
                                i28 = iMax;
                            }
                            widgetRun2.f695e.d(i28);
                        }
                    } else {
                        zG1 = zG1;
                        i22 = i22;
                        f4 = f4;
                    }
                    i24++;
                    i23 = i26;
                    i4 = i27;
                    i22 = i22;
                    f4 = f4;
                    zG1 = zG1;
                    i3 = i3;
                }
                z = zG1;
                i6 = i3;
                i7 = i22;
                int i30 = i4;
                if (i25 > 0) {
                    i5 -= i25;
                    int i31 = 0;
                    for (int i32 = 0; i32 < size; i32++) {
                        WidgetRun widgetRun3 = this.k.get(i32);
                        if (widgetRun3.b.Q() != 8) {
                            if (i32 > 0 && i32 >= i14) {
                                i31 += widgetRun3.f698h.f690f;
                            }
                            i31 += widgetRun3.f695e.f691g;
                            if (i32 < i15 && i32 < i) {
                                i31 += -widgetRun3.i.f690f;
                            }
                        }
                    }
                    i4 = i31;
                } else {
                    i4 = i30;
                }
                i8 = 2;
                if (this.l == 2 && i25 == 0) {
                    this.l = 0;
                }
            } else {
                z = zG1;
                i6 = i3;
                i7 = i22;
                i8 = 2;
            }
            if (i4 > i13) {
                this.l = i8;
            }
            if (i6 > 0 && i5 == 0 && i14 == i) {
                this.l = i8;
            }
            int i33 = this.l;
            if (i33 == 1) {
                int i34 = i6;
                int i35 = i34 > 1 ? (i13 - i4) / (i34 - 1) : i34 == 1 ? (i13 - i4) / 2 : 0;
                if (i5 > 0) {
                    i35 = 0;
                }
                int i36 = i7;
                for (int i37 = 0; i37 < size; i37++) {
                    WidgetRun widgetRun4 = this.k.get(z ? size - (i37 + 1) : i37);
                    if (widgetRun4.b.Q() == 8) {
                        widgetRun4.f698h.d(i36);
                        widgetRun4.i.d(i36);
                    } else {
                        if (i37 > 0) {
                            i36 = z ? i36 - i35 : i36 + i35;
                        }
                        if (i37 > 0 && i37 >= i14) {
                            i36 = z ? i36 - widgetRun4.f698h.f690f : i36 + widgetRun4.f698h.f690f;
                        }
                        if (z) {
                            widgetRun4.i.d(i36);
                        } else {
                            widgetRun4.f698h.d(i36);
                        }
                        f fVar3 = widgetRun4.f695e;
                        int i38 = fVar3.f691g;
                        if (widgetRun4.f694d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.f693a == 1) {
                            i38 = fVar3.m;
                        }
                        i36 = z ? i36 - i38 : i36 + i38;
                        if (z) {
                            widgetRun4.f698h.d(i36);
                        } else {
                            widgetRun4.i.d(i36);
                        }
                        widgetRun4.f697g = true;
                        if (i37 < i15 && i37 < i) {
                            i36 = z ? i36 - (-widgetRun4.i.f690f) : i36 + (-widgetRun4.i.f690f);
                        }
                    }
                }
                return;
            }
            int i39 = i6;
            if (i33 == 0) {
                int i40 = (i13 - i4) / (i39 + 1);
                if (i5 > 0) {
                    i40 = 0;
                }
                int i41 = i7;
                for (int i42 = 0; i42 < size; i42++) {
                    WidgetRun widgetRun5 = this.k.get(z ? size - (i42 + 1) : i42);
                    if (widgetRun5.b.Q() == 8) {
                        widgetRun5.f698h.d(i41);
                        widgetRun5.i.d(i41);
                    } else {
                        int i43 = z ? i41 - i40 : i41 + i40;
                        if (i42 > 0 && i42 >= i14) {
                            i43 = z ? i43 - widgetRun5.f698h.f690f : i43 + widgetRun5.f698h.f690f;
                        }
                        if (z) {
                            widgetRun5.i.d(i43);
                        } else {
                            widgetRun5.f698h.d(i43);
                        }
                        f fVar4 = widgetRun5.f695e;
                        int iMin = fVar4.f691g;
                        if (widgetRun5.f694d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.f693a == 1) {
                            iMin = Math.min(iMin, fVar4.m);
                        }
                        i41 = z ? i43 - iMin : i43 + iMin;
                        if (z) {
                            widgetRun5.f698h.d(i41);
                        } else {
                            widgetRun5.i.d(i41);
                        }
                        if (i42 < i15 && i42 < i) {
                            i41 = z ? i41 - (-widgetRun5.i.f690f) : i41 + (-widgetRun5.i.f690f);
                        }
                    }
                }
                return;
            }
            if (i33 == 2) {
                float fW = this.f696f == 0 ? this.b.w() : this.b.M();
                if (z) {
                    fW = 1.0f - fW;
                }
                int i44 = (int) (((i13 - i4) * fW) + 0.5f);
                if (i44 < 0 || i5 > 0) {
                    i44 = 0;
                }
                int i45 = z ? i7 - i44 : i7 + i44;
                for (int i46 = 0; i46 < size; i46++) {
                    WidgetRun widgetRun6 = this.k.get(z ? size - (i46 + 1) : i46);
                    if (widgetRun6.b.Q() == 8) {
                        widgetRun6.f698h.d(i45);
                        widgetRun6.i.d(i45);
                    } else {
                        if (i46 > 0 && i46 >= i14) {
                            i45 = z ? i45 - widgetRun6.f698h.f690f : i45 + widgetRun6.f698h.f690f;
                        }
                        if (z) {
                            widgetRun6.i.d(i45);
                        } else {
                            widgetRun6.f698h.d(i45);
                        }
                        f fVar5 = widgetRun6.f695e;
                        int i47 = fVar5.f691g;
                        if (widgetRun6.f694d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.f693a == 1) {
                            i47 = fVar5.m;
                        }
                        i45 = z ? i45 - i47 : i45 + i47;
                        if (z) {
                            widgetRun6.f698h.d(i45);
                        } else {
                            widgetRun6.i.d(i45);
                        }
                        if (i46 < i15 && i46 < i) {
                            i45 = z ? i45 - (-widgetRun6.i.f690f) : i45 + (-widgetRun6.i.f690f);
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void d() {
        Iterator<WidgetRun> it = this.k.iterator();
        while (it.hasNext()) {
            it.next().d();
        }
        int size = this.k.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.k.get(0).b;
        ConstraintWidget constraintWidget2 = this.k.get(size - 1).b;
        if (this.f696f == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.K;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.M;
            DependencyNode dependencyNodeI = i(constraintAnchor, 0);
            int iE = constraintAnchor.e();
            ConstraintWidget constraintWidgetR = r();
            if (constraintWidgetR != null) {
                iE = constraintWidgetR.K.e();
            }
            if (dependencyNodeI != null) {
                b(this.f698h, dependencyNodeI, iE);
            }
            DependencyNode dependencyNodeI2 = i(constraintAnchor2, 0);
            int iE2 = constraintAnchor2.e();
            ConstraintWidget constraintWidgetS = s();
            if (constraintWidgetS != null) {
                iE2 = constraintWidgetS.M.e();
            }
            if (dependencyNodeI2 != null) {
                b(this.i, dependencyNodeI2, -iE2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.L;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.N;
            DependencyNode dependencyNodeI3 = i(constraintAnchor3, 1);
            int iE3 = constraintAnchor3.e();
            ConstraintWidget constraintWidgetR2 = r();
            if (constraintWidgetR2 != null) {
                iE3 = constraintWidgetR2.L.e();
            }
            if (dependencyNodeI3 != null) {
                b(this.f698h, dependencyNodeI3, iE3);
            }
            DependencyNode dependencyNodeI4 = i(constraintAnchor4, 1);
            int iE4 = constraintAnchor4.e();
            ConstraintWidget constraintWidgetS2 = s();
            if (constraintWidgetS2 != null) {
                iE4 = constraintWidgetS2.N.e();
            }
            if (dependencyNodeI4 != null) {
                b(this.i, dependencyNodeI4, -iE4);
            }
        }
        this.f698h.f687a = this;
        this.i.f687a = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void e() {
        for (int i = 0; i < this.k.size(); i++) {
            this.k.get(i).e();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void f() {
        this.c = null;
        Iterator<WidgetRun> it = this.k.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public long j() {
        int size = this.k.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            WidgetRun widgetRun = this.k.get(i);
            j = j + ((long) widgetRun.f698h.f690f) + widgetRun.j() + ((long) widgetRun.i.f690f);
        }
        return j;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean m() {
        int size = this.k.size();
        for (int i = 0; i < size; i++) {
            if (!this.k.get(i).m()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.f696f == 0 ? "horizontal : " : "vertical : ");
        for (WidgetRun widgetRun : this.k) {
            sb.append("<");
            sb.append(widgetRun);
            sb.append("> ");
        }
        return sb.toString();
    }
}
