package com.loc;

import android.os.SystemClock;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class cn extends cm {
    public cn() {
        super(2048);
    }

    private int a(long j, List<dx> list) {
        b(list);
        int size = list.size();
        if (size <= 0) {
            return -1;
        }
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            dx dxVar = list.get(i);
            int iA = this.f12684a.a(dxVar.b);
            long j2 = dxVar.f12742a;
            iArr[i] = dj.a(this.f12684a, j2 == j && j2 != -1, j2, (short) dxVar.c, iA, dxVar.f12746g, (short) dxVar.f12743d);
        }
        return di.a(this.f12684a, di.a(this.f12684a, iArr));
    }

    private int a(cq.a aVar) {
        int iA;
        int i;
        co coVar;
        int i2;
        int i3;
        int i4;
        byte b;
        int iA2;
        a(aVar.f12691f);
        int size = aVar.f12691f.size();
        int[] iArr = new int[size];
        for (int i5 = 0; i5 < size; i5++) {
            dq dqVar = aVar.f12691f.get(i5);
            if (dqVar instanceof ds) {
                ds dsVar = (ds) dqVar;
                iA2 = !dsVar.i ? dd.a(this.f12684a, dsVar.j, dsVar.k, dsVar.c, dsVar.l) : dd.a(this.f12684a, dsVar.b(), dsVar.c(), dsVar.j, dsVar.k, dsVar.c, dsVar.m, dsVar.n, dsVar.f12731d, dsVar.l);
                i4 = -1;
                b = 1;
            } else if (dqVar instanceof dt) {
                dt dtVar = (dt) dqVar;
                iA2 = de.a(this.f12684a, dtVar.b(), dtVar.c(), dtVar.j, dtVar.k, dtVar.l, dtVar.c, dtVar.m, dtVar.f12731d);
                i4 = -1;
                b = 3;
            } else if (dqVar instanceof dr) {
                dr drVar = (dr) dqVar;
                boolean z = drVar.i;
                co coVar2 = this.f12684a;
                int i6 = drVar.j;
                int i7 = drVar.k;
                int i8 = drVar.l;
                int i9 = drVar.m;
                int i10 = drVar.n;
                int i11 = drVar.c;
                iA2 = !z ? cx.a(coVar2, i6, i7, i8, i9, i10, i11) : cx.a(coVar2, i6, i7, i8, i9, i10, i11, drVar.f12731d);
                i4 = -1;
                b = 2;
            } else if (dqVar instanceof du) {
                du duVar = (du) dqVar;
                iA2 = dh.a(this.f12684a, duVar.b(), duVar.c(), duVar.j, duVar.k, duVar.l, duVar.c, duVar.m, duVar.f12731d);
                i4 = -1;
                b = 4;
            } else {
                i4 = -1;
                b = 0;
                iA2 = -1;
            }
            if (iA2 == i4) {
                return i4;
            }
            iArr[i5] = da.a(this.f12684a, dqVar.f12735h ? (byte) 1 : (byte) 0, dqVar.i ? (byte) 1 : (byte) 0, (short) dqVar.f12734g, b, iA2);
        }
        int iA3 = this.f12684a.a(aVar.b);
        int iA4 = cy.a(this.f12684a, iArr);
        int size2 = aVar.f12692g.size();
        int[] iArr2 = new int[size2];
        for (int i12 = 0; i12 < size2; i12++) {
            dq dqVar2 = aVar.f12692g.get(i12);
            long jElapsedRealtime = (SystemClock.elapsedRealtime() - dqVar2.f12732e) / 1000;
            if (jElapsedRealtime > 32767 || jElapsedRealtime < 0) {
                jElapsedRealtime = 32767;
            }
            if (dqVar2 instanceof ds) {
                ds dsVar2 = (ds) dqVar2;
                coVar = this.f12684a;
                i2 = dsVar2.j;
                i3 = dsVar2.k;
            } else if (dqVar2 instanceof dt) {
                dt dtVar2 = (dt) dqVar2;
                coVar = this.f12684a;
                i2 = dtVar2.j;
                i3 = dtVar2.k;
            } else {
                if (dqVar2 instanceof dr) {
                    dr drVar2 = (dr) dqVar2;
                    iA = df.a(this.f12684a, drVar2.j, drVar2.k, drVar2.l, (short) jElapsedRealtime);
                    i = 2;
                } else if (dqVar2 instanceof du) {
                    du duVar2 = (du) dqVar2;
                    coVar = this.f12684a;
                    i2 = duVar2.j;
                    i3 = duVar2.k;
                } else {
                    iA = 0;
                    i = 0;
                }
                iArr2[i12] = cz.a(this.f12684a, (byte) i, iA);
            }
            iA = dg.a(coVar, i2, i3, (short) jElapsedRealtime);
            i = 1;
            iArr2[i12] = cz.a(this.f12684a, (byte) i, iA);
        }
        return cy.a(this.f12684a, iA3, aVar.f12688a, iA4, cy.b(this.f12684a, iArr2));
    }

    private int a(dw dwVar) {
        return dc.a(this.f12684a, dwVar.c, dwVar.k, (int) (dwVar.f12738e * 1000000.0d), (int) (dwVar.f12737d * 1000000.0d), (int) dwVar.f12739f, (int) dwVar.i, (int) dwVar.f12740g, (short) dwVar.f12741h, dwVar.l);
    }

    private static void a(List<dq> list) {
        int i;
        int i2;
        if (list == null || list.size() == 0) {
            return;
        }
        for (dq dqVar : list) {
            if (dqVar instanceof ds) {
                ds dsVar = (ds) dqVar;
                i = dsVar.j;
                i2 = dsVar.k;
            } else if (dqVar instanceof dt) {
                dt dtVar = (dt) dqVar;
                i = dtVar.j;
                i2 = dtVar.k;
            } else if (dqVar instanceof du) {
                du duVar = (du) dqVar;
                i = duVar.j;
                i2 = duVar.k;
            } else if (dqVar instanceof dr) {
                dr drVar = (dr) dqVar;
                i = drVar.k;
                i2 = drVar.l;
            }
            dqVar.f12734g = dm.a(dm.a(i, i2));
        }
    }

    private static void b(List<dx> list) {
        for (dx dxVar : list) {
            dxVar.f12746g = dm.b(dxVar.f12742a);
        }
    }

    public final byte[] a(dw dwVar, cq.a aVar, long j, List<dx> list) {
        List<dq> list2;
        super.a();
        try {
            int iA = a(dwVar);
            int iA2 = -1;
            int iA3 = (aVar == null || (list2 = aVar.f12691f) == null || list2.size() <= 0) ? -1 : a(aVar);
            if (list != null && list.size() > 0) {
                iA2 = a(j, list);
            }
            cv.a(this.f12684a);
            cv.a(this.f12684a, iA);
            if (iA3 > 0) {
                cv.c(this.f12684a, iA3);
            }
            if (iA2 > 0) {
                cv.b(this.f12684a, iA2);
            }
            this.f12684a.c(cv.b(this.f12684a));
            return this.f12684a.c();
        } catch (Throwable th) {
            ea.a(th);
            return null;
        }
    }
}
