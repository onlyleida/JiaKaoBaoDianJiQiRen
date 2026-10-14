package cn.mucang.android.jiakaoyi.examk2.rule.zhailudiaotou;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.n;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhaiLuDiaoTouConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ZhaiLuDiaoTou_309107_Event extends d<K2ZhaiLuDiaoTouConfig> {
    public K2_ZhaiLuDiaoTou_309107_Event(K2ZhaiLuDiaoTouConfig k2ZhaiLuDiaoTouConfig, Deduct deduct) {
        super(k2ZhaiLuDiaoTouConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.i - ((n) bVar.f()).startTime <= ((Integer) ((K2ZhaiLuDiaoTouConfig) this.config).p409108.value).intValue() * 1000) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
