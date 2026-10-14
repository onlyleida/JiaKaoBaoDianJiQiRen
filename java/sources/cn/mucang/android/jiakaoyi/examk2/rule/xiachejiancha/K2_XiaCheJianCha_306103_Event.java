package cn.mucang.android.jiakaoyi.examk2.rule.xiachejiancha;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.m;
import cn.mucang.android.jiakaoyi.examk2.config.K2XiaCheJianChaConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_XiaCheJianCha_306103_Event extends d<K2XiaCheJianChaConfig> {
    public K2_XiaCheJianCha_306103_Event(K2XiaCheJianChaConfig k2XiaCheJianChaConfig, Deduct deduct) {
        super(k2XiaCheJianChaConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (bVar.j()) {
            return !((m) bVar.f()).c;
        }
        return true;
    }
}
