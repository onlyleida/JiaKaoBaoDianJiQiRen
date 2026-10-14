package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class b {
    /* JADX WARN: Code duplicated, block: B:101:0x0178  */
    /* JADX WARN: Code duplicated, block: B:103:0x017b  */
    /* JADX WARN: Code duplicated, block: B:105:0x0181  */
    /* JADX WARN: Code duplicated, block: B:107:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:202:0x035d  */
    /* JADX WARN: Code duplicated, block: B:222:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:25:0x0048 A[PHI: r15 r16
      0x0048: PHI (r15v3 boolean) = (r15v1 boolean), (r15v32 boolean) binds: [B:24:0x0046, B:15:0x0035] A[DONT_GENERATE, DONT_INLINE]
      0x0048: PHI (r16v3 boolean) = (r16v1 boolean), (r16v7 boolean) binds: [B:24:0x0046, B:15:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:26:0x004a A[PHI: r15 r16
      0x004a: PHI (r15v30 boolean) = (r15v1 boolean), (r15v32 boolean) binds: [B:24:0x0046, B:15:0x0035] A[DONT_GENERATE, DONT_INLINE]
      0x004a: PHI (r16v5 boolean) = (r16v1 boolean), (r16v7 boolean) binds: [B:24:0x0046, B:15:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:325:0x03b6 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r39v0, types: [androidx.constraintlayout.core.d] */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29, types: [androidx.constraintlayout.core.SolverVariable] */
    /* JADX WARN: Type inference failed for: r5v33 */
    /* JADX WARN: Type inference failed for: r5v40 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r7v28 */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v30 */
    static void a(d dVar, androidx.constraintlayout.core.d dVar2, int i, int i2, c cVar) {
        boolean z;
        boolean z2;
        boolean z3;
        Object obj;
        int i3;
        int i4;
        ConstraintAnchor constraintAnchor;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        ConstraintAnchor constraintAnchor2;
        SolverVariable solverVariable3;
        ?? r5;
        SolverVariable solverVariable4;
        int size;
        ConstraintAnchor constraintAnchor3;
        int i5;
        int i6 = i;
        ConstraintWidget constraintWidget = cVar.f722a;
        ConstraintWidget constraintWidget2 = cVar.c;
        ConstraintWidget constraintWidget3 = cVar.b;
        ConstraintWidget constraintWidget4 = cVar.f723d;
        ConstraintWidget constraintWidget5 = cVar.f724e;
        float f2 = cVar.k;
        ConstraintWidget constraintWidget6 = cVar.f725f;
        ConstraintWidget constraintWidget7 = cVar.f726g;
        boolean z4 = dVar.V[i6] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i6 == 0) {
            int i7 = constraintWidget5.m0;
            z = i7 == 0;
            z2 = i7 == 1;
            if (i7 == 2) {
                z3 = true;
            } else {
                z3 = false;
            }
        } else {
            int i8 = constraintWidget5.n0;
            z = i8 == 0;
            z2 = i8 == 1;
            if (i8 == 2) {
                z3 = true;
            } else {
                z3 = false;
            }
        }
        ?? r7 = constraintWidget;
        boolean z5 = false;
        while (true) {
            obj = null;
            if (z5) {
                break;
            }
            ConstraintAnchor constraintAnchor4 = r7.S[i2];
            int i9 = z3 ? 1 : 4;
            int iE = constraintAnchor4.e();
            float f3 = f2;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = r7.V[i6];
            boolean z6 = z5;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            boolean z7 = dimensionBehaviour == dimensionBehaviour2 && r7.u[i6] == 0;
            ConstraintAnchor constraintAnchor5 = constraintAnchor4.f676f;
            if (constraintAnchor5 != null && r7 != constraintWidget) {
                iE += constraintAnchor5.e();
            }
            int i10 = iE;
            if (z3 && r7 != constraintWidget && r7 != constraintWidget3) {
                i9 = 8;
            }
            ConstraintAnchor constraintAnchor6 = constraintAnchor4.f676f;
            if (constraintAnchor6 != null) {
                if (r7 == constraintWidget3) {
                    dVar2.h(constraintAnchor4.i, constraintAnchor6.i, i10, 6);
                } else {
                    dVar2.h(constraintAnchor4.i, constraintAnchor6.i, i10, 8);
                }
                if (z7 && !z3) {
                    i9 = 5;
                }
                dVar2.e(constraintAnchor4.i, constraintAnchor4.f676f.i, i10, (r7 == constraintWidget3 && z3 && r7.c0(i6)) ? 5 : i9);
            } else {
                constraintWidget = constraintWidget;
            }
            if (z4) {
                if (r7.Q() == 8 || r7.V[i6] != dimensionBehaviour2) {
                    i5 = 0;
                } else {
                    ConstraintAnchor[] constraintAnchorArr = r7.S;
                    i5 = 0;
                    dVar2.h(constraintAnchorArr[i2 + 1].i, constraintAnchorArr[i2].i, 0, 5);
                }
                dVar2.h(r7.S[i2].i, dVar.S[i2].i, i5, 8);
            }
            ConstraintAnchor constraintAnchor7 = r7.S[i2 + 1].f676f;
            if (constraintAnchor7 != null) {
                ConstraintWidget constraintWidget8 = constraintAnchor7.f674d;
                ConstraintAnchor[] constraintAnchorArr2 = constraintWidget8.S;
                if (constraintAnchorArr2[i2].f676f != null && constraintAnchorArr2[i2].f676f.f674d == r7) {
                    obj = constraintWidget8;
                }
            }
            if (obj != null) {
                r7 = obj;
                z5 = z6;
            } else {
                z5 = true;
            }
            constraintWidget5 = constraintWidget5;
            f2 = f3;
            z = z;
            constraintWidget = constraintWidget;
            r7 = r7;
        }
        ConstraintWidget constraintWidget9 = constraintWidget5;
        float f4 = f2;
        ConstraintWidget constraintWidget10 = constraintWidget;
        boolean z8 = z;
        if (constraintWidget4 != null) {
            int i11 = i2 + 1;
            if (constraintWidget2.S[i11].f676f != null) {
                ConstraintAnchor constraintAnchor8 = constraintWidget4.S[i11];
                if ((constraintWidget4.V[i6] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget4.u[i6] == 0) && !z3) {
                    ConstraintAnchor constraintAnchor9 = constraintAnchor8.f676f;
                    if (constraintAnchor9.f674d == dVar) {
                        dVar2.e(constraintAnchor8.i, constraintAnchor9.i, -constraintAnchor8.e(), 5);
                    } else if (z3) {
                        constraintAnchor3 = constraintAnchor8.f676f;
                        if (constraintAnchor3.f674d == dVar) {
                            dVar2.e(constraintAnchor8.i, constraintAnchor3.i, -constraintAnchor8.e(), 4);
                        }
                    }
                } else if (z3) {
                    constraintAnchor3 = constraintAnchor8.f676f;
                    if (constraintAnchor3.f674d == dVar) {
                        dVar2.e(constraintAnchor8.i, constraintAnchor3.i, -constraintAnchor8.e(), 4);
                    }
                }
                dVar2.j(constraintAnchor8.i, constraintWidget2.S[i11].f676f.i, -constraintAnchor8.e(), 6);
            }
        }
        if (z4) {
            int i12 = i2 + 1;
            SolverVariable solverVariable5 = dVar.S[i12].i;
            ConstraintAnchor[] constraintAnchorArr3 = constraintWidget2.S;
            dVar2.h(solverVariable5, constraintAnchorArr3[i12].i, constraintAnchorArr3[i12].e(), 8);
        }
        ArrayList<ConstraintWidget> arrayList = cVar.f727h;
        if (arrayList != null && (size = arrayList.size()) > 1) {
            float f5 = (!cVar.q || cVar.s) ? f4 : cVar.j;
            float f6 = BitmapDescriptorFactory.HUE_RED;
            ConstraintWidget constraintWidget11 = null;
            int i13 = 0;
            float f7 = BitmapDescriptorFactory.HUE_RED;
            while (i13 < size) {
                ConstraintWidget constraintWidget12 = arrayList.get(i13);
                float f8 = constraintWidget12.o0[i6];
                if (f8 < f6) {
                    if (cVar.s) {
                        ConstraintAnchor[] constraintAnchorArr4 = constraintWidget12.S;
                        dVar2.e(constraintAnchorArr4[i2 + 1].i, constraintAnchorArr4[i2].i, 0, 4);
                    } else {
                        f8 = 1.0f;
                        f6 = BitmapDescriptorFactory.HUE_RED;
                    }
                    arrayList = arrayList;
                    size = size;
                    i13++;
                    size = size;
                    arrayList = arrayList;
                    f6 = BitmapDescriptorFactory.HUE_RED;
                }
                if (f8 == f6) {
                    ConstraintAnchor[] constraintAnchorArr5 = constraintWidget12.S;
                    dVar2.e(constraintAnchorArr5[i2 + 1].i, constraintAnchorArr5[i2].i, 0, 8);
                    arrayList = arrayList;
                    size = size;
                } else {
                    if (constraintWidget11 != null) {
                        ConstraintAnchor[] constraintAnchorArr6 = constraintWidget11.S;
                        SolverVariable solverVariable6 = constraintAnchorArr6[i2].i;
                        int i14 = i2 + 1;
                        SolverVariable solverVariable7 = constraintAnchorArr6[i14].i;
                        ConstraintAnchor[] constraintAnchorArr7 = constraintWidget12.S;
                        SolverVariable solverVariable8 = constraintAnchorArr7[i2].i;
                        SolverVariable solverVariable9 = constraintAnchorArr7[i14].i;
                        androidx.constraintlayout.core.b bVarR = dVar2.r();
                        bVarR.l(f7, f5, f8, solverVariable6, solverVariable7, solverVariable8, solverVariable9);
                        dVar2.d(bVarR);
                    }
                    f7 = f8;
                    constraintWidget11 = constraintWidget12;
                }
                i13++;
                size = size;
                arrayList = arrayList;
                f6 = BitmapDescriptorFactory.HUE_RED;
            }
        }
        if (constraintWidget3 != null && (constraintWidget3 == constraintWidget4 || z3)) {
            ConstraintAnchor constraintAnchor10 = constraintWidget10.S[i2];
            int i15 = i2 + 1;
            ConstraintAnchor constraintAnchor11 = constraintWidget2.S[i15];
            ConstraintAnchor constraintAnchor12 = constraintAnchor10.f676f;
            SolverVariable solverVariable10 = constraintAnchor12 != null ? constraintAnchor12.i : null;
            ConstraintAnchor constraintAnchor13 = constraintAnchor11.f676f;
            SolverVariable solverVariable11 = constraintAnchor13 != null ? constraintAnchor13.i : null;
            ConstraintAnchor constraintAnchor14 = constraintWidget3.S[i2];
            if (constraintWidget4 != null) {
                constraintAnchor11 = constraintWidget4.S[i15];
            }
            if (solverVariable10 != null && solverVariable11 != null) {
                dVar2.c(constraintAnchor14.i, solverVariable10, constraintAnchor14.e(), i6 == 0 ? constraintWidget9.g0 : constraintWidget9.h0, solverVariable11, constraintAnchor11.i, constraintAnchor11.e(), 7);
            }
        } else if (!z8 || constraintWidget3 == null) {
            int i16 = 8;
            if (z2 && constraintWidget3 != null) {
                int i17 = cVar.j;
                boolean z9 = i17 > 0 && cVar.i == i17;
                ConstraintWidget constraintWidget13 = constraintWidget3;
                ConstraintWidget constraintWidget14 = constraintWidget13;
                while (constraintWidget14 != null) {
                    ConstraintWidget constraintWidget15 = constraintWidget14.q0[i6];
                    while (constraintWidget15 != null && constraintWidget15.Q() == i16) {
                        constraintWidget15 = constraintWidget15.q0[i6];
                    }
                    if (constraintWidget14 == constraintWidget3 || constraintWidget14 == constraintWidget4 || constraintWidget15 == null) {
                        constraintWidget13 = constraintWidget13;
                        i4 = 8;
                    } else {
                        ConstraintWidget constraintWidget16 = constraintWidget15 == constraintWidget4 ? null : constraintWidget15;
                        ConstraintAnchor constraintAnchor15 = constraintWidget14.S[i2];
                        SolverVariable solverVariable12 = constraintAnchor15.i;
                        ConstraintAnchor constraintAnchor16 = constraintAnchor15.f676f;
                        if (constraintAnchor16 != null) {
                            SolverVariable solverVariable13 = constraintAnchor16.i;
                        }
                        int i18 = i2 + 1;
                        SolverVariable solverVariable14 = constraintWidget13.S[i18].i;
                        int iE2 = constraintAnchor15.e();
                        int iE3 = constraintWidget14.S[i18].e();
                        if (constraintWidget16 != null) {
                            constraintAnchor = constraintWidget16.S[i2];
                            SolverVariable solverVariable15 = constraintAnchor.i;
                            ConstraintAnchor constraintAnchor17 = constraintAnchor.f676f;
                            solverVariable2 = constraintAnchor17 != null ? constraintAnchor17.i : null;
                            solverVariable = solverVariable15;
                        } else {
                            constraintAnchor = constraintWidget4.S[i2];
                            solverVariable = constraintAnchor != null ? constraintAnchor.i : null;
                            solverVariable2 = constraintWidget14.S[i18].i;
                        }
                        if (constraintAnchor != null) {
                            iE3 += constraintAnchor.e();
                        }
                        int i19 = iE3;
                        int iE4 = constraintWidget13.S[i18].e() + iE2;
                        int i20 = z9 ? 8 : 4;
                        if (solverVariable12 == null || solverVariable14 == null || solverVariable == null || solverVariable2 == null) {
                            i4 = 8;
                        } else {
                            i4 = 8;
                            dVar2.c(solverVariable12, solverVariable14, iE4, 0.5f, solverVariable, solverVariable2, i19, i20);
                        }
                        constraintWidget15 = constraintWidget16;
                    }
                    constraintWidget13 = constraintWidget14.Q() != i4 ? constraintWidget14 : constraintWidget13;
                    i6 = i;
                    constraintWidget14 = constraintWidget15;
                    i16 = 8;
                }
                ConstraintAnchor constraintAnchor18 = constraintWidget3.S[i2];
                ConstraintAnchor constraintAnchor19 = constraintWidget10.S[i2].f676f;
                int i21 = i2 + 1;
                ConstraintAnchor constraintAnchor20 = constraintWidget4.S[i21];
                ConstraintAnchor constraintAnchor21 = constraintWidget2.S[i21].f676f;
                if (constraintAnchor19 == null) {
                    i3 = 5;
                } else if (constraintWidget3 != constraintWidget4) {
                    i3 = 5;
                    dVar2.e(constraintAnchor18.i, constraintAnchor19.i, constraintAnchor18.e(), 5);
                } else {
                    i3 = 5;
                    if (constraintAnchor21 != null) {
                        dVar2.c(constraintAnchor18.i, constraintAnchor19.i, constraintAnchor18.e(), 0.5f, constraintAnchor20.i, constraintAnchor21.i, constraintAnchor20.e(), 5);
                    }
                }
                if (constraintAnchor21 != null && constraintWidget3 != constraintWidget4) {
                    dVar2.e(constraintAnchor20.i, constraintAnchor21.i, -constraintAnchor20.e(), i3);
                }
            }
        } else {
            int i22 = cVar.j;
            boolean z10 = i22 > 0 && cVar.i == i22;
            ConstraintWidget constraintWidget17 = constraintWidget3;
            ConstraintWidget constraintWidget18 = constraintWidget17;
            while (constraintWidget18 != null) {
                ConstraintWidget constraintWidget19 = constraintWidget18.q0[i6];
                while (constraintWidget19 != null && constraintWidget19.Q() == 8) {
                    constraintWidget19 = constraintWidget19.q0[i6];
                }
                if (constraintWidget19 != null || constraintWidget18 == constraintWidget4) {
                    ConstraintAnchor constraintAnchor22 = constraintWidget18.S[i2];
                    SolverVariable solverVariable16 = constraintAnchor22.i;
                    ConstraintAnchor constraintAnchor23 = constraintAnchor22.f676f;
                    SolverVariable solverVariable17 = constraintAnchor23 != null ? constraintAnchor23.i : null;
                    if (constraintWidget17 != constraintWidget18) {
                        solverVariable17 = constraintWidget17.S[i2 + 1].i;
                    } else if (constraintWidget18 == constraintWidget3) {
                        ConstraintAnchor[] constraintAnchorArr8 = constraintWidget10.S;
                        solverVariable17 = constraintAnchorArr8[i2].f676f != null ? constraintAnchorArr8[i2].f676f.i : null;
                    }
                    int iE5 = constraintAnchor22.e();
                    int i23 = i2 + 1;
                    int iE6 = constraintWidget18.S[i23].e();
                    if (constraintWidget19 != null) {
                        constraintAnchor2 = constraintWidget19.S[i2];
                        solverVariable3 = constraintAnchor2.i;
                    } else {
                        constraintAnchor2 = constraintWidget2.S[i23].f676f;
                        if (constraintAnchor2 != null) {
                            solverVariable3 = constraintAnchor2.i;
                        } else {
                            solverVariable3 = null;
                        }
                        SolverVariable solverVariable18 = constraintWidget18.S[i23].i;
                        if (constraintAnchor2 != null) {
                            iE6 += constraintAnchor2.e();
                        }
                        int iE7 = iE5 + constraintWidget17.S[i23].e();
                        if (solverVariable16 == null && solverVariable17 != null && solverVariable3 != null && solverVariable18 != null) {
                            if (constraintWidget18 == constraintWidget3) {
                                iE7 = constraintWidget3.S[i2].e();
                            }
                            constraintWidget19 = constraintWidget19;
                            dVar2.c(solverVariable16, solverVariable17, iE7, 0.5f, solverVariable3, solverVariable18, constraintWidget18 == constraintWidget4 ? constraintWidget4.S[i23].e() : iE6, z10 ? 8 : 5);
                        }
                        if (constraintWidget18.Q() != 8) {
                            constraintWidget18 = constraintWidget17;
                        }
                        constraintWidget17 = constraintWidget18;
                        constraintWidget18 = constraintWidget19;
                    }
                    SolverVariable solverVariable19 = constraintWidget18.S[i23].i;
                    if (constraintAnchor2 != null) {
                        iE6 += constraintAnchor2.e();
                    }
                    int iE8 = iE5 + constraintWidget17.S[i23].e();
                    if (solverVariable16 == null) {
                    }
                }
                if (constraintWidget18.Q() != 8) {
                    constraintWidget18 = constraintWidget17;
                }
                constraintWidget17 = constraintWidget18;
                constraintWidget18 = constraintWidget19;
            }
        }
        if ((!z8 && !z2) || constraintWidget3 == null || constraintWidget3 == constraintWidget4) {
            return;
        }
        ConstraintAnchor[] constraintAnchorArr9 = constraintWidget3.S;
        ConstraintAnchor constraintAnchor24 = constraintAnchorArr9[i2];
        if (constraintWidget4 == null) {
            constraintWidget4 = constraintWidget3;
        }
        int i24 = i2 + 1;
        ConstraintAnchor constraintAnchor25 = constraintWidget4.S[i24];
        ConstraintAnchor constraintAnchor26 = constraintAnchor24.f676f;
        SolverVariable solverVariable20 = constraintAnchor26 != null ? constraintAnchor26.i : null;
        ConstraintAnchor constraintAnchor27 = constraintAnchor25.f676f;
        if (constraintAnchor27 != null) {
            solverVariable4 = constraintAnchor27.i;
        } else {
            r5 = 0;
        }
        if (constraintWidget2 != constraintWidget4) {
            ConstraintAnchor constraintAnchor28 = constraintWidget2.S[i24].f676f;
            if (constraintAnchor28 != null) {
                r5 = solverVariable4;
                obj = constraintAnchor28.i;
            }
            r5 = solverVariable4;
            r5 = obj;
        }
        if (constraintWidget3 == constraintWidget4) {
            constraintAnchor24 = constraintAnchorArr9[i2];
            constraintAnchor25 = constraintAnchorArr9[i24];
        }
        if (solverVariable20 == null || r5 == 0) {
            return;
        }
        dVar2.c(constraintAnchor24.i, solverVariable20, constraintAnchor24.e(), 0.5f, r5, constraintAnchor25.i, constraintWidget4.S[i24].e(), 5);
    }

    public static void b(d dVar, androidx.constraintlayout.core.d dVar2, ArrayList<ConstraintWidget> arrayList, int i) {
        c[] cVarArr;
        int i2;
        int i3;
        if (i == 0) {
            i2 = dVar.E0;
            cVarArr = dVar.H0;
            i3 = 0;
        } else {
            int i4 = dVar.F0;
            cVarArr = dVar.G0;
            i2 = i4;
            i3 = 2;
        }
        for (int i5 = 0; i5 < i2; i5++) {
            c cVar = cVarArr[i5];
            cVar.a();
            if (arrayList == null || (arrayList != null && arrayList.contains(cVar.f722a))) {
                a(dVar, dVar2, i, i3, cVar);
            }
        }
    }
}
