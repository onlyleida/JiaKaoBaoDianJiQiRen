package com.blankj.utilcode.util;

import android.graphics.Point;
import android.os.Build;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes5.dex */
public final class g {
    public static int a() {
        WindowManager windowManager = (WindowManager) Utils.d().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            windowManager.getDefaultDisplay().getRealSize(point);
        } else {
            windowManager.getDefaultDisplay().getSize(point);
        }
        return point.y;
    }
}
