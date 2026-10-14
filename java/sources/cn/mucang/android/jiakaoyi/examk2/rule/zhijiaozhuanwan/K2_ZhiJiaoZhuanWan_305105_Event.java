package cn.mucang.android.jiakaoyi.examk2.rule.zhijiaozhuanwan;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.o;
import cn.mucang.android.jiakaoyi.examk2.collision.j;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhiJiaoZhuanWanConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ZhiJiaoZhuanWan_305105_Event extends d<K2ZhiJiaoZhuanWanConfig> {
    private boolean isHaveCloseLight;
    private boolean isHaveLightOn;
    private boolean isHaveTouch37Line;
    private boolean touch37PreviousLightOn;

    public K2_ZhiJiaoZhuanWan_305105_Event(K2ZhiJiaoZhuanWanConfig k2ZhiJiaoZhuanWanConfig, Deduct deduct) {
        super(k2ZhiJiaoZhuanWanConfig, deduct);
        this.isHaveTouch37Line = false;
        this.isHaveCloseLight = false;
        this.isHaveLightOn = false;
        this.touch37PreviousLightOn = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2ZhiJiaoZhuanWanConfig) this.config).p405128.value).booleanValue() && ((Boolean) ((K2ZhiJiaoZhuanWanConfig) this.config).p405118.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        j jVar = (j) ((o) bVar.f()).f3279a;
        boolean z = this.isHaveTouch37Line;
        if (!z && !jVar.x) {
            this.touch37PreviousLightOn = true;
        }
        if (jVar.C && !z) {
            this.isHaveTouch37Line = true;
        }
        if (!this.isHaveCloseLight && this.isHaveTouch37Line && jVar.x) {
            this.isHaveCloseLight = true;
        }
        boolean z2 = eVar.d().j(Light.TurnLeftLight) || eVar.d().j(Light.TurnRightLight);
        if (!this.touch37PreviousLightOn || !this.isHaveCloseLight || !z2) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
