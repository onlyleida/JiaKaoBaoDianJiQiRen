package androidx.constraintlayout.core.widgets.analyzer;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f715d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f716a;
    WidgetRun b;
    ArrayList<WidgetRun> c = new ArrayList<>();

    public l(WidgetRun widgetRun, int i) {
        this.b = null;
        f715d++;
        this.b = widgetRun;
    }

    private long c(DependencyNode dependencyNode, long j) {
        WidgetRun widgetRun = dependencyNode.f688d;
        if (widgetRun instanceof j) {
            return j;
        }
        int size = dependencyNode.k.size();
        long jMin = j;
        for (int i = 0; i < size; i++) {
            d dVar = dependencyNode.k.get(i);
            if (dVar instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dVar;
                if (dependencyNode2.f688d != widgetRun) {
                    jMin = Math.min(jMin, c(dependencyNode2, ((long) dependencyNode2.f690f) + j));
                }
            }
        }
        if (dependencyNode != widgetRun.i) {
            return jMin;
        }
        long j2 = j - widgetRun.j();
        return Math.min(Math.min(jMin, c(widgetRun.f698h, j2)), j2 - ((long) widgetRun.f698h.f690f));
    }

    private long d(DependencyNode dependencyNode, long j) {
        WidgetRun widgetRun = dependencyNode.f688d;
        if (widgetRun instanceof j) {
            return j;
        }
        int size = dependencyNode.k.size();
        long jMax = j;
        for (int i = 0; i < size; i++) {
            d dVar = dependencyNode.k.get(i);
            if (dVar instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dVar;
                if (dependencyNode2.f688d != widgetRun) {
                    jMax = Math.max(jMax, d(dependencyNode2, ((long) dependencyNode2.f690f) + j));
                }
            }
        }
        if (dependencyNode != widgetRun.f698h) {
            return jMax;
        }
        long j2 = j + widgetRun.j();
        return Math.max(Math.max(jMax, d(widgetRun.i, j2)), j2 - ((long) widgetRun.i.f690f));
    }

    public void a(WidgetRun widgetRun) {
        this.c.add(widgetRun);
    }

    public long b(androidx.constraintlayout.core.widgets.d dVar, int i) {
        long j;
        int i2;
        WidgetRun widgetRun = this.b;
        if (widgetRun instanceof c) {
            if (((c) widgetRun).f696f != i) {
                return 0L;
            }
        } else if (i == 0) {
            if (!(widgetRun instanceof k)) {
                return 0L;
            }
        } else if (!(widgetRun instanceof m)) {
            return 0L;
        }
        DependencyNode dependencyNode = (i == 0 ? dVar.f681d : dVar.f682e).f698h;
        DependencyNode dependencyNode2 = (i == 0 ? dVar.f681d : dVar.f682e).i;
        boolean zContains = widgetRun.f698h.l.contains(dependencyNode);
        boolean zContains2 = this.b.i.l.contains(dependencyNode2);
        long j2 = this.b.j();
        if (zContains && zContains2) {
            long jD = d(this.b.f698h, 0L);
            long jC = c(this.b.i, 0L);
            long j3 = jD - j2;
            WidgetRun widgetRun2 = this.b;
            int i3 = widgetRun2.i.f690f;
            if (j3 >= (-i3)) {
                j3 += (long) i3;
            }
            int i4 = widgetRun2.f698h.f690f;
            long j4 = ((-jC) - j2) - ((long) i4);
            if (j4 >= i4) {
                j4 -= (long) i4;
            }
            float fO = widgetRun2.b.o(i);
            float f2 = fO > BitmapDescriptorFactory.HUE_RED ? (long) ((j4 / fO) + (j3 / (1.0f - fO))) : 0L;
            long j5 = ((long) ((f2 * fO) + 0.5f)) + j2 + ((long) ((f2 * (1.0f - fO)) + 0.5f));
            WidgetRun widgetRun3 = this.b;
            j = ((long) widgetRun3.f698h.f690f) + j5;
            i2 = widgetRun3.i.f690f;
        } else {
            if (zContains) {
                DependencyNode dependencyNode3 = this.b.f698h;
                return Math.max(d(dependencyNode3, dependencyNode3.f690f), ((long) this.b.f698h.f690f) + j2);
            }
            if (zContains2) {
                DependencyNode dependencyNode4 = this.b.i;
                return Math.max(-c(dependencyNode4, dependencyNode4.f690f), ((long) (-this.b.i.f690f)) + j2);
            }
            WidgetRun widgetRun4 = this.b;
            j = ((long) widgetRun4.f698h.f690f) + widgetRun4.j();
            i2 = this.b.i.f690f;
        }
        return j - ((long) i2);
    }
}
