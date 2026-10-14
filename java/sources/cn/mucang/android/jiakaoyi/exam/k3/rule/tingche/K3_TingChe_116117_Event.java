package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.PressLineType;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jky.usbcamera.detectside.t;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116117_Event extends d<K3TingCheStepConfig> {
    private int count;
    private boolean isPressArea;
    private boolean isPressFullLine;

    public K3_TingChe_116117_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
        this.count = 0;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((TingCheStepData) bVar.f()).isCheckPressLine) {
            if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
                if (eVar.d().h()) {
                    this.isPressFullLine = K3CollisionManager.getInstance().isPressLine(eVar, examProcessor, true, PressLineType.PressFullLine);
                }
                return !this.isPressFullLine;
            }
            TingCheStepData tingCheStepData = (TingCheStepData) bVar.f();
            if (!tingCheStepData.hasDetectSide && tingCheStepData.state == TingCheStepData.State.Stopped) {
                float fB = t.b();
                if (fB == -1000.0f) {
                    return true;
                }
                if (fB >= -3.0f || fB <= -40.0f) {
                    this.count = 0;
                } else {
                    this.count++;
                }
                if (this.count >= 2) {
                    setDoNotExecute(true);
                    tingCheStepData.hasDetectSide = true;
                    return false;
                }
            }
        }
        return true;
    }
}
