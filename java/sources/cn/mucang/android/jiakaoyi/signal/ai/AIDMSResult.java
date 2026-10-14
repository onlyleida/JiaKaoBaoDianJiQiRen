package cn.mucang.android.jiakaoyi.signal.ai;

/* JADX INFO: loaded from: classes3.dex */
public class AIDMSResult extends AIRecognitionModel {
    private int actionCode;

    public AIDMSResult() {
    }

    public int getActionCode() {
        return this.actionCode;
    }

    public String getActionDesc() {
        if (isNormal()) {
            return "无动作";
        }
        StringBuilder sb = new StringBuilder();
        if (isFatigue()) {
            sb.append("疲劳驾驶 ");
        }
        if (isSmoking()) {
            sb.append("抽烟 ");
        }
        if (isDrinking()) {
            sb.append("喝东西 ");
        }
        if (isPhoning()) {
            sb.append("打电话 ");
        }
        return sb.toString();
    }

    public boolean isDrinking() {
        return this.actionCode == 8;
    }

    public boolean isFatigue() {
        return this.actionCode == 1;
    }

    public boolean isNormal() {
        return this.actionCode == 0;
    }

    public boolean isPhoning() {
        return this.actionCode == 4;
    }

    public boolean isSmoking() {
        return this.actionCode == 2;
    }

    public void setActionCode(int i) {
        this.actionCode = i;
    }

    public AIDMSResult(int i) {
        this.actionCode = i;
    }
}
