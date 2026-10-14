package cn.mucang.android.jiakaoyi.exam.k3.starter;

import android.location.Location;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b;
import cn.mucang.android.jiakaoyi.exam.R;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BaseStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ZhiXianStepConfig;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.framework.utils.g0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class K3BaseStarter<T extends K3BaseStepConfig> extends b<T> {
    private K3ChaoCheStepConfig chaoCheStepConfig;
    private K3DiaoTouStepConfig diaoTouStepConfig;
    private boolean hasInit;
    private boolean isPlayDingDong;
    private boolean isPlayJudgeVoice;
    private BooleanValue isPlayingJudgeVoice;
    private StringValue judgeVoiceTips;
    private K3QiBuStepConfig qiBuStepConfig;
    private K3TingCheStepConfig tingCheStepConfig;
    private K3ZhiXianStepConfig zhixianStepConfig;

    public K3BaseStarter(T t, Deduct deduct, Location location, OptionsValue optionsValue, IntegerValue integerValue, StringValue stringValue) {
        this(t, deduct, location, optionsValue, integerValue, stringValue, null, null, null, null);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b
    protected boolean canPlayStartVoice(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return bVar.f3143f.f3085e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b
    protected boolean canStart(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        Step step;
        K3GlobalStepConfig k3GlobalStepConfig;
        if (!this.hasInit && (k3GlobalStepConfig = (K3GlobalStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_Global)) != null) {
            this.isPlayDingDong = Arrays.asList(((String) k3GlobalStepConfig.p200263.value).split(",")).contains(String.valueOf(bVar.f3142e.type));
            this.hasInit = true;
        }
        if (this.chaoCheStepConfig == null) {
            this.chaoCheStepConfig = (K3ChaoCheStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_ChaoChe);
        }
        K3ChaoCheStepConfig k3ChaoCheStepConfig = this.chaoCheStepConfig;
        if (k3ChaoCheStepConfig != null && ((Boolean) k3ChaoCheStepConfig.p206143.value).booleanValue() && examProcessor.y(Step.K3_ChaoChe)) {
            if (z) {
                u.h("超车项目正在进行,无法开始其他项目");
                TtsManager.r("超车项目正在进行,无法开始其他项目", TtsGrade.ExamTip);
            }
            return false;
        }
        if (this.tingCheStepConfig == null) {
            this.tingCheStepConfig = (K3TingCheStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_TingChe);
        }
        K3TingCheStepConfig k3TingCheStepConfig = this.tingCheStepConfig;
        if (k3TingCheStepConfig != null && ((Boolean) k3TingCheStepConfig.p216103.value).booleanValue() && examProcessor.y(Step.K3_TingChe)) {
            if (z) {
                u.h("靠边停车项目正在进行,无法开始其他项目");
                TtsManager.r("靠边停车项目正在进行,无法开始其他项目", TtsGrade.ExamTip);
            }
            return false;
        }
        if (this.qiBuStepConfig == null) {
            this.qiBuStepConfig = (K3QiBuStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_QiBu);
        }
        K3QiBuStepConfig k3QiBuStepConfig = this.qiBuStepConfig;
        if (k3QiBuStepConfig != null && ((Boolean) k3QiBuStepConfig.p203103.value).booleanValue() && examProcessor.y(Step.K3_QiBu)) {
            if (z) {
                u.h("起步项目正在进行,无法开始其他项目");
                TtsManager.r("起步项目正在进行,无法开始其他项目", TtsGrade.ExamTip);
            }
            return false;
        }
        if (this.diaoTouStepConfig == null) {
            this.diaoTouStepConfig = (K3DiaoTouStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_DiaoTou);
        }
        K3DiaoTouStepConfig k3DiaoTouStepConfig = this.diaoTouStepConfig;
        if (k3DiaoTouStepConfig != null && ((Boolean) k3DiaoTouStepConfig.p210137.value).booleanValue() && examProcessor.y(Step.K3_DiaoTou)) {
            if (z) {
                u.h("掉头项目正在进行,无法开始其他项目");
                TtsManager.r("掉头项目正在进行,无法开始其他项目", TtsGrade.ExamTip);
            }
            return false;
        }
        if (this.zhixianStepConfig == null) {
            this.zhixianStepConfig = (K3ZhiXianStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_ZhiXian);
        }
        K3ZhiXianStepConfig k3ZhiXianStepConfig = this.zhixianStepConfig;
        if (k3ZhiXianStepConfig == null || !((Boolean) k3ZhiXianStepConfig.p204118.value).booleanValue() || !examProcessor.y(Step.K3_ZhiXian) || ((step = bVar.f3142e) != Step.K3_BusStation && step != Step.K3_BanMaXian && step != Step.K3_School && step != Step.K3_LuKouZhiXing)) {
            return super.canStart(eVar, examProcessor, bVar, z);
        }
        if (z) {
            u.h("直线行驶项目正在进行,无法开始减速类项目");
            TtsManager.r("直线行驶项目正在进行,无法开始减速类项目", TtsGrade.ExamTip);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public boolean isTrigger(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        BooleanValue booleanValue;
        boolean zIsTrigger = super.isTrigger(eVar, examProcessor, bVar, z);
        if (zIsTrigger && !this.isPlayJudgeVoice && (booleanValue = this.isPlayingJudgeVoice) != null && this.judgeVoiceTips != null) {
            this.isPlayJudgeVoice = true;
            if (((Boolean) booleanValue.value).booleanValue() && n0.g((String) this.judgeVoiceTips.value)) {
                StringValue stringValue = this.judgeVoiceTips;
                String str = (String) stringValue.value;
                TtsGrade ttsGrade = TtsGrade.ExamTip;
                int i = stringValue.ruleId;
                TtsManager.t(str, ttsGrade, i, l.d(i));
            }
        }
        return zIsTrigger;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b
    protected void playingStartVoiceAfter(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        super.playingStartVoiceAfter(eVar, examProcessor, bVar, z);
        if (this.isPlayDingDong) {
            g0.c(R.raw.dingdong, new cn.mucang.android.jiakaoyi.framework.h.b<Boolean>() { // from class: cn.mucang.android.jiakaoyi.exam.k3.starter.K3BaseStarter.1
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public void callback(Boolean bool) {
                }
            });
        }
    }

    public K3BaseStarter(T t, Deduct deduct, Location location, OptionsValue optionsValue, IntegerValue integerValue, StringValue stringValue, BooleanValue booleanValue, BooleanValue booleanValue2) {
        this(t, deduct, location, optionsValue, integerValue, stringValue, booleanValue, booleanValue2, null, null);
    }

    public K3BaseStarter(T t, Deduct deduct, Location location, OptionsValue optionsValue, IntegerValue integerValue, StringValue stringValue, BooleanValue booleanValue, BooleanValue booleanValue2, BooleanValue booleanValue3, StringValue stringValue2) {
        super(t, deduct, location, optionsValue, integerValue, stringValue, booleanValue, booleanValue2);
        this.isPlayingJudgeVoice = booleanValue3;
        this.judgeVoiceTips = stringValue2;
    }
}
