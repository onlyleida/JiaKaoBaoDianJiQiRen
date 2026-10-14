package cn.mucang.android.jiakaoyi.examk2.rule.zhijiaozhuanwan;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.o;
import cn.mucang.android.jiakaoyi.examk2.collision.j;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhiJiaoZhuanWanConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ZhiJiaoZhuanWan_305106_Event extends d<K2ZhiJiaoZhuanWanConfig> {
    private boolean checked;
    private long currentTime;
    private boolean handleSuccess;
    private boolean hasJudged;
    private b timeoutCheck;

    public K2_ZhiJiaoZhuanWan_305106_Event(K2ZhiJiaoZhuanWanConfig k2ZhiJiaoZhuanWanConfig, Deduct deduct) {
        super(k2ZhiJiaoZhuanWanConfig, deduct);
        this.timeoutCheck = new b(3000L);
        this.hasJudged = false;
        this.currentTime = 0L;
        this.handleSuccess = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        b bVar2;
        o oVar = (o) bVar.f();
        if (((Boolean) ((K2ZhiJiaoZhuanWanConfig) this.config).p405122.value).booleanValue() && !((j) oVar.f3279a).E) {
            oVar.b = true;
            this.handleSuccess = false;
        }
        C c = oVar.f3279a;
        Light light = ((j) c).u ? Light.TurnLeftLight : Light.TurnRightLight;
        if (((j) c).u && this.handleSuccess && eVar.d().j(Light.TurnRightLight)) {
            this.handleSuccess = false;
        }
        if (!((j) oVar.f3279a).u && this.handleSuccess && eVar.d().j(Light.TurnLeftLight)) {
            this.handleSuccess = false;
        }
        if (((Boolean) ((K2ZhiJiaoZhuanWanConfig) this.config).p405107.value).booleanValue() && this.handleSuccess && (bVar2 = this.timeoutCheck) != null) {
            bVar2.g();
            if (this.timeoutCheck.d()) {
                this.handleSuccess = false;
                this.timeoutCheck.b();
            }
            if (!((j) oVar.f3279a).x) {
                this.timeoutCheck = null;
                if (this.currentTime == 0) {
                    this.currentTime = System.currentTimeMillis();
                }
            }
        }
        if (this.timeoutCheck == null && !this.hasJudged && this.handleSuccess) {
            cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = eVar.b().c(light);
            if (cVarC == null) {
                this.handleSuccess = false;
            } else {
                if (System.currentTimeMillis() - this.currentTime >= ((Integer) ((K2ZhiJiaoZhuanWanConfig) this.config).p405108.value).intValue() * 1000) {
                    this.hasJudged = true;
                    return true;
                }
                if (!cVarC.c) {
                    this.handleSuccess = false;
                }
            }
        }
        if (((Boolean) ((K2ZhiJiaoZhuanWanConfig) this.config).p405106.value).booleanValue() && this.handleSuccess && ((j) oVar.f3279a).w && !this.checked) {
            this.checked = true;
            cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC2 = eVar.b().c(light);
            if ((!eVar.d().j(Light.TurnLeftLight) && !eVar.d().j(Light.TurnRightLight)) || (cVarC2 != null && cVarC2.f5252d < ((Integer) ((K2ZhiJiaoZhuanWanConfig) this.config).p405108.value).intValue() * 1000)) {
                this.handleSuccess = false;
            }
        }
        if (((Boolean) ((K2ZhiJiaoZhuanWanConfig) this.config).p405110.value).booleanValue()) {
            C c2 = oVar.f3279a;
            if (((j) c2).w && ((j) c2).D <= ((double) ((Integer) ((K2ZhiJiaoZhuanWanConfig) this.config).p405111.value).intValue())) {
                setDoNotExecute(true);
                if (!this.handleSuccess) {
                    oVar.b = true;
                    return false;
                }
            }
        } else {
            if (!this.handleSuccess) {
                oVar.b = true;
                setDoNotExecute(true);
                return false;
            }
            if (((Boolean) ((K2ZhiJiaoZhuanWanConfig) this.config).p405106.value).booleanValue() && ((j) oVar.f3279a).w) {
                setDoNotExecute(true);
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
