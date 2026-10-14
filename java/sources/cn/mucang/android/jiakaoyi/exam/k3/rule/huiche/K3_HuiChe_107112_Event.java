package cn.mucang.android.jiakaoyi.exam.k3.rule.huiche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.TwoSideOffsetResult;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuiCheStepConfig;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.google.android.exoplayer2.SimpleExoPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class K3_HuiChe_107112_Event extends d<K3HuiCheStepConfig> {
    private long noCheckTwoSideLine;

    public K3_HuiChe_107112_Event(K3HuiCheStepConfig k3HuiCheStepConfig, Deduct deduct) {
        super(k3HuiCheStepConfig, deduct);
        this.noCheckTwoSideLine = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        K3CollisionModel k3CollisionModel;
        if (((Boolean) ((K3HuiCheStepConfig) this.config).p207134.value).booleanValue() && K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.d().M == 3) {
            TwoSideOffsetResult twoSideOffset = K3CollisionManager.getInstance().getTwoSideOffset(eVar);
            if (twoSideOffset != null && (k3CollisionModel = twoSideOffset.rightLine) != null) {
                if (k3CollisionModel.f3882a == 3 || ((k3CollisionModel instanceof j) && !((j) k3CollisionModel).k)) {
                    return true;
                }
                setDoNotExecute(true);
                return false;
            }
            if (this.noCheckTwoSideLine == 0) {
                this.noCheckTwoSideLine = examProcessor.i;
            }
            if (examProcessor.i - this.noCheckTwoSideLine > SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
