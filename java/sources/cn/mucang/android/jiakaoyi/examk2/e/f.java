package cn.mucang.android.jiakaoyi.examk2.e;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.BoundaryChecker;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f<T extends cn.mucang.android.jiakaoyi.hpmap.a.a.b, C extends BaseStepConfig, BC extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<T, C>> implements cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final StringValue f3342a;
    private final BooleanValue b;
    private final StringValue c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final BooleanValue f3343d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BC f3344e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private BoundaryChecker f3347h;
    private float i = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3345f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3346g = false;

    public f(BooleanValue booleanValue, StringValue stringValue, BooleanValue booleanValue2, StringValue stringValue2, BC bc) {
        this.f3342a = stringValue;
        this.b = booleanValue;
        this.c = stringValue2;
        this.f3343d = booleanValue2;
        this.f3344e = bc;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0052 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:8:0x0042  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.f handle(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        BooleanValue booleanValue;
        BooleanValue booleanValue2;
        Step step = Step.K2_Global;
        BaseStepConfig baseStepConfigR = examProcessor.r(step);
        Objects.requireNonNull(baseStepConfigR);
        if (!((Boolean) ((K2GlobalConfig) baseStepConfigR).p401152.value).booleanValue()) {
            BaseStepConfig baseStepConfigR2 = examProcessor.r(step);
            Objects.requireNonNull(baseStepConfigR2);
            if (!((Boolean) ((K2GlobalConfig) baseStepConfigR2).p401126.value).booleanValue()) {
                BaseStepConfig baseStepConfigR3 = examProcessor.r(step);
                Objects.requireNonNull(baseStepConfigR3);
                if (((Boolean) ((K2GlobalConfig) baseStepConfigR3).p401159.value).booleanValue()) {
                    if (examProcessor.o().i().d(bVar.f3142e)) {
                        return null;
                    }
                }
            } else if (examProcessor.o().i().d(bVar.f3142e)) {
                return null;
            }
        } else if (examProcessor.o().i().d(bVar.f3142e)) {
            return null;
        }
        if ((examProcessor.f3104a.p == 2 && examProcessor.o().i().d(bVar.f3142e)) || examProcessor.z()) {
            return null;
        }
        this.f3344e.a(eVar, bVar, examProcessor);
        BoundaryChecker boundaryChecker = this.f3347h;
        if (boundaryChecker != null && boundaryChecker.c() == BoundaryChecker.BoundaryState.Outside) {
            this.f3347h = null;
            this.f3345f = false;
            if (((Boolean) ((K2GlobalConfig) examProcessor.f3104a.m.getConfig(step)).p401128.value).booleanValue() && eVar.d().B - this.i > 0.3d) {
                cn.mucang.android.jiakaoyi.framework.log.f.o(bVar.f3142e.zhStepName + "预报了以后又出项目了");
                examProcessor.f(step, new int[]{300105});
            }
        }
        if (this.f3344e.r() && (booleanValue2 = this.b) != null && ((Boolean) booleanValue2.value).booleanValue() && !this.f3345f && this.f3344e.i) {
            this.f3345f = true;
            if (this.f3342a != null) {
                TtsManager.H();
                this.i = eVar.d().B;
                this.f3347h = this.f3344e.k();
                cn.mucang.android.jiakaoyi.framework.log.f.o(bVar.f3142e.zhStepName + "播报了项目预报语音");
                StringValue stringValue = this.f3342a;
                String str = (String) stringValue.value;
                TtsGrade ttsGrade = TtsGrade.ExamDeduct;
                int i = stringValue.ruleId;
                examProcessor.I(str, ttsGrade, i, cn.mucang.android.jiakaoyi.framework.tts.voice.l.d(i));
            }
        }
        this.f3344e.A();
        if (this.f3344e.q() && (booleanValue = this.f3343d) != null && ((Boolean) booleanValue.value).booleanValue() && !this.f3346g) {
            this.f3346g = true;
            TtsManager.H();
            StringValue stringValue2 = this.c;
            String str2 = (String) stringValue2.value;
            TtsGrade ttsGrade2 = TtsGrade.ExamDeduct;
            int i2 = stringValue2.ruleId;
            examProcessor.I(str2, ttsGrade2, i2, cn.mucang.android.jiakaoyi.framework.tts.voice.l.d(i2));
        }
        if (!this.f3344e.s()) {
            return null;
        }
        if (examProcessor.f3104a.p == 2) {
            String str3 = ((cn.mucang.android.jiakaoyi.hpmap.a.a.e) this.f3344e.o).c;
            if (n0.g(str3)) {
                TtsManager.r(str3, TtsGrade.Teach);
            } else {
                TtsManager.r(this.f3344e.o.s().stepName, TtsGrade.Teach);
            }
        }
        this.f3347h = null;
        this.f3345f = false;
        return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.f();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public boolean isTrigger(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        return true;
    }
}
