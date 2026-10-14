package cn.mucang.android.jiakaoyi.examk2.rule.zhijiaozhuanwan;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.o;
import cn.mucang.android.jiakaoyi.examk2.collision.j;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhiJiaoZhuanWanConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ZhiJiaoZhuanWan_305107_Event extends d<K2ZhiJiaoZhuanWanConfig> {
    private boolean hasMoveCar;
    private final b timeoutCheck;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_ZhiJiaoZhuanWan_305107_Event(K2ZhiJiaoZhuanWanConfig k2ZhiJiaoZhuanWanConfig, Deduct deduct) {
        super(k2ZhiJiaoZhuanWanConfig, deduct);
        this.timeoutCheck = new b(((Integer) ((K2ZhiJiaoZhuanWanConfig) this.config).p405114.value).intValue() * 1000);
        this.hasMoveCar = true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (((j) ((o) bVar.f()).f3279a).f3695f) {
            if (!this.timeoutCheck.e() && this.hasMoveCar) {
                this.timeoutCheck.g();
                this.hasMoveCar = true;
            }
            if (this.timeoutCheck.d()) {
                this.timeoutCheck.b();
                this.hasMoveCar = false;
                return false;
            }
        } else {
            this.hasMoveCar = true;
            this.timeoutCheck.b();
        }
        return true;
    }
}
