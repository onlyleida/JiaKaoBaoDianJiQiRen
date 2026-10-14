package g.e.a;

import android.app.Activity;
import android.graphics.SurfaceTexture;
import android.hardware.usb.UsbDevice;
import android.os.Environment;
import cn.mucang.android.jky.usbcamera.R;
import com.serenegiant.usb.DeviceFilter;
import com.serenegiant.usb.USBMonitor;
import com.serenegiant.usb.common.AbstractUVCCameraHandler;
import com.serenegiant.usb.common.UVCCameraHandler;
import com.serenegiant.usb.widget.CameraViewInterface;
import java.io.File;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    private static a i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f14567a = 1280;
    private int b = 720;
    private int c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private USBMonitor f14568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private UVCCameraHandler f14569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private USBMonitor.UsbControlBlock f14570f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Activity f14571g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private CameraViewInterface f14572h;

    /* JADX INFO: renamed from: g.e.a.a$a, reason: collision with other inner class name */
    class C0312a implements USBMonitor.OnDeviceConnectListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f14573a;

        /* JADX INFO: renamed from: g.e.a.a$a$a, reason: collision with other inner class name */
        class RunnableC0313a implements Runnable {
            RunnableC0313a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
                a aVar = a.this;
                aVar.s(aVar.f14572h);
            }
        }

        C0312a(b bVar) {
            this.f14573a = bVar;
        }

        @Override // com.serenegiant.usb.USBMonitor.OnDeviceConnectListener
        public void onAttach(UsbDevice usbDevice) {
            b bVar = this.f14573a;
            if (bVar != null) {
                bVar.d(usbDevice);
            }
        }

        @Override // com.serenegiant.usb.USBMonitor.OnDeviceConnectListener
        public void onCancel(UsbDevice usbDevice) {
        }

        @Override // com.serenegiant.usb.USBMonitor.OnDeviceConnectListener
        public void onConnect(UsbDevice usbDevice, USBMonitor.UsbControlBlock usbControlBlock, boolean z) {
            a.this.f14570f = usbControlBlock;
            a.this.m(usbControlBlock);
            new Thread(new RunnableC0313a()).start();
            b bVar = this.f14573a;
            if (bVar != null) {
                bVar.c(usbDevice, true);
            }
        }

        @Override // com.serenegiant.usb.USBMonitor.OnDeviceConnectListener
        public void onDettach(UsbDevice usbDevice) {
            b bVar = this.f14573a;
            if (bVar != null) {
                bVar.a(usbDevice);
            }
        }

        @Override // com.serenegiant.usb.USBMonitor.OnDeviceConnectListener
        public void onDisconnect(UsbDevice usbDevice, USBMonitor.UsbControlBlock usbControlBlock) {
            b bVar = this.f14573a;
            if (bVar != null) {
                bVar.b(usbDevice);
            }
        }
    }

    public interface b {
        void a(UsbDevice usbDevice);

        void b(UsbDevice usbDevice);

        void c(UsbDevice usbDevice, boolean z);

        void d(UsbDevice usbDevice);
    }

    static {
        String str = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator;
    }

    private a() {
    }

    public static synchronized a f() {
        if (i == null) {
            i = new a();
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(USBMonitor.UsbControlBlock usbControlBlock) {
        UVCCameraHandler uVCCameraHandler = this.f14569e;
        if (uVCCameraHandler != null) {
            uVCCameraHandler.open(usbControlBlock);
        }
    }

    public void d() {
        UVCCameraHandler uVCCameraHandler = this.f14569e;
        if (uVCCameraHandler != null) {
            uVCCameraHandler.close();
        }
    }

    public void e() {
        Objects.requireNonNull(this.f14572h, "CameraViewInterface cannot be null!");
        UVCCameraHandler uVCCameraHandler = this.f14569e;
        if (uVCCameraHandler != null) {
            uVCCameraHandler.release();
            this.f14569e = null;
        }
        this.f14572h.setAspectRatio(this.f14567a / this.b);
        this.f14569e = UVCCameraHandler.createHandler(this.f14571g, this.f14572h, 2, this.f14567a, this.b, this.c);
    }

    public int g() {
        return this.b;
    }

    public int h() {
        return this.f14567a;
    }

    public USBMonitor i() {
        return this.f14568d;
    }

    public List<UsbDevice> j() {
        List<DeviceFilter> deviceFilters = DeviceFilter.getDeviceFilters(this.f14571g.getApplicationContext(), R.xml.device_filter);
        USBMonitor uSBMonitor = this.f14568d;
        if (uSBMonitor == null || deviceFilters == null) {
            return null;
        }
        return uSBMonitor.getDeviceList(deviceFilters);
    }

    public void k(Activity activity, CameraViewInterface cameraViewInterface, b bVar) {
        this.f14571g = activity;
        this.f14572h = cameraViewInterface;
        this.f14568d = new USBMonitor(activity.getApplicationContext(), new C0312a(bVar));
        e();
    }

    public boolean l() {
        UVCCameraHandler uVCCameraHandler = this.f14569e;
        if (uVCCameraHandler != null) {
            return uVCCameraHandler.isOpened();
        }
        return false;
    }

    public void n() {
        USBMonitor uSBMonitor = this.f14568d;
        if (uSBMonitor != null) {
            uSBMonitor.register();
        }
    }

    public void o() {
        UVCCameraHandler uVCCameraHandler = this.f14569e;
        if (uVCCameraHandler != null) {
            uVCCameraHandler.release();
            this.f14569e = null;
        }
        USBMonitor uSBMonitor = this.f14568d;
        if (uSBMonitor != null) {
            uSBMonitor.destroy();
            this.f14568d = null;
        }
    }

    public void p(int i2) {
        List<UsbDevice> listJ = j();
        if (listJ == null || listJ.size() == 0) {
            return;
        }
        if (i2 >= listJ.size()) {
            new IllegalArgumentException("index illegal,should be < devList.size()");
        }
        USBMonitor uSBMonitor = this.f14568d;
        if (uSBMonitor != null) {
            uSBMonitor.requestPermission(j().get(i2));
        }
    }

    public void q(int i2) {
        if (this.f14568d != null) {
            throw new IllegalStateException("setDefaultFrameFormat should be call before initMonitor");
        }
        this.c = i2;
    }

    public void r(AbstractUVCCameraHandler.OnPreViewResultListener onPreViewResultListener) {
        UVCCameraHandler uVCCameraHandler = this.f14569e;
        if (uVCCameraHandler != null) {
            uVCCameraHandler.setOnPreViewResultListener(onPreViewResultListener);
        }
    }

    public void s(CameraViewInterface cameraViewInterface) {
        SurfaceTexture surfaceTexture = cameraViewInterface.getSurfaceTexture();
        UVCCameraHandler uVCCameraHandler = this.f14569e;
        if (uVCCameraHandler == null || surfaceTexture == null) {
            return;
        }
        uVCCameraHandler.startPreview(surfaceTexture);
    }

    public void t() {
        UVCCameraHandler uVCCameraHandler = this.f14569e;
        if (uVCCameraHandler != null) {
            uVCCameraHandler.stopPreview();
        }
    }

    public void u() {
        USBMonitor uSBMonitor = this.f14568d;
        if (uSBMonitor != null) {
            uSBMonitor.unregister();
        }
    }
}
