package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.PressLineType;
import cn.mucang.android.jiakaoyi.exam.k3.collision.StopPosition;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.TwoSideOffsetResult;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jky.usbcamera.detectside.t;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116111_Event extends d<K3TingCheStepConfig> {
    private int count;
    private StopPosition stopPosition;

    public K3_TingChe_116111_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
        this.count = 0;
    }

    private boolean handleFail(TingCheStepData tingCheStepData) {
        setDoNotExecute(true);
        tingCheStepData.hasDetectSide = true;
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        TwoSideOffsetResult twoSideOffset;
        if (eVar.d().f5268f) {
            return true;
        }
        if (!K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            TingCheStepData tingCheStepData = (TingCheStepData) bVar.f();
            if (!tingCheStepData.hasDetectSide && tingCheStepData.state == TingCheStepData.State.Stopped) {
                float fB = t.b();
                if (fB == -1000.0f) {
                    return true;
                }
                if (fB <= -40.0f) {
                    this.count++;
                } else {
                    this.count = 0;
                }
                if (((Integer) ((K3TingCheStepConfig) this.config).p216123.value).intValue() == 3) {
                    if (this.count >= 1) {
                        return handleFail(tingCheStepData);
                    }
                } else if (this.count >= 2) {
                    return handleFail(tingCheStepData);
                }
            }
        } else if (eVar.d().M == 3) {
            if (!((TingCheStepData) bVar.f()).carStop) {
                this.stopPosition = StopPosition.Road_None;
            } else if (!K3CollisionManager.getInstance().isPressLine(eVar, examProcessor, true, PressLineType.PressFullLine) && (twoSideOffset = K3CollisionManager.getInstance().getTwoSideOffset(eVar)) != null) {
                K3CollisionModel k3CollisionModel = twoSideOffset.leftLine;
                if ((k3CollisionModel instanceof j) && !((j) k3CollisionModel).k && twoSideOffset.rightLine == null) {
                    this.stopPosition = StopPosition.Road_Right;
                    setDoNotExecute(true);
                    return false;
                }
            }
        }
        return true;
    }
}
