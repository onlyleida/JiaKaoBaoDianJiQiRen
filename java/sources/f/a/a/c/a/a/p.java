package f.a.a.c.a.a;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.q;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;

/* JADX INFO: loaded from: classes4.dex */
public class p implements cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<q> {
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(cn.mucang.android.jiakaoyi.signal.c.e eVar, q qVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<q, ?> bVar) {
        TeachModel teachModel = new TeachModel();
        teachModel.boundary = qVar;
        teachModel.step = Step.B2_ZhuangKao.type;
        teachModel.subStep = bVar.j();
        LiveBus.d(TeachModel.class).l(teachModel);
    }
}
