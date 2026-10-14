package cn.mucang.android.jiakaoyi.teachingk2.exe;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.d0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
class m {
    m() {
    }

    private <C extends Variable> boolean b(C c, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, Map<Variable, g0<?>> map, TeachModel teachModel, f0 f0Var) {
        g0<?> g0VarB = map.get(c);
        if (g0VarB == null) {
            g0VarB = d0.b(c.getClass());
            if (g0VarB == null) {
                return false;
            }
            map.put(c, g0VarB);
        }
        return g0VarB.a(c, eVar, bVar, bVar2, teachModel, f0Var);
    }

    public boolean a(cn.mucang.android.jiakaoyi.signal.c.e eVar, List<Variable> list, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, Map<Variable, g0<?>> map, TeachModel teachModel, f0 f0Var) {
        if (cn.mucang.android.core.utils.g.b(list)) {
            return false;
        }
        boolean z = true;
        for (Variable variable : list) {
            if (variable.enable && !b(variable, eVar, bVar, bVar2, map, teachModel, f0Var)) {
                MucangConfig.v();
                z = false;
            }
        }
        MucangConfig.v();
        return z;
    }
}
