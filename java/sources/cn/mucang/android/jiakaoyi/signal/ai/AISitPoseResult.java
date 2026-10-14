package cn.mucang.android.jiakaoyi.signal.ai;

/* JADX INFO: loaded from: classes3.dex */
public class AISitPoseResult extends AIRecognitionModel {
    private int angle;
    private int sitPoseType;

    public AISitPoseResult(int i, int i2) {
        this.sitPoseType = i;
        this.angle = i2;
    }

    public int getAngle() {
        return this.angle;
    }

    public String getSitPoseInfo() {
        int i = this.sitPoseType;
        if (i == 0) {
            return "正常:" + this.angle;
        }
        if (i == 1) {
            return "左偏:" + this.angle;
        }
        if (i == 2) {
            return "右偏:" + this.angle;
        }
        if (i == 4) {
            return "前倾:" + this.angle;
        }
        if (i == 5) {
            return "左偏+前倾:" + this.angle;
        }
        if (i != 6) {
            return "无动作:" + this.angle;
        }
        return "右偏+前倾:" + this.angle;
    }

    public int getSitPoseType() {
        return this.sitPoseType;
    }

    public void setAngle(int i) {
        this.angle = i;
    }

    public void setSitPoseType(int i) {
        this.sitPoseType = i;
    }
}
