package f.a.a.c.a.a;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;

/* JADX INFO: loaded from: classes4.dex */
public class m implements cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.f.n> {
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.f.n nVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.f.n, ?> bVar) {
        TeachModel teachModel = new TeachModel();
        teachModel.boundary = nVar;
        teachModel.step = Step.B2_ZhaiLuDiaoTou.type;
        teachModel.subStep = bVar.j();
        LiveBus.d(TeachModel.class).l(teachModel);
    }
}
