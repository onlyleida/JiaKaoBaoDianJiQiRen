package cn.mucang.android.jiakaoyi.framework.consts;

import com.google.mlkit.common.MlKitException;
import org.opencv.imgproc.Imgproc;

/* JADX INFO: loaded from: classes2.dex */
public enum BoxVersion {
    Version1(1, "V1.0（有OBD）"),
    Version2(2, "V2.0免破（有OBD）"),
    Version3(3, "V2.0破线（有OBD）"),
    Version4(4, "V3.0（有OBD）"),
    Version81(129, "V1.0（无OBD）"),
    Version82(130, "V2.0免破（无OBD）"),
    Version83(Imgproc.COLOR_RGB2YUV_YV12, "V2.0破线（无OBD）"),
    Version84(132, "V3.0（无OBD）"),
    VersionRobot(MlKitException.CODE_SCANNER_CANCELLED, "机器人");

    public final int id;
    public final String versionName;

    BoxVersion(int i, String str) {
        this.id = i;
        this.versionName = str;
    }

    public static BoxVersion parse(int i) {
        for (BoxVersion boxVersion : values()) {
            if (boxVersion.id == i) {
                return boxVersion;
            }
        }
        return null;
    }

    public boolean hasOBD() {
        int i = this.id;
        return i == 1 || i == 2 || i == 3 || i == 4;
    }

    public boolean useBoxSignal2() {
        int i = this.id;
        return i == 2 || i == 130;
    }

    public boolean useBoxSignal3() {
        int i = this.id;
        return i == 3 || i == 4 || i == 131 || i == 132;
    }
}
