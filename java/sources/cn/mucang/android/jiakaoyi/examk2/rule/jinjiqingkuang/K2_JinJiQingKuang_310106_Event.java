package cn.mucang.android.jiakaoyi.examk2.rule.jinjiqingkuang;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.f;
import cn.mucang.android.jiakaoyi.examk2.config.K2JinJiQingKuangConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_JinJiQingKuang_310106_Event extends d<K2JinJiQingKuangConfig> {
    public K2_JinJiQingKuang_310106_Event(K2JinJiQingKuangConfig k2JinJiQingKuangConfig, Deduct deduct) {
        super(k2JinJiQingKuangConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        f fVar = (f) bVar.f();
        C c = fVar.f3279a;
        if (((cn.mucang.android.jiakaoyi.examk2.collision.e) c).y == null || !((cn.mucang.android.jiakaoyi.examk2.collision.e) c).y.booleanValue() || ((cn.mucang.android.jiakaoyi.examk2.collision.e) fVar.f3279a).z == null) {
            return true;
        }
        setDoNotExecute(true);
        return ((cn.mucang.android.jiakaoyi.examk2.collision.e) fVar.f3279a).z.booleanValue();
    }
}
