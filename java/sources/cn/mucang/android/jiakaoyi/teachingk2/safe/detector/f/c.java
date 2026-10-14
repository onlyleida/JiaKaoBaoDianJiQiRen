package cn.mucang.android.jiakaoyi.teachingk2.safe.detector.f;

import androidx.lifecycle.a0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeDesc;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.safe.detector.FenceDetector;
import cn.mucang.jiakaoyi.uilib.socket.model.ProjectFenceModel;
import cn.mucang.jiakaoyi.uilib.ui.login.p008j.AccountUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class c implements cn.mucang.android.jiakaoyi.teachingk2.safe.detector.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile ProjectFenceModel f7667a = null;
    private final Map<String, Boolean> b = new HashMap();
    private final a0<ProjectFenceModel> c = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.f.b
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            this.f7666a.d((ProjectFenceModel) obj);
        }
    };

    public c() {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.f.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f7665a.f();
            }
        });
    }

    private void b(ProjectFenceModel projectFenceModel, cn.mucang.android.jiakaoyi.teachingk2.res.model.a aVar) {
        if (projectFenceModel == null) {
            return;
        }
        String strValueOf = String.valueOf(projectFenceModel.id);
        if (n0.e(strValueOf)) {
            return;
        }
        if (!strValueOf.equals(aVar.b)) {
            aVar.f7593e = false;
            return;
        }
        f.o("设置项目围栏:" + projectFenceModel.id + "," + ((int) projectFenceModel.enable) + "," + projectFenceModel.time);
        long jCurrentTimeMillis = (long) projectFenceModel.time;
        if (jCurrentTimeMillis > 0) {
            jCurrentTimeMillis = (jCurrentTimeMillis * 1000) + System.currentTimeMillis();
        }
        boolean z = projectFenceModel.enable == 1;
        aVar.f7593e = z;
        if (z) {
            aVar.f7594f = jCurrentTimeMillis;
        } else {
            aVar.f7594f = 0L;
        }
        this.f7667a = null;
        this.b.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d(ProjectFenceModel projectFenceModel) {
        this.f7667a = projectFenceModel;
        this.b.remove(String.valueOf(projectFenceModel.id));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f() {
        LiveBus.d(ProjectFenceModel.class).i(this.c);
    }

    private CarBrakeDesc g(cn.mucang.android.jiakaoyi.teachingk2.res.model.a aVar, FenceDetector.c cVar, CarPos carPos, Gear gear) {
        Boolean bool = Boolean.TRUE;
        b(this.f7667a, aVar);
        if (!aVar.f7593e) {
            this.b.remove(aVar.b);
            return null;
        }
        if (!AccountUtils.b() && !FenceDetector.e()) {
            this.b.clear();
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = aVar.f7594f;
        if (j > 0 && jCurrentTimeMillis > j) {
            this.b.remove(aVar.b);
            return null;
        }
        if (this.b.get(aVar.b) != null) {
            Iterator<Pos> it = cVar.b.iterator();
            while (it.hasNext()) {
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(it.next(), aVar.c)) {
                    this.b.put(aVar.b, bool);
                    return null;
                }
            }
        } else if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(carPos.carRect.f5820a, aVar.c) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(carPos.carRect.b, aVar.c) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(carPos.carRect.c, aVar.c) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(carPos.carRect.f5821d, aVar.c)) {
            this.b.put(aVar.b, bool);
            return null;
        }
        Boolean bool2 = this.b.get(aVar.b);
        if (bool2 == null || !bool2.booleanValue()) {
            return null;
        }
        return CarBrakeDesc.DESC_NONE;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.detector.c
    public CarBrakeDesc a(cn.mucang.android.jiakaoyi.teachingk2.res.model.a aVar, cn.mucang.android.jiakaoyi.signal.c.e eVar, List<FenceDetector.c> list) {
        return g(aVar, list.get(0), eVar.c(), eVar.d().m);
    }
}
