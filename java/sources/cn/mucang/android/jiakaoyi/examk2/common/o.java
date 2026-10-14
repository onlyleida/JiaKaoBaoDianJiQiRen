package cn.mucang.android.jiakaoyi.examk2.common;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class o {
    /* JADX WARN: Multi-variable type inference failed */
    public static void a(K2GlobalConfig k2GlobalConfig, BaseStepConfig baseStepConfig) {
        StringValue endVoiceValue;
        if (!((Boolean) k2GlobalConfig.p401159.value).booleanValue() || ((Boolean) k2GlobalConfig.p401160.value).booleanValue() || (endVoiceValue = baseStepConfig.getEndVoiceValue()) == null) {
            return;
        }
        String str = (String) endVoiceValue.value;
        TtsGrade ttsGrade = TtsGrade.ExamDeduct;
        int i = endVoiceValue.ruleId;
        TtsManager.t(str, ttsGrade, i, cn.mucang.android.jiakaoyi.framework.tts.voice.l.d(i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int b(K2GlobalConfig k2GlobalConfig, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z, List<cn.mucang.android.jiakaoyi.engine.model.a> list, long j) {
        boolean zBooleanValue = ((Boolean) k2GlobalConfig.p401149.value).booleanValue();
        int iIntValue = ((Integer) k2GlobalConfig.p401148.value).intValue();
        boolean zBooleanValue2 = ((Boolean) k2GlobalConfig.p401125.value).booleanValue();
        StringValue stringValue = k2GlobalConfig.p401150;
        StringValue stringValue2 = k2GlobalConfig.p401151;
        int i = 0;
        for (cn.mucang.android.jiakaoyi.engine.model.a aVar : list) {
            if (aVar.b >= j) {
                Deduct deduct = aVar.f3102a;
                Step step = deduct.step;
                if (step == bVar.f3142e) {
                    i += deduct.deductScore;
                }
                if (zBooleanValue2 && step == Step.K2_Global) {
                    i += deduct.deductScore;
                }
            }
        }
        if ((!z || !((Boolean) k2GlobalConfig.p401159.value).booleanValue() || !((Boolean) k2GlobalConfig.p401160.value).booleanValue()) && zBooleanValue) {
            if (100 - i >= iIntValue) {
                String str = (String) stringValue.value;
                TtsGrade ttsGrade = TtsGrade.ExamDeduct;
                int i2 = stringValue.ruleId;
                TtsManager.t(str, ttsGrade, i2, cn.mucang.android.jiakaoyi.framework.tts.voice.l.d(i2));
            } else {
                String str2 = (String) stringValue2.value;
                TtsGrade ttsGrade2 = TtsGrade.ExamDeduct;
                int i3 = stringValue2.ruleId;
                TtsManager.t(str2, ttsGrade2, i3, cn.mucang.android.jiakaoyi.framework.tts.voice.l.d(i3));
            }
        }
        return i;
    }
}
