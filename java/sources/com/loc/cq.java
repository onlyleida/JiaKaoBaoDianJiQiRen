package com.loc;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class cq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private dq f12685a;
    private dq b;
    private dw c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f12686d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<dq> f12687e = new ArrayList(3);

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte f12688a;
        public String b;
        public dq c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public dq f12689d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public dq f12690e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public List<dq> f12691f = new ArrayList();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public List<dq> f12692g = new ArrayList();

        public static boolean a(dq dqVar, dq dqVar2) {
            if (dqVar == null || dqVar2 == null) {
                return (dqVar == null) == (dqVar2 == null);
            }
            if ((dqVar instanceof ds) && (dqVar2 instanceof ds)) {
                ds dsVar = (ds) dqVar;
                ds dsVar2 = (ds) dqVar2;
                return dsVar.j == dsVar2.j && dsVar.k == dsVar2.k;
            }
            if ((dqVar instanceof dr) && (dqVar2 instanceof dr)) {
                dr drVar = (dr) dqVar;
                dr drVar2 = (dr) dqVar2;
                return drVar.l == drVar2.l && drVar.k == drVar2.k && drVar.j == drVar2.j;
            }
            if ((dqVar instanceof dt) && (dqVar2 instanceof dt)) {
                dt dtVar = (dt) dqVar;
                dt dtVar2 = (dt) dqVar2;
                return dtVar.j == dtVar2.j && dtVar.k == dtVar2.k;
            }
            if ((dqVar instanceof du) && (dqVar2 instanceof du)) {
                du duVar = (du) dqVar;
                du duVar2 = (du) dqVar2;
                if (duVar.j == duVar2.j && duVar.k == duVar2.k) {
                    return true;
                }
            }
            return false;
        }

        public final void a() {
            this.f12688a = (byte) 0;
            this.b = "";
            this.c = null;
            this.f12689d = null;
            this.f12690e = null;
            this.f12691f.clear();
            this.f12692g.clear();
        }

        public final void a(byte b, String str, List<dq> list) {
            a();
            this.f12688a = b;
            this.b = str;
            if (list != null) {
                this.f12691f.addAll(list);
                for (dq dqVar : this.f12691f) {
                    boolean z = dqVar.i;
                    if (!z && dqVar.f12735h) {
                        this.f12689d = dqVar;
                    } else if (z && dqVar.f12735h) {
                        this.f12690e = dqVar;
                    }
                }
            }
            dq dqVar2 = this.f12689d;
            if (dqVar2 == null) {
                dqVar2 = this.f12690e;
            }
            this.c = dqVar2;
        }

        public final String toString() {
            return "CellInfo{radio=" + ((int) this.f12688a) + ", operator='" + this.b + "', mainCell=" + this.c + ", mainOldInterCell=" + this.f12689d + ", mainNewInterCell=" + this.f12690e + ", cells=" + this.f12691f + ", historyMainCellList=" + this.f12692g + '}';
        }
    }

    private void a(a aVar) {
        synchronized (this.f12687e) {
            for (dq dqVar : aVar.f12691f) {
                if (dqVar != null && dqVar.f12735h) {
                    dq dqVarClone = dqVar.clone();
                    dqVarClone.f12732e = SystemClock.elapsedRealtime();
                    a(dqVarClone);
                }
            }
            this.f12686d.f12692g.clear();
            this.f12686d.f12692g.addAll(this.f12687e);
        }
    }

    private void a(dq dqVar) {
        if (dqVar == null) {
            return;
        }
        int size = this.f12687e.size();
        if (size != 0) {
            long jMin = Long.MAX_VALUE;
            int i = 0;
            int i2 = -1;
            int i3 = -1;
            while (true) {
                if (i >= size) {
                    i2 = i3;
                    break;
                }
                dq dqVar2 = this.f12687e.get(i);
                if (dqVar.equals(dqVar2)) {
                    int i4 = dqVar.c;
                    if (i4 == dqVar2.c) {
                        break;
                    }
                    dqVar2.f12732e = i4;
                    dqVar2.c = i4;
                    break;
                }
                jMin = Math.min(jMin, dqVar2.f12732e);
                if (jMin == dqVar2.f12732e) {
                    i3 = i;
                }
                i++;
            }
            if (i2 < 0) {
                return;
            }
            if (size >= 3) {
                if (dqVar.f12732e <= jMin || i2 >= size) {
                    return;
                }
                this.f12687e.remove(i2);
                this.f12687e.add(dqVar);
                return;
            }
        }
        this.f12687e.add(dqVar);
    }

    private boolean a(dw dwVar) {
        float f2;
        float f3 = dwVar.f12740g;
        if (f3 > 10.0f) {
            f2 = 2000.0f;
        } else {
            f2 = f3 > 2.0f ? 500.0f : 100.0f;
        }
        return dwVar.a(this.c) > ((double) f2);
    }

    final a a(dw dwVar, boolean z, byte b, String str, List<dq> list) {
        if (z) {
            this.f12686d.a();
            return null;
        }
        this.f12686d.a(b, str, list);
        if (this.f12686d.c == null) {
            return null;
        }
        if (!(this.c == null || a(dwVar) || !a.a(this.f12686d.f12689d, this.f12685a) || !a.a(this.f12686d.f12690e, this.b))) {
            return null;
        }
        a aVar = this.f12686d;
        this.f12685a = aVar.f12689d;
        this.b = aVar.f12690e;
        this.c = dwVar;
        dm.a(aVar.f12691f);
        a(this.f12686d);
        return this.f12686d;
    }
}
