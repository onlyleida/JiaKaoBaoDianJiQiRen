package cn.mucang.android.jiakaoyi.signal.ai;

/* JADX INFO: loaded from: classes3.dex */
public class AIHeadPoseResult extends AIRecognitionModel {
    private int headPose;

    public AIHeadPoseResult() {
    }

    public int getHeadPose() {
        return this.headPose;
    }

    public String getHeadPoseDesc() {
        int i = this.headPose;
        if (i == 0) {
            return "正常";
        }
        if (i == 1) {
            return "左摆头";
        }
        if (i == 2) {
            return "右摆头";
        }
        if (i == 4) {
            return "低头";
        }
        if (i != 5) {
            return i != 6 ? "未知" : "低头+右摆头";
        }
        return "低头+左摆头";
    }

    public boolean isBowHead() {
        return this.headPose == 4;
    }

    public boolean isHeadLeft() {
        return this.headPose == 1;
    }

    public boolean isHeadRight() {
        return this.headPose == 2;
    }

    public void setHeadPose(int i) {
        this.headPose = i;
    }

    public AIHeadPoseResult(int i) {
        this.headPose = i;
    }
}
