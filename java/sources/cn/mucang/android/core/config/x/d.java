package cn.mucang.android.core.config.x;

import android.app.Activity;
import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    protected void a(boolean z, Activity activity) {
        if (Build.VERSION.SDK_INT >= 23) {
            View decorView = activity.getWindow().getDecorView();
            if (z) {
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
            } else {
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (-8193));
            }
        }
    }

    public abstract void b(boolean z, Activity activity);
}
