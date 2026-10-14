package cn.mucang.android.jiakaoyi.teachingk2.ui.settings;

import cn.mucang.android.jiakaoyi.framework.utils.i0;

/* JADX INFO: loaded from: classes4.dex */
public enum BrakeReleaseType {
    None(0, ""),
    PopUpWindow(1, "弹窗解刹"),
    AUTO(2, "自动解刹");

    public final int type;
    public final String typeName;

    BrakeReleaseType(int i, String str) {
        this.type = i;
        this.typeName = str;
    }

    public static boolean isPopup() {
        BrakeReleaseType brakeReleaseType = PopUpWindow;
        return i0.d("keyTeachingBRModule", brakeReleaseType.type) == brakeReleaseType.type;
    }
}
