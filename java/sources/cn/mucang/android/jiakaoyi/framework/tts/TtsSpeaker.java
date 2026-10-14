package cn.mucang.android.jiakaoyi.framework.tts;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u000e\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;", "", "speakerName", "", "voiceName", "speedArray", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)V", "getSpeedArray", "()[I", "getVoiceName", "()Ljava/lang/String;", "XiaoYan", "XuJiu", "XiaoLu", "XuXiaoBao", "YiFei", "XiaoJing", "MengMeng", "Padiguli", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum TtsSpeaker {
    XiaoYan("小燕", "x2_xiaoyan", new int[]{30, 40, 50, 60, 70}),
    XuJiu("许久", "aisjiuxu", new int[]{30, 40, 50, 60, 70}),
    XiaoLu("小露", "x2_yezi", new int[]{25, 35, 45, 55, 65}),
    XuXiaoBao("许小宝", "aisbabyxu", new int[]{30, 40, 50, 60, 70}),
    YiFei("一菲", "x2_yifei", new int[]{20, 30, 40, 50, 60}),
    XiaoJing("小婧", "aisjinger", new int[]{30, 40, 50, 60, 70}),
    MengMeng("萌萌", "x_mengmenghappy", new int[]{40, 50, 55, 60, 65}),
    Padiguli("帕蒂古里", "patiguli", new int[]{40, 45, 50, 55, 60});

    private final String speakerName;
    private final int[] speedArray;
    private final String voiceName;

    TtsSpeaker(String str, String str2, int[] iArr) {
        this.speakerName = str;
        this.voiceName = str2;
        this.speedArray = iArr;
    }

    public final int[] getSpeedArray() {
        return this.speedArray;
    }

    public final String getVoiceName() {
        return this.voiceName;
    }
}
