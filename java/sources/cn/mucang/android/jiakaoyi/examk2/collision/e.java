package cn.mucang.android.jiakaoyi.examk2.collision;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.config.K2JinJiQingKuangConfig;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class e extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<cn.mucang.android.jiakaoyi.hpmap.a.a.g.g, K2JinJiQingKuangConfig> {
    private final cn.mucang.android.jiakaoyi.engine.g.b A;
    private final cn.mucang.android.jiakaoyi.engine.g.b B;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public Wheel x;
    public Boolean y;
    public Boolean z;

    class a extends SimpleTtsListener {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            e eVar = e.this;
            eVar.t = true;
            eVar.A.g();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.g> list, K2JinJiQingKuangConfig k2JinJiQingKuangConfig) {
        super(list, k2JinJiQingKuangConfig);
        this.s = false;
        this.t = false;
        this.u = false;
        this.v = false;
        this.x = Wheel.None;
        this.y = null;
        this.z = null;
        this.A = new cn.mucang.android.jiakaoyi.engine.g.b(((Integer) ((K2JinJiQingKuangConfig) this.f3693d).p410106.value).intValue() * 1000);
        this.B = new cn.mucang.android.jiakaoyi.engine.g.b(((Integer) ((K2JinJiQingKuangConfig) this.f3693d).p410109.value).intValue() * 1000);
    }

    private void I(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.g gVar) {
        boolean zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, gVar.l);
        this.w = zB;
        if (zB) {
            this.m = gVar.l;
            return;
        }
        boolean zB2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, gVar.m);
        this.w = zB2;
        if (zB2) {
            this.m = gVar.m;
        }
    }

    private void J(CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.g gVar) {
        Wheel wheelR = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, gVar.l);
        this.x = wheelR;
        Wheel wheel = Wheel.None;
        if (wheelR != wheel) {
            this.l = gVar.l;
            return;
        }
        Wheel wheelR2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.r(carPos, gVar.m);
        this.x = wheelR2;
        if (wheelR2 != wheel) {
            this.l = gVar.m;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.g.g gVar, ExamProcessor examProcessor) {
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = Boolean.FALSE;
        if (this.r == SubStep.None) {
            this.r = SubStep.Step1;
        }
        I(carPos, gVar);
        J(carPos, gVar);
        if (!this.s && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, gVar.k)) {
            this.s = true;
            String str = (String) ((K2JinJiQingKuangConfig) this.f3693d).p410112.value;
            TtsGrade ttsGrade = TtsGrade.SpecialVoice;
            a aVar = new a();
            C c = this.f3693d;
            D(str, ttsGrade, aVar, ((K2JinJiQingKuangConfig) c).p410112.ruleId, l.d(((K2JinJiQingKuangConfig) c).p410112.ruleId));
        }
        if (this.t && this.y == null && this.A.d()) {
            this.y = bool2;
            this.A.b();
        }
        if (this.f3695f) {
            if (this.A.e() && !this.A.d()) {
                this.y = bool;
                this.A.b();
            }
            this.u = true;
        }
        Boolean bool3 = this.y;
        if (bool3 != null && bool3.booleanValue() && this.z == null) {
            this.B.g();
            if (this.B.d()) {
                this.z = bool2;
                this.B.b();
            } else if (!eVar.d().j) {
                this.z = bool;
                this.B.b();
            }
        }
        if (!this.v && cn.mucang.android.jiakaoyi.hpmap.a.b.a.a(carPos, gVar.j)) {
            this.b = true;
            this.v = true;
        }
        if (this.b && this.u && this.v) {
            this.c = true;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b
    protected void w() {
        this.x = Wheel.None;
        this.w = false;
        this.r = SubStep.None;
    }
}
