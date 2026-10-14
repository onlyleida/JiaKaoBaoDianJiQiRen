package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.c;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.j;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.a;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.KuWeiPoseVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.quxian.QuXianPositionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.android.jiakaoyi.teachingk2.unity.UnityDrawLineHelper;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.r, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u001e\u0010\f\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\b\u0010\u0011\u001a\u00020\u0007H\u0007J\b\u0010\u0012\u001a\u00020\u0007H\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TeachPositionManager;", "", "()V", "posList", "", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "addPoint", "", "model", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "it", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "calculateStep", "list", "", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "init", "sendDrawRequest", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachPositionManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TeachPositionManager f8448a = new TeachPositionManager();
    private static final List<Pos> b = new ArrayList();

    private TeachPositionManager() {
    }

    private final void a(TeachModel teachModel, b bVar) {
        List<Variable> list = teachModel.variableList;
        if (list == null) {
            return;
        }
        for (Variable variable : list) {
            if (variable.enable) {
                if ((variable instanceof QuXianPositionVariable) && (bVar instanceof j)) {
                    QuXianPositionVariable quXianPositionVariable = (QuXianPositionVariable) variable;
                    cn.mucang.android.jiakaoyi.signal.utils.b bVarA = quXianPositionVariable.centerCoordinate ? a.a(bVar) : a.b((j) bVar);
                    List<Pos> list2 = b;
                    Pos posC = bVarA.c(new Pos(quXianPositionVariable.x, quXianPositionVariable.y));
                    r.d(posC, "coordinate.toWorld(Pos(variable.x, variable.y))");
                    list2.add(posC);
                    return;
                }
                if (variable instanceof KuWeiPoseVariable) {
                    cn.mucang.android.jiakaoyi.signal.utils.b bVarA2 = a.a(bVar);
                    List<Pos> list3 = b;
                    KuWeiPoseVariable kuWeiPoseVariable = (KuWeiPoseVariable) variable;
                    Pos posC2 = bVarA2.c(new Pos(kuWeiPoseVariable.x, kuWeiPoseVariable.y));
                    r.d(posC2, "coordinate.toWorld(Pos(variable.x, variable.y))");
                    list3.add(posC2);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0050  */
    private final void b(List<? extends b> list, Step step) {
        boolean z;
        for (b bVar : list) {
            List<TeachModel> list2 = n.p.i.get(step);
            if (list2 != null) {
                for (TeachModel model : list2) {
                    Set<String> set = n.p.k.get(step);
                    if (set != null && set.contains(bVar.getKey())) {
                        String str = model.parkingSpaceBindId;
                        if (str != null) {
                            String key = bVar.getKey();
                            r.d(key, "it.key");
                            z = StringsKt__StringsKt.G(str, key, false, 2, null);
                        }
                        if (z) {
                            TeachPositionManager teachPositionManager = f8448a;
                            r.d(model, "model");
                            teachPositionManager.a(model, bVar);
                        }
                    } else if (n0.f(model.parkingSpaceGroup)) {
                        TeachPositionManager teachPositionManager2 = f8448a;
                        r.d(model, "model");
                        teachPositionManager2.a(model, bVar);
                    }
                }
            }
        }
    }

    public static final void c() {
        if (!i0.b("keyShowTeachPosition", false) || n.p.c == null) {
            return;
        }
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.j
            @Override // java.lang.Runnable
            public final void run() {
                TeachPositionManager.d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d() {
        b.clear();
        TeachPositionManager teachPositionManager = f8448a;
        n nVar = n.p;
        List<c> list = nVar.c.f4725f;
        r.d(list, "instance.mapData.daoku");
        teachPositionManager.b(list, Step.K2_DaoCheRuKu);
        List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.b> list2 = nVar.c.f4724e;
        r.d(list2, "instance.mapData.cefang");
        teachPositionManager.b(list2, Step.K2_CeFangTingChe);
        List<j> list3 = nVar.c.f4726g;
        r.d(list3, "instance.mapData.quxian");
        teachPositionManager.b(list3, Step.K2_SQuXian);
    }

    public static final void f() {
        for (Pos pos : b) {
            double d2 = 5;
            UnityDrawLineHelper.a.e(UnityDrawLineHelper.f6360a, 0, 0, 2, u.p(new Pos(pos.x - d2, pos.y - d2), new Pos(pos.x + d2, pos.y + d2)), "#FFFF00", 0.5f, 10, 200, false, null, null, false, 3843, null);
        }
    }
}
