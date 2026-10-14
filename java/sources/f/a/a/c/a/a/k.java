package f.a.a.c.a.a;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;

/* JADX INFO: loaded from: classes4.dex */
public class k implements cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.f.l> {
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.f.l lVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.f.l, ?> bVar) {
        TeachModel teachModel = new TeachModel();
        teachModel.boundary = lVar;
        teachModel.step = Step.B2_SuiDao.type;
        teachModel.subStep = bVar.j();
        LiveBus.d(TeachModel.class).l(teachModel);
    }
}
