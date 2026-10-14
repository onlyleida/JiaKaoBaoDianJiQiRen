package cn.mucang.android.jiakaoyi.signal.ai;

/* JADX INFO: loaded from: classes3.dex */
public class AIDriveActionResult extends AIRecognitionModel {
    private int handType;

    public AIDriveActionResult() {
    }

    public int getHandType() {
        return this.handType;
    }

    public String getOpenDoorAction() {
        int i = this.handType;
        if (i == 0) {
            return "双手脱离方向盘";
        }
        if (i != 5) {
            return i != 6 ? "无动作" : "双手开门";
        }
        return "单手开门";
    }

    public String getSteerWheelAction() {
        int i = this.handType;
        if (i == 0) {
            return "双手脱离方向盘";
        }
        if (i == 1) {
            return "单左手";
        }
        if (i == 2) {
            return "单右手";
        }
        if (i != 3) {
            return i != 4 ? "无动作" : "双手交叉";
        }
        return "双手正常";
    }

    public boolean isHandLeft() {
        return this.handType == 1;
    }

    public boolean isHandRight() {
        return this.handType == 2;
    }

    public boolean isHandTypeNone() {
        return this.handType == 0;
    }

    public boolean isSingleHand() {
        return this.handType == 5;
    }

    public void setHandType(int i) {
        this.handType = i;
    }

    public AIDriveActionResult(int i) {
        this.handType = i;
    }
}
