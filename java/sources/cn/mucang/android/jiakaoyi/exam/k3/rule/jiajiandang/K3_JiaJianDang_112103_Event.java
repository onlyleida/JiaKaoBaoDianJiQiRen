package cn.mucang.android.jiakaoyi.exam.k3.rule.jiajiandang;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiaJianDangStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class K3_JiaJianDang_112103_Event extends d<K3JiaJianDangStepConfig> {
    public K3_JiaJianDang_112103_Event(K3JiaJianDangStepConfig k3JiaJianDangStepConfig, Deduct deduct) {
        super(k3JiaJianDangStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return true;
    }
}
