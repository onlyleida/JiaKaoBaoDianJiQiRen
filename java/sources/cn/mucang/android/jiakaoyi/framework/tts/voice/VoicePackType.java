package cn.mucang.android.jiakaoyi.framework.tts.voice;

/* JADX INFO: loaded from: classes2.dex */
public enum VoicePackType {
    K2_Voice(101, "科二语音包"),
    K3_Voice(102, "科三语音包"),
    Robot_Voice(103, "机器人语音包");

    public final String name;
    public final int type;

    VoicePackType(int i, String str) {
        this.type = i;
        this.name = str;
    }
}
