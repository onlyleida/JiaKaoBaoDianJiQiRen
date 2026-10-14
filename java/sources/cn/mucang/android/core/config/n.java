package cn.mucang.android.core.config;

import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.framework.core.R;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class n extends androidx.appcompat.app.d implements t {
    protected static final int MODE_DARK = 1;
    protected static final int MODE_LIGHT = 0;
    protected o interceptor = new o(this, this);

    private int adjustStatusBarColor(int i) {
        int i2 = Build.VERSION.SDK_INT;
        return ((i2 == 21 || i2 == 22) && i == -1 && !o0.w()) ? Color.argb(255, 154, 154, 154) : i;
    }

    private void setContentViewReal(int i, View view) {
        setStatusBarColor(getResources().getColor(R.color.core__status_bar_color));
        setStatusBarMode(getStatusBarMode());
        if (view != null) {
            super.setContentView(view);
        } else {
            super.setContentView(i);
        }
    }

    @Deprecated
    public void fitsSystemWindow(boolean z) {
        setFitsSystemWindow(z);
    }

    @Override // cn.mucang.android.core.config.t
    public Map<String, Object> getProperties() {
        return null;
    }

    @Deprecated
    protected int getStatusBarMode() {
        return getResources().getInteger(R.integer.core__status_bar_mode);
    }

    @Deprecated
    protected boolean isFitsSystemWindow() {
        return true;
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.interceptor.b(bundle);
        j.b().a(this);
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.interceptor.c();
        j.b().c(this);
    }

    @Override // androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.interceptor.d();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        this.interceptor.e();
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.interceptor.f(bundle);
    }

    @Override // androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.interceptor.g();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.interceptor.h(bundle);
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.interceptor.i();
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.interceptor.j();
    }

    @Override // androidx.appcompat.app.d, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i) {
        setContentViewReal(i, null);
    }

    @Deprecated
    protected void setFitsSystemWindow(boolean z) {
    }

    public void setStatusBarColor(int i) {
        if (Build.VERSION.SDK_INT < 23) {
            i = adjustStatusBarColor(i);
        }
        getWindow().setStatusBarColor(i);
    }

    protected void setStatusBarMode(int i) {
        o0.z(i == 1, this);
    }

    public void setSwipeBackEnabled(boolean z) {
        if (z) {
            cn.mucang.android.core.widget.b.a.e().d(this);
        } else {
            cn.mucang.android.core.widget.b.a.e().c(this);
        }
    }

    @Override // androidx.appcompat.app.d, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        setContentViewReal(-1, view);
    }
}
