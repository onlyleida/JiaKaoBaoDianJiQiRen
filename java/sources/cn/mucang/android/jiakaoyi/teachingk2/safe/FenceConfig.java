package cn.mucang.android.jiakaoyi.teachingk2.safe;

import cn.mucang.android.jiakaoyi.framework.utils.i0;

/* JADX INFO: loaded from: classes4.dex */
public enum FenceConfig {
    FenceOpenShow(1, "开启-显示"),
    FenceOpenHide(2, "开启-隐藏"),
    FenceClose(3, "关闭");

    public static final FenceConfig[] list = values();
    public final int index;
    public final String text;

    FenceConfig(int i, String str) {
        this.index = i;
        this.text = str;
    }

    public static int getCurSelectedPos(long j) {
        int fenceConfig = getFenceConfig(j);
        int i = 0;
        while (true) {
            FenceConfig[] fenceConfigArr = list;
            if (i >= fenceConfigArr.length) {
                return 0;
            }
            if (fenceConfig == fenceConfigArr[i].index) {
                return i;
            }
            i++;
        }
    }

    public static int getFenceConfig(long j) {
        return i0.d(getFenceKey(j), FenceOpenHide.index);
    }

    public static String getFenceKey(long j) {
        return "keyFenceConfig_" + j;
    }

    public static boolean isClose(long j) {
        return getFenceConfig(j) == FenceClose.index;
    }

    public static boolean isOpen(long j) {
        return getFenceConfig(j) == FenceOpenShow.index;
    }

    public static void setFenceConfig(long j, int i) {
        i0.k(getFenceKey(j), i);
    }
}
