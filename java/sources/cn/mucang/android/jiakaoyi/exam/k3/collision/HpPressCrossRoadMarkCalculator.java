package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HpPressCrossRoadMarkCalculator extends K3HpChecker {
    private final List<K3CollisionModel> collisionModels;
    private volatile long frameTime;
    private final Object lock;
    private final List<K3CollisionModel> pressMarkLines;

    public HpPressCrossRoadMarkCalculator(List<K3CollisionModel> list) {
        ArrayList arrayList = new ArrayList();
        this.collisionModels = arrayList;
        this.pressMarkLines = new ArrayList();
        this.lock = new Object();
        this.frameTime = 0L;
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

    public List<K3CollisionModel> pressMarkLines(e eVar, ExamProcessor examProcessor, boolean z) {
        if (isEmpty()) {
            return null;
        }
        if (eVar.d().M != 3) {
            return this.pressMarkLines;
        }
        synchronized (this.lock) {
            if (this.frameTime == eVar.d().L) {
                return this.pressMarkLines;
            }
            this.pressMarkLines.clear();
            K3CollisionModel.TriggerType triggerType = z ? K3CollisionModel.TriggerType.BodyPressDottedLine : K3CollisionModel.TriggerType.WheelPressLine;
            for (K3CollisionModel k3CollisionModel : this.collisionModels) {
                if (k3CollisionModel.b(eVar, examProcessor, triggerType)) {
                    this.pressMarkLines.add(k3CollisionModel);
                }
            }
            this.frameTime = eVar.d().L;
            return this.pressMarkLines;
        }
    }
}
