package cn.mucang.android.jiakaoyi.teachingk2.collect.f0;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DirectionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.GearVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.SpeedVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.quxian.QuXianPositionVariable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class g implements cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.j> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<cn.mucang.android.jiakaoyi.hpmap.a.a.g.j, cn.mucang.android.jiakaoyi.signal.utils.b> f6505a = new HashMap();

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.g.j jVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.j, ?> bVar) {
        CarPos carPosC = eVar.c();
        TeachModel teachModel = new TeachModel();
        teachModel.boundary = jVar;
        teachModel.step = Step.K2_SQuXian.type;
        teachModel.subStep = bVar.j();
        teachModel.stepDirection = jVar.p ? 1 : 2;
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
        QuXianPositionVariable quXianPositionVariable = new QuXianPositionVariable();
        quXianPositionVariable.type = 63;
        cn.mucang.android.jiakaoyi.signal.utils.b bVarA = this.f6505a.get(jVar);
        if (bVarA == null) {
            bVarA = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(jVar);
            this.f6505a.put(jVar, bVarA);
        }
        Pos posA = bVarA.a(carPosC.center);
        quXianPositionVariable.x = (int) posA.x;
        quXianPositionVariable.y = (int) posA.y;
        quXianPositionVariable.desc = "车子在曲线坐标系中位置:(" + ((int) quXianPositionVariable.x) + "," + ((int) quXianPositionVariable.y) + ")";
        teachModel.variableList.add(quXianPositionVariable);
        LiveBus.d(TeachModel.class).l(teachModel);
    }
}
