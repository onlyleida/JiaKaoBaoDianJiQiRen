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
public class LeftRightLineCalHelper {
    public K3CollisionModel leftLine = null;
    public K3CollisionModel rightLine = null;

    private void collectFooters(e eVar, K3CollisionModel k3CollisionModel, List<Pos> list) {
        if (k3CollisionModel != null && (k3CollisionModel instanceof j)) {
            j jVar = (j) k3CollisionModel;
            if (!jVar.j) {
                Pos pos = eVar.c().wheelRightFront;
                Line line = jVar.f3922h;
                list.add(cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos, line.start, line.end));
                Pos pos2 = eVar.c().wheelRightBack;
                Line line2 = jVar.f3922h;
                list.add(cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos2, line2.start, line2.end));
                return;
            }
            for (int i = 1; i < jVar.f3919e.size(); i++) {
                Pos pos3 = jVar.f3919e.get(i - 1);
                Pos pos4 = jVar.f3919e.get(i);
                if (eVar.c().bigBound.g(pos3) || eVar.c().bigBound.g(pos4)) {
                    Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(eVar.c().wheelRightFront, pos3, pos4);
                    if (cn.mucang.android.jiakaoyi.hpmap.d.a.y(posN, pos3, pos4)) {
                        list.add(posN);
                    }
                    Pos posN2 = cn.mucang.android.jiakaoyi.hpmap.d.a.n(eVar.c().wheelRightBack, pos3, pos4);
                    if (cn.mucang.android.jiakaoyi.hpmap.d.a.y(posN2, pos3, pos4)) {
                        list.add(posN2);
                    }
                }
            }
        }
    }

    public void check(e eVar, boolean z, boolean z2) {
        if (z || z2) {
            LeftRightLinesResult leftRightLines = K3CollisionManager.getInstance().getLeftRightLines(eVar);
            if (z) {
                CarToLineDistanceUtils.DistanceCalResult distanceCalResultCalCarToLineDistance = CarToLineDistanceUtils.calCarToLineDistance(eVar, leftRightLines.leftLines, CarToLineDistanceUtils.Mode.CarFrontCenter, CarToLineDistanceUtils.CalLineType.DashFullLine);
                if (distanceCalResultCalCarToLineDistance != null) {
                    this.leftLine = distanceCalResultCalCarToLineDistance.collisionModel;
                } else {
                    this.leftLine = null;
                }
            }
            if (z2) {
                CarToLineDistanceUtils.DistanceCalResult distanceCalResultCalCarToLineDistance2 = CarToLineDistanceUtils.calCarToLineDistance(eVar, leftRightLines.rightLines, CarToLineDistanceUtils.Mode.CarFrontCenter, CarToLineDistanceUtils.CalLineType.DashFullLine);
                if (distanceCalResultCalCarToLineDistance2 != null) {
                    this.rightLine = distanceCalResultCalCarToLineDistance2.collisionModel;
                } else {
                    this.rightLine = null;
                }
            }
            if (u.b()) {
                ArrayList arrayList = new ArrayList();
                collectFooters(eVar, this.rightLine, arrayList);
                collectFooters(eVar, this.leftLine, arrayList);
                LiveBus.d(DebugFooterResult.class).l(new DebugFooterResult(arrayList));
            }
        }
    }
}
