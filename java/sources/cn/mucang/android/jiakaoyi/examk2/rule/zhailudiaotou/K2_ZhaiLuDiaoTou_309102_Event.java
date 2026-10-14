package cn.mucang.android.jiakaoyi.examk2.rule.zhailudiaotou;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.n;
import cn.mucang.android.jiakaoyi.examk2.collision.i;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhaiLuDiaoTouConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ZhaiLuDiaoTou_309102_Event extends d<K2ZhaiLuDiaoTouConfig> {
    public K2_ZhaiLuDiaoTou_309102_Event(K2ZhaiLuDiaoTouConfig k2ZhaiLuDiaoTouConfig, Deduct deduct) {
        super(k2ZhaiLuDiaoTouConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        n nVar = (n) bVar.f();
        if (((i) nVar.f3279a).H && eVar.d().c() && eVar.d().F.isForward()) {
            setDoNotExecute(true);
            C c = nVar.f3279a;
            if (((i) c).D > 0 && ((i) c).E - ((i) c).D < ((Integer) ((K2ZhaiLuDiaoTouConfig) this.config).p409112.value).intValue() * 1000) {
                return false;
            }
        }
        return true;
    }
}
