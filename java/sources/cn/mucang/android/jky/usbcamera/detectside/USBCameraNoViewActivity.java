package cn.mucang.android.jky.usbcamera.detectside;

import android.os.Bundle;
import android.widget.TextView;
import cn.mucang.android.jky.usbcamera.R;

/* JADX INFO: loaded from: classes4.dex */
public class USBCameraNoViewActivity extends androidx.appcompat.app.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextView f8859a;
    private final Runnable b = new a();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            USBCameraNoViewActivity.this.f8859a.setText("Distance : " + t.b());
            cn.mucang.android.core.utils.u.d(this, 500L);
        }
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_usbcamera);
        this.f8859a = (TextView) findViewById(R.id.detect_info);
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        t.a();
    }

    @Override // androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        t.h();
        cn.mucang.android.core.utils.u.e(this.b);
    }

    @Override // androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        t.k();
        t.i();
        cn.mucang.android.core.utils.u.c(this.b);
    }
}
