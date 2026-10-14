package cn.mucang.android.jiakaoyi.signal.ai;

/* JADX INFO: loaded from: classes3.dex */
public class AIOtaMsgResult extends AIRecognitionModel {
    public static final int LoadFail = 2;
    public static final int LoadSuccessButCheckFail = 3;
    public static final int Loading = 0;
    public static final int OtherError = 5;
    public static final int SameVersion = 1;
    public static final int StartOta = 4;
    public static final int Success = 170;
    public final String desc;
    public final int msg;

    public AIOtaMsgResult(int i, String str) {
        this.msg = i;
        this.desc = str;
    }

    public String getMsgDesc() {
        String str = this.desc;
        if (str != null) {
            return str;
        }
        int i = this.msg;
        if (i == 0) {
            return "正在下载";
        }
        if (i == 1) {
            return "已是最新版本";
        }
        if (i == 2) {
            return "文件下载失败";
        }
        if (i != 3) {
            return i != 4 ? "未知" : "开始升级";
        }
        return "版本校验失败";
    }
}
