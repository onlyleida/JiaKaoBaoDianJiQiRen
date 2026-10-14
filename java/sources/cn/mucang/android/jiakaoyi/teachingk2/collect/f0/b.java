package cn.mucang.android.jiakaoyi.teachingk2.collect.f0;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DirectionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.GearVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.KuWeiPoseVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.SpeedVariable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class b implements cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.utils.b f6504a;

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c, ?> bVar) {
        CarPos carPosC = eVar.c();
        TeachModel teachModel = new TeachModel();
        teachModel.boundary = cVar;
        teachModel.step = Step.K2_DaoCheRuKu.type;
        teachModel.subStep = bVar.j();
        teachModel.stepDirection = cVar.u ? 1 : 2;
        teachModel.variableList = new ArrayList();
        SparseArray<Pos> sparseArrayJ = cVar.j();
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
        KuWeiPoseVariable kuWeiPoseVariable = new KuWeiPoseVariable();
        kuWeiPoseVariable.type = 64;
        boolean z = sparseArrayJ.get(4).vectorTo(sparseArrayJ.get(3)).cross(sparseArrayJ.get(3).vectorTo(sparseArrayJ.get(6))) > 0.0d;
        if (this.f6504a == null) {
            this.f6504a = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(cVar);
        }
        Pos posA = this.f6504a.a(carPosC.center);
        kuWeiPoseVariable.x = (int) posA.x;
        kuWeiPoseVariable.y = (int) posA.y;
        kuWeiPoseVariable.degree = (z ? 1 : -1) * cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) carPosC.degree)) - Math.toDegrees(sparseArrayJ.get(4).angleTo(sparseArrayJ.get(3)))));
        StringBuilder sb = new StringBuilder();
        sb.append("车身位置 : ");
        sb.append(kuWeiPoseVariable.x);
        sb.append(" , ");
        sb.append(kuWeiPoseVariable.y);
        sb.append(" , 角度 : ");
        sb.append((int) kuWeiPoseVariable.degree);
        sb.append(" , ");
        sb.append(z ? "右库" : "左库");
        kuWeiPoseVariable.desc = sb.toString();
        teachModel.variableList.add(kuWeiPoseVariable);
        LiveBus.d(TeachModel.class).l(teachModel);
    }
}
