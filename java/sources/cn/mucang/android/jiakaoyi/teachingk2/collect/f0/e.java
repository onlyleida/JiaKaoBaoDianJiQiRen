package cn.mucang.android.jiakaoyi.teachingk2.collect.f0;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DirectionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.GearVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.SpeedVariable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class e implements cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.g> {
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.g.g gVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.g, ?> bVar) {
        TeachModel teachModel = new TeachModel();
        teachModel.boundary = gVar;
        teachModel.step = Step.K2_JinJiQingKuang.type;
        teachModel.subStep = bVar.j();
        teachModel.variableList = new ArrayList();
        GearVariable gearVariable = new GearVariable();
        gearVariable.type = 1;
        gearVariable.gear = eVar.d().m.gear;
        gearVariable.desc = "当前挡位 : " + eVar.d().m.gearName;
        teachModel.variableList.add(gearVariable);
        SpeedVariable speedVariable = new SpeedVariable();
        speedVariable.type = 3;
        speedVariable.speed = (int) eVar.d().b;
        speedVariable.desc = "当前速度 : " + speedVariable.speed;
        teachModel.variableList.add(speedVariable);
        DirectionVariable directionVariable = new DirectionVariable();
        directionVariable.type = 4;
        directionVariable.direction = eVar.d().F.direction;
        directionVariable.desc = "当前运动方向 : " + eVar.d().F.name();
        teachModel.variableList.add(directionVariable);
        LiveBus.d(TeachModel.class).l(teachModel);
    }
}
