package cn.mucang.android.core.utils;

import cn.mucang.android.core.config.MucangConfig;

/* JADX INFO: loaded from: classes.dex */
public class s0 {
    public static int a(float f2) {
        return (int) ((f2 * MucangConfig.getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }
}
