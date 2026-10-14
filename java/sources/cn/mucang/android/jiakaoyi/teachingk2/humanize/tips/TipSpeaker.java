package cn.mucang.android.jiakaoyi.teachingk2.humanize.tips;

import android.text.TextUtils;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.speech.SpeechManager;
import cn.mucang.android.jiakaoyi.speech.model.VoicePerformanceModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.LoadingCloseModel;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.r, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J:\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002J6\u0010\u0015\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u00172\b\b\u0002\u0010\u0011\u001a\u00020\u0012JL\u0010\u0015\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\n2\u0014\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u001b2\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u00172\b\b\u0002\u0010\u0011\u001a\u00020\u0012JJ\u0010\u001c\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\u00172\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0010\u001a\u00020\b2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;", "", "arguments", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;", "(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;)V", "getArguments", "()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;", "getRuleCode", "", "rule", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;", "sendToUnity", "", "text", "", "voiceUrl", "code", "grade", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "speak", "whenFinish", "", "closeAfterSpeak", "showPanel", "replacement", "", "startVoiceInteraction", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TipSpeaker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TipsArguments f7208a;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.r$a */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker$speak$2", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;", "callback", "", "data", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.framework.tts.voice.o> {
        final /* synthetic */ boolean b;
        final /* synthetic */ Ref$ObjectRef<String> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f7210d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f7211e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ TtsGrade f7212f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ TipsRule f7213g;

        a(boolean z, Ref$ObjectRef<String> ref$ObjectRef, String str, boolean z2, TtsGrade ttsGrade, TipsRule tipsRule) {
            this.b = z;
            this.c = ref$ObjectRef;
            this.f7210d = str;
            this.f7211e = z2;
            this.f7212f = ttsGrade;
            this.f7213g = tipsRule;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void callback(cn.mucang.android.jiakaoyi.framework.tts.voice.o oVar) {
            if (TextUtils.isEmpty(oVar == null ? null : oVar.c)) {
                TtsManager.f3517a.p(this);
                TtsManager.H();
                TipSpeaker tipSpeaker = TipSpeaker.this;
                TipSpeaker.i(tipSpeaker, this.b, this.c.element, this.f7210d, this.f7211e, this.f7212f, tipSpeaker.b(this.f7213g), null, 64, null);
            }
        }
    }

    public TipSpeaker(TipsArguments tipsArguments) {
        this.f7208a = tipsArguments;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int b(TipsRule tipsRule) {
        String ruleCode;
        try {
            Result.Companion companion = Result.INSTANCE;
            Integer numValueOf = null;
            if (tipsRule != null && (ruleCode = tipsRule.getRuleCode()) != null) {
                numValueOf = Integer.valueOf(Integer.parseInt(ruleCode));
            }
            kotlin.jvm.internal.r.c(numValueOf);
            return numValueOf.intValue();
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
            return 0;
        }
    }

    private final void c(String str, String str2, int i, TtsGrade ttsGrade, TtsListener ttsListener) {
        SpeechManager speechManager = SpeechManager.f5839a;
        VoicePerformanceModel voicePerformanceModel = new VoicePerformanceModel();
        voicePerformanceModel.setPlayText(str);
        voicePerformanceModel.setCloseAfterSpeak(true);
        voicePerformanceModel.setGrade(ttsGrade);
        voicePerformanceModel.setCode(i);
        voicePerformanceModel.setVoiceUrl(str2);
        voicePerformanceModel.setListener(ttsListener);
        v vVar = v.f15822a;
        speechManager.r(voicePerformanceModel);
    }

    public static /* synthetic */ void f(TipSpeaker tipSpeaker, TipsRule tipsRule, Map map, boolean z, boolean z2, boolean z3, TtsGrade ttsGrade, int i, Object obj) {
        boolean z4 = (i & 4) != 0 ? false : z;
        boolean z5 = (i & 8) != 0 ? true : z2;
        boolean z6 = (i & 16) != 0 ? true : z3;
        if ((i & 32) != 0) {
            ttsGrade = TtsGrade.ActiveRemember;
        }
        tipSpeaker.d(tipsRule, map, z4, z5, z6, ttsGrade);
    }

    public static /* synthetic */ void g(TipSpeaker tipSpeaker, TipsRule tipsRule, boolean z, boolean z2, boolean z3, TtsGrade ttsGrade, int i, Object obj) {
        boolean z4 = (i & 2) != 0 ? false : z;
        boolean z5 = (i & 4) != 0 ? true : z2;
        boolean z6 = (i & 8) != 0 ? true : z3;
        if ((i & 16) != 0) {
            ttsGrade = TtsGrade.ActiveRemember;
        }
        tipSpeaker.e(tipsRule, z4, z5, z6, ttsGrade);
    }

    public static /* synthetic */ void i(TipSpeaker tipSpeaker, boolean z, String str, String str2, boolean z2, TtsGrade ttsGrade, int i, TtsListener ttsListener, int i2, Object obj) {
        tipSpeaker.h(z, str, str2, z2, (i2 & 16) != 0 ? TtsGrade.ActiveRemember : ttsGrade, (i2 & 32) != 0 ? -1 : i, (i2 & 64) != 0 ? null : ttsListener);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v11, types: [T, java.lang.String] */
    public final void d(TipsRule rule, Map<String, String> map, boolean z, boolean z2, boolean z3, TtsGrade grade) {
        kotlin.jvm.internal.r.e(rule, "rule");
        kotlin.jvm.internal.r.e(grade, "grade");
        TipsArguments tipsArguments = this.f7208a;
        if (tipsArguments == null) {
            return;
        }
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = tipsArguments.getNoticeMessage(rule.getRuleCode());
        if (!(map == null || map.isEmpty())) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                ref$ObjectRef.element = kotlin.text.t.x((String) ref$ObjectRef.element, entry.getKey(), entry.getValue(), false, 4, null);
            }
        }
        String voiceUrl = tipsArguments.getVoiceUrl(rule.getRuleCode());
        if (TextUtils.isEmpty((CharSequence) ref$ObjectRef.element)) {
            return;
        }
        if (rule.getOnceADay() && TipsArguments.triggerToday$default(tipsArguments, rule.getRuleCode(), null, 2, null)) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("触发语音助手：" + rule.getRuleCode() + '-' + ((String) ref$ObjectRef.element) + "，今天已播放一次");
            return;
        }
        if (rule.getOnceADay()) {
            TipsArguments.updateTodayTimes$default(tipsArguments, rule.getRuleCode(), null, 2, null);
        }
        if (!tipsArguments.needSpeak(rule)) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("触发语音助手：" + rule.getRuleCode() + '-' + ((String) ref$ObjectRef.element) + "，播放次数已大最大");
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("触发语音助手-低音通道：" + rule.getRuleCode() + '-' + ((String) ref$ObjectRef.element));
        tipsArguments.updateRuleTimes(rule.getRuleCode());
        if (z) {
            TtsManager.f3517a.c(new a(z3, ref$ObjectRef, voiceUrl, z2, grade, rule));
        } else {
            i(this, z3, (String) ref$ObjectRef.element, voiceUrl, z2, grade, b(rule), null, 64, null);
        }
    }

    public final void e(TipsRule rule, boolean z, boolean z2, boolean z3, TtsGrade grade) {
        kotlin.jvm.internal.r.e(rule, "rule");
        kotlin.jvm.internal.r.e(grade, "grade");
        d(rule, null, z, z2, z3, grade);
    }

    public final void h(boolean z, String str, String str2, boolean z2, TtsGrade grade, int i, TtsListener ttsListener) {
        kotlin.jvm.internal.r.e(grade, "grade");
        if (LoadingCloseModel.isUnityLoaded) {
            if ((grade == TtsGrade.GlobalError || grade == TtsGrade.GlobalRemind || grade == TtsGrade.ActiveRemember) && i > 0 && !kotlin.jvm.internal.r.a(TipsRule.GUIDE_100106.getRuleCode(), String.valueOf(i)) && !kotlin.jvm.internal.r.a(TipsRule.GUIDE_100107.getRuleCode(), String.valueOf(i)) && !kotlin.jvm.internal.r.a(TipsRule.GUIDE_100108.getRuleCode(), String.valueOf(i))) {
                TtsManager.D(str, str2, grade, ttsListener);
                return;
            }
            if (!z) {
                c(str, str2, i, grade, ttsListener);
                return;
            }
            if (z2) {
                if (TextUtils.isEmpty(str2)) {
                    c(str, null, i, grade, ttsListener);
                    return;
                } else {
                    c(str, str2, i, grade, ttsListener);
                    return;
                }
            }
            SpeechManager speechManager = SpeechManager.f5839a;
            VoicePerformanceModel voicePerformanceModel = new VoicePerformanceModel();
            voicePerformanceModel.setPlayText(str);
            voicePerformanceModel.setVoiceUrl(str2);
            voicePerformanceModel.setCloseAfterSpeak(false);
            voicePerformanceModel.setGrade(grade);
            v vVar = v.f15822a;
            speechManager.r(voicePerformanceModel);
        }
    }
}
