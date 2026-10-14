package cn.mucang.android.jiakaoyi.framework.tts.voice;

import cn.mucang.android.jiakaoyi.framework.tts.TtsConfig;
import cn.mucang.android.jiakaoyi.framework.tts.TtsSpeaker;
import cn.mucang.android.jiakaoyi.framework.utils.h0;

/* JADX INFO: loaded from: classes2.dex */
public class l {
    public static String a(o oVar) {
        TtsSpeaker ttsSpeaker = oVar.m;
        int iE = TtsConfig.e();
        return h0.d(oVar.c() + "-" + ttsSpeaker.getVoiceName() + "-" + ((iE < 0 || iE >= ttsSpeaker.getSpeedArray().length) ? 50 : ttsSpeaker.getSpeedArray()[iE]) + "-50");
    }

    public static String b(int i) {
        return "light_" + i;
    }

    public static String c(o oVar) {
        TtsSpeaker ttsSpeaker = oVar.m;
        int iE = TtsConfig.e();
        return h0.d(oVar.c() + "-" + ttsSpeaker.getVoiceName() + "-" + ((iE < 0 || iE >= ttsSpeaker.getSpeedArray().length) ? 50 : ttsSpeaker.getSpeedArray()[iE]) + "-50-yt576");
    }

    public static String d(int i) {
        return "rule_" + i;
    }
}
