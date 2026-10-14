package cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class K3_DiaoTou_110107_Event extends d<K3DiaoTouStepConfig> {
    public K3_DiaoTou_110107_Event(K3DiaoTouStepConfig k3DiaoTouStepConfig, Deduct deduct) {
        super(k3DiaoTouStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        List<K3CollisionModel> listPressMarkLines;
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.d().M == 3 && (listPressMarkLines = K3CollisionManager.getInstance().pressMarkLines(eVar, examProcessor, true)) != null) {
            Iterator<K3CollisionModel> it = listPressMarkLines.iterator();
            while (it.hasNext()) {
                if (!((f) it.next()).c(4)) {
                    setDoNotExecute(true);
                    return false;
                }
            }
        }
        return true;
    }
}
