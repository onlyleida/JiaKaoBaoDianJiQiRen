package cn.mucang.android.jiakaoyi.exam.k3.rule.gongqiao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.TwoSideOffsetResult;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GongQiaoStepConfig;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.google.android.exoplayer2.SimpleExoPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class K3_GongQiao_120102_Event extends d<K3GongQiaoStepConfig> {
    private long noCheckTwoSideLine;

    public K3_GongQiao_120102_Event(K3GongQiaoStepConfig k3GongQiaoStepConfig, Deduct deduct) {
        super(k3GongQiaoStepConfig, deduct);
        this.noCheckTwoSideLine = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        K3CollisionModel k3CollisionModel;
        if (((Boolean) ((K3GongQiaoStepConfig) this.config).p220117.value).booleanValue() && K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.d().M == 3) {
            TwoSideOffsetResult twoSideOffset = K3CollisionManager.getInstance().getTwoSideOffset(eVar);
            if (twoSideOffset == null || (k3CollisionModel = twoSideOffset.rightLine) == null) {
                if (this.noCheckTwoSideLine == 0) {
                    this.noCheckTwoSideLine = examProcessor.i;
                }
                if (examProcessor.i - this.noCheckTwoSideLine > SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
                    setDoNotExecute(true);
                    return false;
                }
            } else {
                int i = k3CollisionModel.f3882a;
                if (!(i == 3 || (i == 1 && !((j) k3CollisionModel).k))) {
                    setDoNotExecute(true);
                    return false;
                }
            }
        }
        return true;
    }
}
