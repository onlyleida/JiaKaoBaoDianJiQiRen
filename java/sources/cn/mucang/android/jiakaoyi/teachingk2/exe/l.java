package cn.mucang.android.jiakaoyi.teachingk2.exe;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.o;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.l0;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class l {
    public static boolean a(TeachModel teachModel, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2, f0 f0Var) {
        if (teachModel.subStep != bVar.j()) {
            return true;
        }
        if (teachModel.grade < l0.a() && !teachModel.isTraceTeach() && f0Var.f7020a != 5) {
            return true;
        }
        if (bVar2 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) {
            if (((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) bVar2).u == (teachModel.stepDirection != 1)) {
                return true;
            }
        }
        if (bVar2 instanceof o) {
            if (((o) bVar2).q == (teachModel.stepDirection != 1)) {
                return true;
            }
        }
        if (bVar2 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.j) {
            if (((cn.mucang.android.jiakaoyi.hpmap.a.a.g.j) bVar2).p == (teachModel.stepDirection != 1)) {
                return true;
            }
        }
        Set<String> set = f0Var.b;
        if (set == null || !set.contains(bVar2.getKey())) {
            if (!n0.f(teachModel.parkingSpaceGroup)) {
                return true;
            }
        } else {
            if (n0.f(teachModel.parkingSpaceBindId)) {
                return true;
            }
            if (!n0.f(teachModel.parkingSpaceBindId) && !teachModel.parkingSpaceBindId.contains(bVar2.getKey())) {
                return true;
            }
        }
        return false;
    }
}
