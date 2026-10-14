package cn.mucang.android.jiakaoyi.examk2.rule.zhijiaozhuanwan;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhiJiaoZhuanWanConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.c;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ZhiJiaoZhuanWan_305110_Event extends d<K2ZhiJiaoZhuanWanConfig> {
    private final c countFilter;
    private long startTime;

    public K2_ZhiJiaoZhuanWan_305110_Event(K2ZhiJiaoZhuanWanConfig k2ZhiJiaoZhuanWanConfig, Deduct deduct) {
        super(k2ZhiJiaoZhuanWanConfig, deduct);
        this.startTime = 0L;
        this.countFilter = new c(3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2ZhiJiaoZhuanWanConfig) this.config).p405116.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!eVar.d().c()) {
            if (this.startTime != 0 || !this.countFilter.a(eVar.d().F.isStop())) {
                return true;
            }
            this.startTime = examProcessor.i;
            return true;
        }
        this.countFilter.b();
        long j = this.startTime;
        if (j == 0 || examProcessor.i - j >= ((Integer) ((K2ZhiJiaoZhuanWanConfig) this.config).p405114.value).intValue() * 1000) {
            this.startTime = 0L;
            return true;
        }
        this.startTime = 0L;
        return false;
    }
}
