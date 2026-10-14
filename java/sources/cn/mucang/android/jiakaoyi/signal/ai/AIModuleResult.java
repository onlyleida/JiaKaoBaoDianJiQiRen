package cn.mucang.android.jiakaoyi.signal.ai;

/* JADX INFO: loaded from: classes3.dex */
public class AIModuleResult extends AIRecognitionModel {
    public final int module;

    public AIModuleResult(int i) {
        this.module = i;
    }

    public String desc() {
        switch (this.module) {
            case 0:
                return "其他";
            case 1:
                return "方向盘";
            case 2:
                return "档杆";
            case 3:
                return "左后视镜";
            case 4:
                return "仪表盘";
            case 5:
                return "中控屏";
            case 6:
                return "灯光拨杆";
            case 7:
                return "雨刷拨杆";
            case 8:
                return "钥匙开关";
            default:
                return "无动作";
        }
    }
}
