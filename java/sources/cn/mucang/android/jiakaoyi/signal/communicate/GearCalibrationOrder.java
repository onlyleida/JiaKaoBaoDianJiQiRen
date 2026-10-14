package cn.mucang.android.jiakaoyi.signal.communicate;

import com.google.common.base.Ascii;

/* JADX INFO: loaded from: classes3.dex */
public enum GearCalibrationOrder {
    GearData((byte) 2, "挡位数据"),
    GyroscopeData((byte) 3, "陀螺仪数据"),
    Calibration((byte) 5, "下位机标定"),
    CalibrationUpload((byte) 6, "标定信息上传"),
    GearBoundary((byte) 8, "挡位边界信息"),
    ManualSettings(Ascii.VT, "（手动/自动）设置");

    public final String desc;
    public final byte order;

    GearCalibrationOrder(byte b, String str) {
        this.order = b;
        this.desc = str;
    }
}
