package cn.mucang.android.jiakaoyi.teachingk2.res;

import android.util.SparseArray;
import androidx.lifecycle.a0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3Data;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.hpmap.car.CarData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.model.AreaModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.voice.TeachVoiceModel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class n {
    public static final n p = new n();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public cn.mucang.android.jiakaoyi.signal.i.a f7599a;
    public String b;
    public cn.mucang.android.jiakaoyi.mapcollect.c.j c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public K3Data f7600d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public cn.mucang.android.jiakaoyi.mapcollect.c.h f7601e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List<cn.mucang.android.jiakaoyi.teachingk2.res.model.a> f7602f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<cn.mucang.android.jiakaoyi.teachingk2.res.model.b> f7603g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Map<String, TeachVoiceModel> f7604h = null;
    public HashMap<Step, List<TeachModel>> i = new HashMap<>();
    public HashMap<Step, List<TeachModel>> j = new HashMap<>();
    public HashMap<Step, Set<String>> k = new HashMap<>();
    public SparseArray<String> l = new SparseArray<>();
    public Map<KeMu, List<AreaModel>> m = new HashMap();
    public List<AreaModel> n;
    public List<AreaModel> o;

    private n() {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f7588a.e();
            }
        });
    }

    public static n b() {
        return p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void e() {
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.car.a.class).i(new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.i
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f7589a.g((cn.mucang.android.jiakaoyi.signal.car.a) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void g(cn.mucang.android.jiakaoyi.signal.car.a aVar) {
        this.l.remove(ResourceManager.Resource.MapData.type);
    }

    public boolean a(TeachModel teachModel, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        if (teachModel.isReverse() != bVar.r()) {
            return false;
        }
        Set<String> set = p.k.get(bVar.s());
        if (set == null || !set.contains(bVar.getKey())) {
            return n0.f(teachModel.parkingSpaceGroup);
        }
        String str = teachModel.parkingSpaceBindId;
        return str != null && str.contains(bVar.getKey());
    }

    public CarData c() {
        cn.mucang.android.jiakaoyi.mapcollect.c.j jVar = this.c;
        if (jVar != null) {
            return jVar.w;
        }
        cn.mucang.android.jiakaoyi.mapcollect.c.h hVar = this.f7601e;
        if (hVar != null) {
            return hVar.y;
        }
        return null;
    }

    public void h(CarData carData) {
        cn.mucang.android.jiakaoyi.mapcollect.c.j jVar = this.c;
        if (jVar != null) {
            jVar.w = carData;
            return;
        }
        cn.mucang.android.jiakaoyi.mapcollect.c.h hVar = this.f7601e;
        if (hVar != null) {
            hVar.y = carData;
        }
    }

    public void i(double d2, double d3, double d4) {
        cn.mucang.android.jiakaoyi.signal.i.a aVar = this.f7599a;
        if (aVar == null || !aVar.getZero().sameWith(new Gps(d2, d3, d4))) {
            this.f7599a = new cn.mucang.android.jiakaoyi.signal.i.b(new Gps(d2, d3, d4));
        }
    }

    public void j(List<cn.mucang.android.jiakaoyi.teachingk2.res.model.a> list) {
        this.f7602f = list;
    }

    public void k(List<AreaModel> list) {
        this.n = list;
    }

    public void l(cn.mucang.android.jiakaoyi.mapcollect.c.j jVar) {
        this.c = jVar;
    }

    public void m(cn.mucang.android.jiakaoyi.mapcollect.c.h hVar) {
        this.f7601e = hVar;
    }

    public void n(K3Data k3Data) {
        this.f7600d = k3Data;
    }

    public void o(List<AreaModel> list) {
        this.o = list;
    }
}
