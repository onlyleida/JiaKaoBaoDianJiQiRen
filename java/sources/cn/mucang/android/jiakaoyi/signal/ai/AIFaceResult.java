package cn.mucang.android.jiakaoyi.signal.ai;

/* JADX INFO: loaded from: classes3.dex */
public class AIFaceResult extends AIRecognitionModel {
    public static final int ANGER = 3;
    public static final int SADNESS = 2;
    public static final int SURPRISE = 4;
    private int emotion;

    public AIFaceResult() {
    }

    public int getEmotion() {
        return this.emotion;
    }

    public String getEmotionDesc() {
        int i = this.emotion;
        if (i == 3) {
            return "生气";
        }
        if (i == 1) {
            return "高兴";
        }
        if (i == 2) {
            return "悲伤";
        }
        if (i == 4) {
            return "惊讶";
        }
        return i == 0 ? "正常" : "未知";
    }

    public void setEmotion(int i) {
        this.emotion = i;
    }

    public AIFaceResult(int i) {
        this.emotion = i;
    }
}
