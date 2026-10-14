package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.DashFullLineCollisionModel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HpPressDashLineCalculator extends K3HpChecker {
    private final List<K3CollisionModel> allModels;

    public HpPressDashLineCalculator(List<K3CollisionModel> list, List<K3CollisionModel> list2) {
        ArrayList arrayList = new ArrayList();
        this.allModels = arrayList;
        if (list != null) {
            arrayList.addAll(list);
        }
        if (list2 != null) {
            arrayList.addAll(list2);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3HpChecker
    protected boolean calculateResult(e eVar, ExamProcessor examProcessor, boolean z) {
        K3CollisionModel.TriggerType triggerType = z ? K3CollisionModel.TriggerType.BodyPressDottedLine : K3CollisionModel.TriggerType.WheelPressLine;
        for (K3CollisionModel k3CollisionModel : this.allModels) {
            if (k3CollisionModel instanceof DashFullLineCollisionModel) {
                if (((DashFullLineCollisionModel) k3CollisionModel).i(eVar, examProcessor, triggerType, false)) {
                    return true;
                }
            } else if (k3CollisionModel.b(eVar, examProcessor, triggerType)) {
                return true;
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3HpChecker
    protected boolean isEmpty() {
        return this.allModels.isEmpty();
    }
}
