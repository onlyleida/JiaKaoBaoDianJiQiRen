package f.a.a.c.a.a;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;

/* JADX INFO: loaded from: classes4.dex */
public class e implements cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.f.e> {
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.f.e eVar2, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.f.e, ?> bVar) {
        TeachModel teachModel = new TeachModel();
        teachModel.boundary = eVar2;
        teachModel.step = Step.B2_ShiHuaLuMian.type;
        teachModel.subStep = bVar.j();
        LiveBus.d(TeachModel.class).l(teachModel);
    }
}
