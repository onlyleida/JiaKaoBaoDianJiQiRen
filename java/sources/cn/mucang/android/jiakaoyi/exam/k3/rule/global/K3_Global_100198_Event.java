package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100198_Event extends d<K3GlobalStepConfig> {
    private long carStopStartTime;
    private boolean pressStopLine;

    public K3_Global_100198_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.carStopStartTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            if (eVar.d().M != 3) {
                return !this.pressStopLine;
            }
            eVar.d();
            if (((GlobalStateData) bVar.f()).carStop) {
                if (this.carStopStartTime == 0) {
                    this.carStopStartTime = examProcessor.i;
                }
                if (examProcessor.i - this.carStopStartTime <= ((Integer) ((K3GlobalStepConfig) this.config).p200226.value).intValue() * 1000 || !K3CollisionManager.getInstance().isPressStopLine(eVar, examProcessor, true)) {
                    this.pressStopLine = false;
                    return true;
                }
                this.pressStopLine = true;
                return !true;
            }
            this.carStopStartTime = 0L;
            this.pressStopLine = false;
        }
        return true;
    }
}
