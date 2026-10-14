package cn.mucang.android.jky.usbcamera.detectside;

import android.content.Context;
import android.graphics.Bitmap;
import android.hardware.usb.UsbDevice;
import android.os.Bundle;
import android.os.Debug;
import android.util.Log;
import android.view.Surface;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import cn.mucang.android.jky.usbcamera.R;
import com.serenegiant.usb.CameraDialog;
import com.serenegiant.usb.USBMonitor;
import com.serenegiant.usb.common.AbstractUVCCameraHandler;
import com.serenegiant.usb.widget.CameraViewInterface;
import java.util.List;
import org.opencv.android.BaseLoaderCallback;
import org.opencv.android.OpenCVLoader;
import org.opencv.core.CvType;
import org.opencv.core.Mat;

/* JADX INFO: loaded from: classes4.dex */
public class USBCameraActivity extends androidx.appcompat.app.d implements CameraDialog.CameraDialogParent, CameraViewInterface.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View f8851a;
    public TextView b;
    public TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ImageView f8852d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g.e.a.a f8853e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CameraViewInterface f8854f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f8855g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f8856h;
    private volatile boolean i = false;
    private s j = new s();
    private final BaseLoaderCallback k = new a(this);
    private final g.e.a.a.b l = new b();
    private Mat m = null;
    private int n = 0;

    class a extends BaseLoaderCallback {
        a(Context context) {
            super(context);
        }

        @Override // org.opencv.android.BaseLoaderCallback, org.opencv.android.LoaderCallbackInterface
        public void onManagerConnected(int i) {
            if (i != 0) {
                super.onManagerConnected(i);
                return;
            }
            Log.i("Debug", "OpenCV loaded successfully");
            o.f();
            USBCameraActivity.this.i = true;
        }
    }

    class b implements g.e.a.a.b {
        b() {
        }

        @Override // g.e.a.a.b
        public void a(UsbDevice usbDevice) {
            if (USBCameraActivity.this.f8855g) {
                USBCameraActivity.this.f8855g = false;
                USBCameraActivity.this.f8853e.d();
                USBCameraActivity.this.t(usbDevice.getDeviceName() + " is out");
            }
        }

        @Override // g.e.a.a.b
        public void b(UsbDevice usbDevice) {
            USBCameraActivity.this.t("disconnecting");
        }

        @Override // g.e.a.a.b
        public void c(UsbDevice usbDevice, boolean z) {
            if (!z) {
                USBCameraActivity.this.t("fail to connect,please check resolution params");
                USBCameraActivity.this.f8856h = false;
                return;
            }
            USBCameraActivity.this.f8856h = true;
            USBCameraActivity.this.t("connecting On Test : " + System.currentTimeMillis());
        }

        @Override // g.e.a.a.b
        public void d(UsbDevice usbDevice) {
            if (USBCameraActivity.this.f8855g) {
                return;
            }
            USBCameraActivity.this.f8855g = true;
            if (USBCameraActivity.this.f8853e != null) {
                USBCameraActivity.this.f8853e.p(0);
            }
        }
    }

    private void m() {
        if (OpenCVLoader.initDebug()) {
            Log.e("Debug", "OpenCV library found inside package. Using it!");
            this.k.onManagerConnected(0);
        } else {
            Log.e("Debug", "Internal OpenCV library not found. Using OpenCV Manager for initialization");
            OpenCVLoader.initAsync(OpenCVLoader.OPENCV_VERSION, this, this.k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void o(String str) {
        this.c.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void q(Bitmap bitmap, List list, long j) {
        if (bitmap != null) {
            this.f8852d.setImageBitmap(bitmap);
        }
        if (list != null) {
            this.j.d(list, j);
        }
        this.b.setText(this.j.b() + "CM");
        Log.e("Debug", "执行了:" + (System.currentTimeMillis() - j) + "ms");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void s(byte[] bArr) {
        String str = "onPreviewResult: " + bArr.length + "\n , width = " + this.f8853e.h() + "\n , height = " + this.f8853e.g() + "\n , height*width*1.5 = " + (((this.f8853e.h() * this.f8853e.g()) * 3) / 2);
        Log.d("Debug", str);
        final String str2 = "最大=" + ((((int) Debug.getNativeHeapSize()) / 1024) / 1024) + "M,总用=" + ((((int) Debug.getNativeHeapAllocatedSize()) / 1024) / 1024) + "M,剩余=" + ((((int) Debug.getNativeHeapFreeSize()) / 1024) / 1024) + "M\n" + str;
        runOnUiThread(new Runnable() { // from class: cn.mucang.android.jky.usbcamera.detectside.m
            @Override // java.lang.Runnable
            public final void run() {
                this.f8873a.o(str2);
            }
        });
        int i = this.n + 1;
        this.n = i;
        if (i % 20 == 0) {
            Runtime.getRuntime().gc();
        }
        if (this.i) {
            if (this.m == null) {
                int iG = this.f8853e.g();
                this.m = new Mat(iG + (iG / 2), this.f8853e.h(), CvType.CV_8UC1);
            }
            if (o.c()) {
                this.m.put(0, 0, bArr);
                o.d(this.m.submat(0, this.f8853e.g(), 0, this.f8853e.h()), System.currentTimeMillis(), true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(String str) {
        Toast.makeText(this, str, 0).show();
    }

    @Override // com.serenegiant.usb.CameraDialog.CameraDialogParent
    public USBMonitor getUSBMonitor() {
        return this.f8853e.i();
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_usbcamera);
        this.f8851a = findViewById(R.id.camera_view);
        this.b = (TextView) findViewById(R.id.detect_info);
        this.c = (TextView) findViewById(R.id.memory);
        this.f8852d = (ImageView) findViewById(R.id.detect_result);
        CameraViewInterface cameraViewInterface = (CameraViewInterface) this.f8851a;
        this.f8854f = cameraViewInterface;
        cameraViewInterface.setCallback(this);
        g.e.a.a aVarF = g.e.a.a.f();
        this.f8853e = aVarF;
        aVarF.q(1);
        this.f8853e.k(this, this.f8854f, this.l);
        o.f();
        o.g(new o.c() { // from class: cn.mucang.android.jky.usbcamera.detectside.l
            @Override // cn.mucang.android.jky.usbcamera.detectside.o.c
            public final void a(Bitmap bitmap, List list, long j) {
                this.f8872a.q(bitmap, list, j);
            }
        });
        this.f8853e.r(new AbstractUVCCameraHandler.OnPreViewResultListener() { // from class: cn.mucang.android.jky.usbcamera.detectside.n
            @Override // com.serenegiant.usb.common.AbstractUVCCameraHandler.OnPreViewResultListener
            public final void onPreviewResult(byte[] bArr) {
                this.f8874a.s(bArr);
            }
        });
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        g.e.a.b.a.a();
        g.e.a.a aVar = this.f8853e;
        if (aVar != null) {
            aVar.o();
        }
        Mat mat = this.m;
        if (mat != null) {
            mat.release();
            this.m = null;
        }
    }

    @Override // com.serenegiant.usb.CameraDialog.CameraDialogParent
    public void onDialogResult(boolean z) {
        if (z) {
            t("取消操作");
        }
    }

    @Override // androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        m();
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onStart() {
        super.onStart();
        g.e.a.a aVar = this.f8853e;
        if (aVar != null) {
            aVar.n();
        }
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onStop() {
        super.onStop();
        g.e.a.a aVar = this.f8853e;
        if (aVar != null) {
            aVar.u();
        }
        o.h();
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
    public void onSurfaceChanged(CameraViewInterface cameraViewInterface, Surface surface, int i, int i2) {
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
    public void onSurfaceCreated(CameraViewInterface cameraViewInterface, Surface surface) {
        if (this.f8856h || !this.f8853e.l()) {
            return;
        }
        this.f8853e.s(this.f8854f);
        this.f8856h = true;
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
    public void onSurfaceDestroy(CameraViewInterface cameraViewInterface, Surface surface) {
        if (this.f8856h && this.f8853e.l()) {
            this.f8853e.t();
            this.f8856h = false;
        }
    }
}
