package com.loc;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class dm {

    public static class a implements dk {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f12727a;
        private int b;
        private int c;

        a(int i, int i2, int i3) {
            this.f12727a = i;
            this.b = i2;
            this.c = i3;
        }

        @Override // com.loc.dk
        public final long a() {
            return dm.a(this.f12727a, this.b);
        }

        @Override // com.loc.dk
        public final int b() {
            return this.c;
        }
    }

    public static class b implements dk {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f12728a;
        private int b;

        b(long j, int i) {
            this.f12728a = j;
            this.b = i;
        }

        @Override // com.loc.dk
        public final long a() {
            return this.f12728a;
        }

        @Override // com.loc.dk
        public final int b() {
            return this.b;
        }
    }

    public static long a(int i, int i2) {
        return (((long) i2) & 4294967295L) | ((((long) i) & 4294967295L) << 32);
    }

    public static synchronized short a(long j) {
        return dl.a().a(j);
    }

    public static synchronized void a(List<dq> list) {
        a aVar;
        if (list != null) {
            if (!list.isEmpty()) {
                ArrayList arrayList = new ArrayList(list.size());
                for (dq dqVar : list) {
                    if (dqVar instanceof ds) {
                        ds dsVar = (ds) dqVar;
                        aVar = new a(dsVar.j, dsVar.k, dsVar.c);
                    } else if (dqVar instanceof dt) {
                        dt dtVar = (dt) dqVar;
                        aVar = new a(dtVar.j, dtVar.k, dtVar.c);
                    } else if (dqVar instanceof du) {
                        du duVar = (du) dqVar;
                        aVar = new a(duVar.j, duVar.k, duVar.c);
                    } else if (dqVar instanceof dr) {
                        dr drVar = (dr) dqVar;
                        aVar = new a(drVar.k, drVar.l, drVar.c);
                    }
                    arrayList.add(aVar);
                }
                dl.a().a(arrayList);
            }
        }
    }

    public static synchronized short b(long j) {
        return dl.a().b(j);
    }

    public static synchronized void b(List<dx> list) {
        if (list != null) {
            if (!list.isEmpty()) {
                ArrayList arrayList = new ArrayList(list.size());
                for (dx dxVar : list) {
                    arrayList.add(new b(dxVar.f12742a, dxVar.c));
                }
                dl.a().b(arrayList);
            }
        }
    }
}
