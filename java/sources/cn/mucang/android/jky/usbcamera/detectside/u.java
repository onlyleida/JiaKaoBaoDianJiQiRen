package cn.mucang.android.jky.usbcamera.detectside;

import android.content.Context;
import android.graphics.Bitmap;
import android.hardware.usb.UsbDevice;
import android.util.Log;
import android.view.Surface;
import cn.mucang.android.core.config.MucangConfig;
import com.serenegiant.usb.CameraDialog;
import com.serenegiant.usb.USBMonitor;
import com.serenegiant.usb.common.AbstractUVCCameraHandler;
import com.serenegiant.usb.widget.CameraViewInterface;
import com.serenegiant.usb.widget.NoViewSurface;
import java.util.List;
import org.opencv.android.BaseLoaderCallback;
import org.opencv.android.OpenCVLoader;
import org.opencv.core.CvType;
import org.opencv.core.Mat;

/* JADX INFO: loaded from: classes4.dex */
public class u implements CameraDialog.CameraDialogParent, CameraViewInterface.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g.e.a.a f8900a;
    private NoViewSurface b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f8901d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f8902e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final BaseLoaderCallback f8903f = new a(MucangConfig.i());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final g.e.a.a.b f8904g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Mat f8905h = null;
    private int i = 0;
    private final s j = new s();

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
            u.this.f8902e = true;
        }
    }

    class b implements g.e.a.a.b {
        b() {
        }

        @Override // g.e.a.a.b
        public void a(UsbDevice usbDevice) {
            if (u.this.c) {
                u.this.c = false;
                u.this.f8900a.d();
                u.this.r(usbDevice.getDeviceName() + " is out");
            }
        }

        @Override // g.e.a.a.b
        public void b(UsbDevice usbDevice) {
            u.this.r("disconnecting");
        }

        @Override // g.e.a.a.b
        public void c(UsbDevice usbDevice, boolean z) {
            if (z) {
                u.this.f8901d = true;
                u.this.r("connecting");
            } else {
                u.this.r("fail to connect,please check resolution params");
                u.this.f8901d = false;
            }
        }

        @Override // g.e.a.a.b
        public void d(UsbDevice usbDevice) {
            if (u.this.c) {
                return;
            }
            u.this.c = true;
            if (u.this.f8900a != null) {
                u.this.f8900a.p(0);
            }
        }
    }

    private void i() {
        if (OpenCVLoader.initDebug()) {
            Log.e("Debug", "OpenCV library found inside package. Using it!");
            this.f8903f.onManagerConnected(0);
        } else {
            Log.e("Debug", "Internal OpenCV library not found. Using OpenCV Manager for initialization");
            OpenCVLoader.initAsync(OpenCVLoader.OPENCV_VERSION, MucangConfig.getContext(), this.f8903f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void k(Bitmap bitmap, List list, long j) {
        q(list, j);
        if (list != null) {
            this.j.d(list, j);
        } else {
            this.j.a();
        }
        Log.e("Debug", "执行了:" + (System.currentTimeMillis() - j) + "ms");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void m(byte[] bArr) {
        Log.d("Debug", "onPreviewResult: " + bArr.length + "\n , width = " + this.f8900a.h() + "\n , height = " + this.f8900a.g() + "\n , height*width*1.5 = " + (((this.f8900a.h() * this.f8900a.g()) * 3) / 2));
        int i = this.i + 1;
        this.i = i;
        if (i % 20 == 0) {
            Runtime.getRuntime().gc();
        }
        if (this.f8902e) {
            if (this.f8905h == null) {
                int iG = this.f8900a.g();
                this.f8905h = new Mat(iG + (iG / 2), this.f8900a.h(), CvType.CV_8UC1);
            }
            if (o.c()) {
                this.f8905h.put(0, 0, bArr);
                o.d(this.f8905h.submat(0, this.f8900a.g(), 0, this.f8900a.h()), System.currentTimeMillis(), false);
            }
        }
    }

    private void n() {
        g.e.a.a aVarF = g.e.a.a.f();
        this.f8900a = aVarF;
        NoViewSurface noViewSurface = new NoViewSurface(aVarF.h(), this.f8900a.g());
        this.b = noViewSurface;
        noViewSurface.setCallback(this);
        this.f8900a.q(1);
        this.f8900a.k(MucangConfig.i(), this.b, this.f8904g);
        o.f();
        o.g(new o.c() { // from class: cn.mucang.android.jky.usbcamera.detectside.k
            @Override // cn.mucang.android.jky.usbcamera.detectside.o.c
            public final void a(Bitmap bitmap, List list, long j) {
                this.f8871a.k(bitmap, list, j);
            }
        });
        this.f8900a.r(new AbstractUVCCameraHandler.OnPreViewResultListener() { // from class: cn.mucang.android.jky.usbcamera.detectside.j
            @Override // com.serenegiant.usb.common.AbstractUVCCameraHandler.OnPreViewResultListener
            public final void onPreviewResult(byte[] bArr) {
                this.f8870a.m(bArr);
            }
        });
    }

    private void q(List<q> list, long j) {
        if (list == null || !MucangConfig.v()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (q qVar : list) {
            sb.append("Radius=");
            sb.append((int) p.f((float) (((double) qVar.f8889h) + 0.5d)));
            sb.append("cm,Theta=");
            sb.append((int) (Math.toDegrees(qVar.f8888g) + 0.5d));
            sb.append(", 前距离=");
            sb.append((int) (((double) qVar.r) + 0.5d));
            sb.append("cm,后距离=");
            sb.append((int) (((double) qVar.s) + 0.5d));
            sb.append(",前轮=");
            sb.append((int) qVar.p);
            sb.append(",后轮=");
            sb.append((int) qVar.q);
            sb.append("cm\n<br/>");
        }
        cn.mucang.android.core.utils.t.h("TAG", sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(String str) {
        if (MucangConfig.v()) {
            cn.mucang.android.core.utils.u.h(str);
        }
    }

    public void g() {
        NoViewSurface noViewSurface = this.b;
        if (noViewSurface != null) {
            noViewSurface.destroy();
        }
        g.e.a.a aVar = this.f8900a;
        if (aVar != null) {
            aVar.u();
            this.f8900a.o();
        }
        Mat mat = this.f8905h;
        if (mat != null) {
            mat.release();
            this.f8905h = null;
        }
        o.g(null);
    }

    @Override // com.serenegiant.usb.CameraDialog.CameraDialogParent
    public USBMonitor getUSBMonitor() {
        return this.f8900a.i();
    }

    public float h() {
        return this.j.b();
    }

    public void o() {
        try {
            g.e.a.a aVar = this.f8900a;
            if (aVar != null) {
                aVar.u();
            }
        } catch (Throwable th) {
            cn.mucang.android.core.utils.t.d("TAG", th.getLocalizedMessage());
        }
        o.h();
    }

    @Override // com.serenegiant.usb.CameraDialog.CameraDialogParent
    public void onDialogResult(boolean z) {
        if (z) {
            r("取消操作");
        }
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
    public void onSurfaceChanged(CameraViewInterface cameraViewInterface, Surface surface, int i, int i2) {
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
    public void onSurfaceCreated(CameraViewInterface cameraViewInterface, Surface surface) {
        if (this.f8901d || !this.f8900a.l()) {
            return;
        }
        this.f8900a.s(this.b);
        this.f8901d = true;
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
    public void onSurfaceDestroy(CameraViewInterface cameraViewInterface, Surface surface) {
        if (this.f8901d && this.f8900a.l()) {
            this.f8900a.t();
            this.f8901d = false;
        }
    }

    public void p() {
        try {
            g.e.a.a aVar = this.f8900a;
            if (aVar != null) {
                aVar.n();
            }
        } catch (Throwable th) {
            cn.mucang.android.core.utils.t.d("TAG", th.getLocalizedMessage());
        }
        o.f();
    }

    public void s() {
        i();
        n();
        p();
    }
}
