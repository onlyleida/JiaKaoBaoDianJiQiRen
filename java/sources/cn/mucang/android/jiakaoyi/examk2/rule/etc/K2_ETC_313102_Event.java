package cn.mucang.android.jiakaoyi.examk2.rule.etc;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2ETCConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ETC_313102_Event extends d<K2ETCConfig> {
    public K2_ETC_313102_Event(K2ETCConfig k2ETCConfig, Deduct deduct) {
        super(k2ETCConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return eVar.d().b <= ((float) ((Integer) ((K2ETCConfig) this.config).p413106.value).intValue());
    }
}
