package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.speech.SpeechManager;
import cn.mucang.android.jiakaoyi.speech.model.VoicePerformanceModel;
import cn.mucang.android.jiakaoyi.speech.utils.SpeechLogUtils;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.VoiceResultModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class l0 implements c<VoiceResultModel> {
    static /* synthetic */ void b(UnityMessage unityMessage) {
        String strA;
        SpeechLogUtils.c("VoiceResultHandler", "unity ret:" + ((VoiceResultModel) unityMessage.data).type);
        VoicePerformanceModel voicePerformanceModel = new VoicePerformanceModel();
        voicePerformanceModel.setGrade(TtsGrade.VoiceRobot);
        int i = ((VoiceResultModel) unityMessage.data).type;
        if (i == 0) {
            strA = k0.a(R.string.teachbase_can_not_do);
        } else if (i == 2) {
            strA = k0.a(R.string.teachbase_not_need_do);
        } else if (i != 3) {
            strA = i != 4 ? "" : k0.a(R.string.teachbase_cmd_parse_fail);
        } else {
            strA = k0.a(R.string.teachbase_page_can_not_execute);
        }
        voicePerformanceModel.setCloseAfterSpeak(true);
        voicePerformanceModel.setPlayText(strA);
        SpeechManager.f5839a.k(voicePerformanceModel);
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<VoiceResultModel> a(final UnityMessage<VoiceResultModel> unityMessage, Activity activity) {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.n
            @Override // java.lang.Runnable
            public final void run() {
                l0.b(unityMessage);
            }
        });
        return null;
    }
}
