package cn.mucang.android.jiakaoyi.teachingk2.res.voice;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class TeachVoiceModel implements Serializable {
    public static final int TypeError = 2;
    public static final int TypeTeach = 1;
    public String errorVoiceUrl;
    public String highVoiceUrl;
    public String lowVoiceUrl;
    public String middleVoiceUrl;
    public int type;
    public String vid;

    public String key() {
        return this.vid + "-" + this.type;
    }

    public static String key(String str, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("-");
        sb.append(z ? 2 : 1);
        return sb.toString();
    }
}
