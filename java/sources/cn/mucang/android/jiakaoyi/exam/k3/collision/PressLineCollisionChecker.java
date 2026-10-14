package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PressLineCollisionChecker extends BaseCollisionChecker {
    private final List<K3CollisionModel> collisionModels;

    public PressLineCollisionChecker(List<K3CollisionModel> list) {
        ArrayList arrayList = new ArrayList();
        this.collisionModels = arrayList;
        arrayList.clear();
        if (list == null || list.isEmpty()) {
            return;
        }
        arrayList.addAll(list);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.BaseCollisionChecker
    protected K3CollisionModel calculateResult(e eVar, ExamProcessor examProcessor, boolean z) {
        K3CollisionModel.TriggerType triggerType = z ? K3CollisionModel.TriggerType.BodyPressDottedLine : K3CollisionModel.TriggerType.WheelPressLine;
        for (K3CollisionModel k3CollisionModel : this.collisionModels) {
            if (k3CollisionModel.b(eVar, examProcessor, triggerType)) {
                return k3CollisionModel;
            }
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.BaseCollisionChecker
    protected boolean isEmpty() {
        return this.collisionModels.isEmpty();
    }
}
