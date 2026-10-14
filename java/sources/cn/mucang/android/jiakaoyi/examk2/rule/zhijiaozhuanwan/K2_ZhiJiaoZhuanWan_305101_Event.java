package cn.mucang.android.jiakaoyi.examk2.rule.zhijiaozhuanwan;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.o;
import cn.mucang.android.jiakaoyi.examk2.collision.j;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhiJiaoZhuanWanConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ZhiJiaoZhuanWan_305101_Event extends d<K2ZhiJiaoZhuanWanConfig> {
    public K2_ZhiJiaoZhuanWan_305101_Event(K2ZhiJiaoZhuanWanConfig k2ZhiJiaoZhuanWanConfig, Deduct deduct) {
        super(k2ZhiJiaoZhuanWanConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        o oVar = (o) bVar.f();
        C c = oVar.f3279a;
        if (!((j) c).v || ((j) c).x || (!((j) c).y && !((j) c).b)) {
            return true;
        }
        if (((Boolean) ((K2ZhiJiaoZhuanWanConfig) this.config).p405124.value).booleanValue() && oVar.b) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
