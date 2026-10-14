package cn.mucang.android.jiakaoyi.engine.model;

import com.google.mlkit.common.MlKitException;
import com.tencent.connect.common.Constants;
import java.io.Serializable;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes2.dex */
public enum KeMu implements Serializable {
    K3("科目三", "k3", 1, 100, "3"),
    K2("科目二", "k2", 101, 200, "2"),
    B2("B2", "b2", MlKitException.CODE_SCANNER_CANCELLED, 300, Constants.VIA_REPORT_TYPE_DATALINE),
    Moto("摩托车", "moto", Videoio.CAP_PROP_PVAPI_FRAMESTARTTRIGGERMODE, Videoio.CAP_PROP_XI_DOWNSAMPLING, "32");

    public final String dir;
    public final int max;
    public final int min;
    public final String name;
    public final String serverKeMu;

    KeMu(String str, String str2, int i, int i2, String str3) {
        this.name = str;
        this.dir = str2;
        this.min = i;
        this.max = i2;
        this.serverKeMu = str3;
    }

    public static KeMu getKeMu(String str) {
        KeMu keMu = K3;
        if (keMu.serverKeMu.equals(str)) {
            return keMu;
        }
        KeMu keMu2 = K2;
        if (keMu2.serverKeMu.equals(str)) {
            return keMu2;
        }
        KeMu keMu3 = B2;
        return keMu3.serverKeMu.equals(str) ? keMu3 : Moto;
    }

    public static KeMu getKeMuByStep(int i) {
        KeMu keMu = K3;
        if (i >= keMu.min && i <= keMu.max) {
            return keMu;
        }
        KeMu keMu2 = K2;
        if (i >= keMu2.min && i <= keMu2.max) {
            return keMu2;
        }
        KeMu keMu3 = B2;
        return (i < keMu3.min || i > keMu3.max) ? Moto : keMu3;
    }

    public static KeMu parse(int i) {
        if (i == 3) {
            return K3;
        }
        if (i == 2) {
            return K2;
        }
        return i == 22 ? B2 : Moto;
    }
}
