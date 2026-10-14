package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HpPressFullLineCalculator extends K3HpChecker {
    private final List<K3CollisionModel> collisionModels;

    public HpPressFullLineCalculator(List<K3CollisionModel> list) {
        ArrayList arrayList = new ArrayList();
        this.collisionModels = arrayList;
        arrayList.clear();
        if (list == null || list.isEmpty()) {
            return;
        }
        arrayList.addAll(list);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3HpChecker
    protected boolean calculateResult(e eVar, ExamProcessor examProcessor, boolean z) {
        K3CollisionModel.TriggerType triggerType = z ? K3CollisionModel.TriggerType.BodyPressDottedLine : K3CollisionModel.TriggerType.WheelPressLine;
        Iterator<K3CollisionModel> it = this.collisionModels.iterator();
        while (it.hasNext()) {
            if (it.next().b(eVar, examProcessor, triggerType)) {
                return true;
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3HpChecker
    protected boolean isEmpty() {
        return this.collisionModels.isEmpty();
    }

    public HpPressFullLineCalculator(List<K3CollisionModel> list, List<K3CollisionModel> list2, List<K3CollisionModel> list3, List<K3CollisionModel> list4) {
        ArrayList arrayList = new ArrayList();
        this.collisionModels = arrayList;
        arrayList.clear();
        if (list != null && !list.isEmpty()) {
            arrayList.addAll(list);
        }
        if (list2 != null && !list2.isEmpty()) {
            arrayList.addAll(list2);
        }
        if (list3 != null && !list3.isEmpty()) {
            arrayList.addAll(list3);
        }
        if (list4 == null || list4.isEmpty()) {
            return;
        }
        arrayList.addAll(list4);
    }
}
