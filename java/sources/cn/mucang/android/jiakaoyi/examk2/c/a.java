package cn.mucang.android.jiakaoyi.examk2.c;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a<SC extends BaseStepConfig, BD extends b, BC extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<BD, SC>> implements e {
    protected final BC checker;
    protected final StringValue endVoiceText;
    protected final BooleanValue needEndVoice;

    public a(BC bc, BooleanValue booleanValue, StringValue stringValue) {
        this.checker = bc;
        this.endVoiceText = stringValue;
        this.needEndVoice = booleanValue;
    }

    protected void doFixed(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public f handle(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        doFixed(eVar, examProcessor, bVar);
        if (!this.checker.b) {
            return null;
        }
        T t = this.needEndVoice.value;
        if (t != 0 && ((Boolean) t).booleanValue()) {
            StringValue stringValue = this.endVoiceText;
            String str = (String) stringValue.value;
            TtsGrade ttsGrade = TtsGrade.ExamDeduct;
            int i = stringValue.ruleId;
            examProcessor.I(str, ttsGrade, i, l.d(i));
        }
        onFinish(eVar, examProcessor, bVar);
        return new f();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public boolean isTrigger(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        return true;
    }

    protected void onFinish(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
    }
}
