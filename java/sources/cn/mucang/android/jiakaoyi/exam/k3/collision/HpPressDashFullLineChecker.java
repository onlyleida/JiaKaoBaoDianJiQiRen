package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HpPressDashFullLineChecker extends K3HpChecker {
    private final List<K3CollisionModel> lineModels;

    public HpPressDashFullLineChecker(List<K3CollisionModel> list) {
        this.lineModels = list;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3HpChecker
    protected boolean calculateResult(e eVar, ExamProcessor examProcessor, boolean z) {
        K3CollisionModel.TriggerType triggerType = z ? K3CollisionModel.TriggerType.BodyPressDottedLine : K3CollisionModel.TriggerType.WheelPressLine;
        Iterator<K3CollisionModel> it = this.lineModels.iterator();
        while (it.hasNext()) {
            if (it.next().b(eVar, examProcessor, triggerType)) {
                return true;
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3HpChecker
    protected boolean isEmpty() {
        List<K3CollisionModel> list = this.lineModels;
        return list == null || list.isEmpty();
    }
}
