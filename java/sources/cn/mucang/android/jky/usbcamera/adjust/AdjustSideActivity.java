package cn.mucang.android.jky.usbcamera.adjust;

import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.os.Bundle;
import android.os.Debug;
import android.util.Log;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jky.usbcamera.R;
import cn.mucang.android.jky.usbcamera.detectside.USBCameraActivity;
import com.serenegiant.usb.CameraDialog;
import com.serenegiant.usb.USBMonitor;
import com.serenegiant.usb.common.AbstractUVCCameraHandler;
import com.serenegiant.usb.widget.CameraViewInterface;
import org.opencv.android.BaseLoaderCallback;
import org.opencv.android.OpenCVLoader;

/* JADX INFO: loaded from: classes4.dex */
public class AdjustSideActivity extends f.a.a.e.a.a.a implements CameraDialog.CameraDialogParent, CameraViewInterface.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View f8829a;
    public TextView b;
    private g.e.a.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CameraViewInterface f8830d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f8831e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8832f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final g.e.a.a.b f8833g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final BaseLoaderCallback f8834h = new b(this, this);

    class a implements g.e.a.a.b {
        a() {
        }

        @Override // g.e.a.a.b
        public void a(UsbDevice usbDevice) {
            if (AdjustSideActivity.this.f8831e) {
                AdjustSideActivity.this.f8831e = false;
                AdjustSideActivity.this.c.d();
                AdjustSideActivity.this.x(usbDevice.getDeviceName() + " is out");
            }
        }

        @Override // g.e.a.a.b
        public void b(UsbDevice usbDevice) {
            AdjustSideActivity.this.x("摄像头断开连接");
        }

        @Override // g.e.a.a.b
        public void c(UsbDevice usbDevice, boolean z) {
            if (z) {
                AdjustSideActivity.this.f8832f = true;
                AdjustSideActivity.this.x("摄像头已连接");
            } else {
                AdjustSideActivity.this.x("摄像头连接失败");
                AdjustSideActivity.this.f8832f = false;
            }
        }

        @Override // g.e.a.a.b
        public void d(UsbDevice usbDevice) {
            if (AdjustSideActivity.this.f8831e) {
                return;
            }
            AdjustSideActivity.this.f8831e = true;
            if (AdjustSideActivity.this.c != null) {
                AdjustSideActivity.this.c.p(0);
            }
        }
    }

    class b extends BaseLoaderCallback {
        b(AdjustSideActivity adjustSideActivity, Context context) {
            super(context);
        }

        @Override // org.opencv.android.BaseLoaderCallback, org.opencv.android.LoaderCallbackInterface
        public void onManagerConnected(int i) {
            if (i != 0) {
                super.onManagerConnected(i);
            } else {
                Log.i("Debug", "OpenCV loaded successfully");
            }
        }
    }

    private void l() {
        if (OpenCVLoader.initDebug()) {
            Log.e("Debug", "OpenCV library found inside package. Using it!");
            this.f8834h.onManagerConnected(0);
        } else {
            Log.e("Debug", "Internal OpenCV library not found. Using OpenCV Manager for initialization");
            OpenCVLoader.initAsync(OpenCVLoader.OPENCV_VERSION, this, this.f8834h);
        }
    }

    private void m() {
        findViewById(R.id.backIv).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jky.usbcamera.adjust.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f8837a.o(view);
            }
        });
        ((TextView) findViewById(R.id.titleTv)).setText("靠边停车设置");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void o(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void q() {
        startActivity(new Intent(this, (Class<?>) USBCameraActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void s(String str) {
        this.b.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void u(View view) {
        finish();
        g.e.a.a aVar = this.c;
        if (aVar != null) {
            aVar.o();
        }
        u.d(new Runnable() { // from class: cn.mucang.android.jky.usbcamera.adjust.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f8838a.q();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void w(byte[] bArr) {
        String str = "onPreviewResult: " + bArr.length + "\n , width = " + this.c.h() + "\n , height = " + this.c.g() + "\n , height*width*1.5 = " + (((this.c.h() * this.c.g()) * 3) / 2);
        Log.d("Debug", str);
        final String str2 = "最大=" + ((((int) Debug.getNativeHeapSize()) / 1024) / 1024) + "M,总用=" + ((((int) Debug.getNativeHeapAllocatedSize()) / 1024) / 1024) + "M,剩余=" + ((((int) Debug.getNativeHeapFreeSize()) / 1024) / 1024) + "M\n" + str;
        runOnUiThread(new Runnable() { // from class: cn.mucang.android.jky.usbcamera.adjust.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f8840a.s(str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(String str) {
        Toast.makeText(this, str, 0).show();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "边线校准页面";
    }

    @Override // com.serenegiant.usb.CameraDialog.CameraDialogParent
    public USBMonitor getUSBMonitor() {
        return this.c.i();
    }

    @Override // f.a.a.e.a.a.a, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_usbcamera_adjust);
        m();
        this.f8829a = findViewById(R.id.camera_view);
        this.b = (TextView) findViewById(R.id.memory);
        if (MucangConfig.v()) {
            this.b.setVisibility(0);
        } else {
            this.b.setVisibility(8);
        }
        View viewFindViewById = findViewById(R.id.toTest);
        if (MucangConfig.v()) {
            viewFindViewById.setVisibility(0);
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jky.usbcamera.adjust.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f8839a.u(view);
                }
            });
        } else {
            viewFindViewById.setVisibility(8);
        }
        CameraViewInterface cameraViewInterface = (CameraViewInterface) this.f8829a;
        this.f8830d = cameraViewInterface;
        cameraViewInterface.setCallback(this);
        g.e.a.a aVarF = g.e.a.a.f();
        this.c = aVarF;
        aVarF.q(1);
        this.c.k(this, this.f8830d, this.f8833g);
        View viewFindViewById2 = findViewById(R.id.video_container);
        ViewGroup.LayoutParams layoutParams = viewFindViewById2.getLayoutParams();
        layoutParams.height = (layoutParams.width * this.c.g()) / this.c.h();
        viewFindViewById2.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = this.f8829a.getLayoutParams();
        layoutParams2.width = layoutParams.width;
        layoutParams2.height = layoutParams.height;
        this.f8829a.setLayoutParams(layoutParams2);
        this.c.r(new AbstractUVCCameraHandler.OnPreViewResultListener() { // from class: cn.mucang.android.jky.usbcamera.adjust.a
            @Override // com.serenegiant.usb.common.AbstractUVCCameraHandler.OnPreViewResultListener
            public final void onPreviewResult(byte[] bArr) {
                this.f8836a.w(bArr);
            }
        });
        new g(this, this.c.h(), this.c.g());
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        g.e.a.a aVar = this.c;
        if (aVar != null) {
            aVar.o();
        }
    }

    @Override // com.serenegiant.usb.CameraDialog.CameraDialogParent
    public void onDialogResult(boolean z) {
        if (z) {
            x("取消操作");
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        l();
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onStart() {
        super.onStart();
        g.e.a.a aVar = this.c;
        if (aVar != null) {
            aVar.n();
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onStop() {
        super.onStop();
        g.e.a.a aVar = this.c;
        if (aVar != null) {
            aVar.u();
        }
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
    public void onSurfaceChanged(CameraViewInterface cameraViewInterface, Surface surface, int i, int i2) {
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
    public void onSurfaceCreated(CameraViewInterface cameraViewInterface, Surface surface) {
        if (this.f8832f || !this.c.l()) {
            return;
        }
        this.c.s(this.f8830d);
        this.f8832f = true;
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
    public void onSurfaceDestroy(CameraViewInterface cameraViewInterface, Surface surface) {
        if (this.f8832f && this.c.l()) {
            this.c.t();
            this.f8832f = false;
        }
    }
}
