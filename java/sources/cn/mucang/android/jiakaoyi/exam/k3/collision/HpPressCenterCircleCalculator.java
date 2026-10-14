package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HpPressCenterCircleCalculator extends K3HpChecker {
    private final List<K3CollisionModel> centerCircleModels;

    public HpPressCenterCircleCalculator(List<K3CollisionModel> list) {
        this.centerCircleModels = list;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3HpChecker
    protected boolean calculateResult(e eVar, ExamProcessor examProcessor, boolean z) {
        Iterator<K3CollisionModel> it = this.centerCircleModels.iterator();
        while (it.hasNext()) {
            if (it.next().b(eVar, examProcessor, K3CollisionModel.TriggerType.WheelPressLine)) {
                return true;
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3HpChecker
    protected boolean isEmpty() {
        List<K3CollisionModel> list = this.centerCircleModels;
        return list == null || list.isEmpty();
    }
}
