package cn.mucang.android.jiakaoyi.exam.k3.creator;

import android.location.Location;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.j.a;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import cn.mucang.jiakaoyi.uilib.model.TeachStepNode;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class StepInfoParseUtil {
    public static c.b getEmptyStepInfo(Step step) {
        return new c.b(step, null);
    }

    public static ArrayList<c.b> parseStartPos(LocalRoute localRoute) {
        if (localRoute == null) {
            return new ArrayList<>();
        }
        List<RouteNode> nodes = localRoute.getNodes();
        if (g.b(nodes)) {
            return new ArrayList<>();
        }
        f.o("localRoute Id " + localRoute.getRouteId());
        ArrayList<c.b> arrayList = new ArrayList<>();
        for (RouteNode routeNode : nodes) {
            Step stepFindWithType = Step.findWithType(routeNode.getStepId());
            Location location = new Location("gps");
            location.setLatitude(routeNode.getLat());
            location.setLongitude(routeNode.getLon());
            location.setBearing(routeNode.getBearing());
            Location location2 = new Location("gps");
            location2.setLatitude(routeNode.getBrakeLat());
            location2.setLongitude(routeNode.getBrakeLon());
            location2.setBearing(routeNode.getBrakeBearing());
            List<TeachStepNode> teachNodes = routeNode.getTeachNodes();
            ArrayList arrayList2 = null;
            if (teachNodes != null) {
                arrayList2 = new ArrayList();
                for (TeachStepNode teachStepNode : teachNodes) {
                    if (teachStepNode.getLatitude() != null && teachStepNode.getLongitude() != null && teachStepNode.getBearing() != null) {
                        Location location3 = new Location("gps");
                        location3.setLatitude(teachStepNode.getLatitude().doubleValue());
                        location3.setLongitude(teachStepNode.getLongitude().doubleValue());
                        location3.setBearing(teachStepNode.getBearing().floatValue());
                        a aVar = new a();
                        aVar.f3100a = teachStepNode.getTeachId();
                        aVar.b = location3;
                        arrayList2.add(aVar);
                    }
                }
            }
            if (stepFindWithType != null) {
                c.b bVar = new c.b(stepFindWithType, location);
                bVar.b = location2;
                bVar.i = routeNode.getId();
                bVar.c = routeNode.getBrakeDistance();
                bVar.f3085e = routeNode.isPlayStartVoice();
                bVar.f3086f = routeNode.isJudgeTurnLight();
                bVar.f3087g = routeNode.isJudgeBrake();
                bVar.f3088h = routeNode.getStepDistance();
                bVar.k = routeNode.getAlias();
                bVar.j = routeNode.getOrderId();
                bVar.l = routeNode.getStartVoice();
                bVar.m = routeNode.getTeachNum();
                bVar.n = routeNode.getRandomGroup();
                bVar.o = arrayList2;
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }
}
