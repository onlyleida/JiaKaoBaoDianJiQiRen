package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.PlayVoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.UnityTtsMgr;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class r implements c<PlayVoiceModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<PlayVoiceModel> a(UnityMessage<PlayVoiceModel> unityMessage, Activity activity) {
        if (!UnityTtsMgr.b()) {
            f.o("unity tts 被禁用");
            return null;
        }
        T t = unityMessage.data;
        if (((PlayVoiceModel) t).play) {
            TtsManager.r(((PlayVoiceModel) t).voice, TtsGrade.GlobalTip);
        } else {
            TtsManager.H();
        }
        return null;
    }
}
