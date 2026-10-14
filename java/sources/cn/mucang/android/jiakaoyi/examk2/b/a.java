package cn.mucang.android.jiakaoyi.examk2.b;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.R;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.utils.k0;

/* JADX INFO: loaded from: classes2.dex */
public class a extends g<K2CeFangTingCheConfig, cn.mucang.android.jiakaoyi.hpmap.a.a.g.b, cn.mucang.android.jiakaoyi.examk2.collision.b> {
    private boolean b;
    public boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3273d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3275f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3276g;

    public a(K2CeFangTingCheConfig k2CeFangTingCheConfig, cn.mucang.android.jiakaoyi.examk2.collision.b bVar) {
        super(k2CeFangTingCheConfig, bVar);
        this.c = false;
        this.f3273d = false;
        this.f3274e = false;
        this.f3275f = false;
        this.f3276g = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.examk2.b.g, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        long jIntValue = ((Integer) ((K2CeFangTingCheConfig) this.config).p406107.value).intValue() * 1000;
        if (!((Boolean) ((K2CeFangTingCheConfig) this.config).p406110.value).booleanValue() || this.b) {
            return;
        }
        C c = this.f3279a;
        if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c).o0 == 0 || (((cn.mucang.android.jiakaoyi.examk2.collision.b) c).o0 + jIntValue) - examProcessor.i > 12500.0d) {
            return;
        }
        examProcessor.H(k0.a(R.string.cefang_countdown_10), TtsGrade.SpecialVoice);
        this.b = true;
    }
}
