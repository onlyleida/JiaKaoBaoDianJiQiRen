package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HpPressGridLineCalculator extends K3HpChecker {
    private final List<K3CollisionModel> gridLineModels;

    public HpPressGridLineCalculator(List<K3CollisionModel> list) {
        this.gridLineModels = list;
    }

    private boolean isPressGridLine(e eVar, ExamProcessor examProcessor) {
        Iterator<K3CollisionModel> it = this.gridLineModels.iterator();
        while (it.hasNext()) {
            if (it.next().b(eVar, examProcessor, K3CollisionModel.TriggerType.WheelPressLine)) {
                return true;
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3HpChecker
    protected boolean calculateResult(e eVar, ExamProcessor examProcessor, boolean z) {
        return isPressGridLine(eVar, examProcessor);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3HpChecker
    protected boolean isEmpty() {
        List<K3CollisionModel> list = this.gridLineModels;
        return list == null || list.isEmpty();
    }
}
