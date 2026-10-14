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
public class K2_ZhaiLuDiaoTou_309105_Event extends d<K2ZhaiLuDiaoTouConfig> {
    public K2_ZhaiLuDiaoTou_309105_Event(K2ZhaiLuDiaoTouConfig k2ZhaiLuDiaoTouConfig, Deduct deduct) {
        super(k2ZhaiLuDiaoTouConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!((i) ((n) bVar.f()).f3279a).G) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
