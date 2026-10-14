package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.exam.k3.collision.CarToLineDistanceUtils;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.DebugFooterResult;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.LeftRightLinesResult;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.u;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SideDistanceCalHelper {
    public double distance = cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b;

    public double calSideDistance(e eVar, CarToLineDistanceUtils.Mode mode, CarToLineDistanceUtils.CalLineType calLineType, boolean z) {
        LeftRightLinesResult leftRightLines = K3CollisionManager.getInstance().getLeftRightLines(eVar);
        List<K3CollisionModel> list = z ? leftRightLines.rightLines : leftRightLines.leftLines;
        if (list == null || list.isEmpty()) {
            this.distance = cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b;
        } else {
            List<K3CollisionModel> list2 = leftRightLines.overLayLines;
            if (list2 == null || list2.size() <= 0) {
                CarToLineDistanceUtils.DistanceCalResult distanceCalResultCalCarToLineDistance = CarToLineDistanceUtils.calCarToLineDistance(eVar, list, mode, calLineType);
                if (distanceCalResultCalCarToLineDistance != null && distanceCalResultCalCarToLineDistance.collisionModel != null) {
                    this.distance = distanceCalResultCalCarToLineDistance.distance;
                    if (u.b()) {
                        LiveBus.d(LeftRightLinesResult.class).l(leftRightLines);
                        ArrayList arrayList = new ArrayList();
                        K3CollisionModel k3CollisionModel = distanceCalResultCalCarToLineDistance.collisionModel;
                        if (k3CollisionModel instanceof j) {
                            j jVar = (j) k3CollisionModel;
                            if (jVar.j) {
                                for (int i = 1; i < jVar.f3919e.size(); i++) {
                                    Pos pos = jVar.f3919e.get(i - 1);
                                    Pos pos2 = jVar.f3919e.get(i);
                                    if (eVar.c().bigBound.g(pos) || eVar.c().bigBound.g(pos2)) {
                                        Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(eVar.c().wheelRightFront, pos, pos2);
                                        if (cn.mucang.android.jiakaoyi.hpmap.d.a.y(posN, pos, pos2)) {
                                            arrayList.add(posN);
                                        }
                                        Pos posN2 = cn.mucang.android.jiakaoyi.hpmap.d.a.n(eVar.c().wheelRightBack, pos, pos2);
                                        if (cn.mucang.android.jiakaoyi.hpmap.d.a.y(posN2, pos, pos2)) {
                                            arrayList.add(posN2);
                                        }
                                    }
                                }
                            } else {
                                Pos pos3 = eVar.c().wheelRightFront;
                                Line line = jVar.f3922h;
                                arrayList.add(cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos3, line.start, line.end));
                                Pos pos4 = eVar.c().wheelRightBack;
                                Line line2 = jVar.f3922h;
                                arrayList.add(cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos4, line2.start, line2.end));
                            }
                        }
                        LiveBus.d(DebugFooterResult.class).l(new DebugFooterResult(arrayList));
                    }
                }
            } else {
                this.distance = cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b;
            }
        }
        return this.distance;
    }
}
