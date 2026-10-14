package cn.mucang.android.jky.camera;

import android.graphics.SurfaceTexture;
import android.hardware.usb.UsbDevice;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.iflytek.speech.UtilityConfig;
import com.mobile.auth.gatewayauth.Constant;
import com.serenegiant.usb.IFrameCallback;
import com.serenegiant.usb.Size;
import com.serenegiant.usb.USBMonitor;
import com.serenegiant.usb.UVCCamera;
import com.serenegiant.usb.widget.NoViewSurface;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u00012\u00020\u0002:\u00011B/\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0002\u0010\u000bJ\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\bH\u0002J\n\u0010\u001f\u001a\u0004\u0018\u00010\u0014H\u0002J\b\u0010 \u001a\u00020\u001cH\u0002J\u0012\u0010!\u001a\u00020\u00162\b\u0010\"\u001a\u0004\u0018\u00010#H\u0002J\u001a\u0010$\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001e\u001a\u00020\bH\u0002J\b\u0010%\u001a\u00020\u001cH\u0002J\u0010\u0010&\u001a\u00020\u001c2\u0006\u0010'\u001a\u00020(H\u0016J \u0010)\u001a\u0004\u0018\u00010\u00002\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u0016J\u0006\u0010+\u001a\u00020\u001cJ\u0010\u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020\u0018H\u0002J\u0018\u0010.\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001e\u001a\u00020\bJ\b\u0010/\u001a\u00020\u001cH\u0002J\u000e\u00100\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lcn/mucang/android/jky/camera/UsbCameraThread;", "Landroid/os/HandlerThread;", "Lcom/serenegiant/usb/IFrameCallback;", Constant.PROTOCOL_WEBVIEW_NAME, "", "callback", "Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;", "width", "", "height", "mode", "(Ljava/lang/String;Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;III)V", "cameraView", "Lcom/serenegiant/usb/widget/NoViewSurface;", "currentPreviewId", "", "currentSurface", UtilityConfig.KEY_DEVICE_INFO, "Landroid/hardware/usb/UsbDevice;", "handler", "Landroid/os/Handler;", "quit", "", "uvcCamera", "Lcom/serenegiant/usb/UVCCamera;", "yuv", "", "doHandlePreview", "", "surface", "previewId", "getThreadHandler", "handleClose", "handleOpen", "ctrlBlock", "Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;", "handlePreview", "handleRelease", "onFrame", "frame", "Ljava/nio/ByteBuffer;", "openCameraBlock", "previewInOpen", "release", "setPreviewSize", "camera", "startPreviewCamera", "startPreviewDefault", "stopPreviewCamera", "UsbCameraCallback", "usbcamera_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UsbCameraThread extends HandlerThread implements IFrameCallback {
    private final UsbCameraCallback callback;
    private NoViewSurface cameraView;
    private Object currentPreviewId;
    private Object currentSurface;
    private UsbDevice device;
    private Handler handler;
    private final int height;
    private final int mode;
    private boolean quit;
    private UVCCamera uvcCamera;
    private final int width;
    private byte[] yuv;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;", "", "onPreviewFrame", "", UtilityConfig.KEY_DEVICE_INFO, "Landroid/hardware/usb/UsbDevice;", "data", "", "usbcamera_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface UsbCameraCallback {
        void onPreviewFrame(UsbDevice device, byte[] data);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UsbCameraThread(String str, UsbCameraCallback callback, int i, int i2, int i3) {
        super(str);
        kotlin.jvm.internal.r.e(callback, "callback");
        this.callback = callback;
        this.width = i;
        this.height = i2;
        this.mode = i3;
    }

    private final void doHandlePreview(Object surface, int previewId) {
        Object obj = this.currentSurface;
        if (obj == null || kotlin.jvm.internal.r.a(obj, surface)) {
            if (this.currentSurface == null) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("doHandlePreview");
                handlePreview(surface, previewId);
                return;
            }
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("doHandlePreview");
        UVCCamera uVCCamera = this.uvcCamera;
        if (uVCCamera != null) {
            uVCCamera.stopPreview();
        }
        this.currentSurface = null;
        handlePreview(surface, previewId);
    }

    private final Handler getThreadHandler() {
        if (this.handler == null && !this.quit) {
            this.handler = new Handler(getLooper());
        }
        if (this.handler == null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("获取handler失败:quit=", Boolean.valueOf(this.quit)));
        }
        return this.handler;
    }

    private final void handleClose() {
        NoViewSurface noViewSurface = this.cameraView;
        if (noViewSurface != null) {
            noViewSurface.destroy();
        }
        this.cameraView = null;
        UVCCamera uVCCamera = this.uvcCamera;
        if (uVCCamera != null) {
            uVCCamera.destroy();
        }
        this.uvcCamera = null;
    }

    private final boolean handleOpen(USBMonitor.UsbControlBlock ctrlBlock) {
        handleClose();
        try {
            UsbDevice usbDevice = this.device;
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("start open :", usbDevice == null ? null : usbDevice.getDeviceName()));
            UVCCamera uVCCamera = new UVCCamera();
            uVCCamera.open(ctrlBlock);
            setPreviewSize(uVCCamera);
            this.uvcCamera = uVCCamera;
            UsbDevice usbDevice2 = this.device;
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("open success:", usbDevice2 == null ? null : usbDevice2.getDeviceName()));
            return true;
        } catch (Exception e2) {
            handleRelease();
            StringBuilder sb = new StringBuilder();
            sb.append("open error :");
            UsbDevice usbDevice3 = this.device;
            sb.append((Object) (usbDevice3 != null ? usbDevice3.getDeviceName() : null));
            sb.append(": ");
            sb.append((Object) e2.getMessage());
            cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
            return false;
        }
    }

    private final void handlePreview(Object surface, int previewId) {
        UVCCamera uVCCamera;
        boolean z;
        UVCCamera uVCCamera2;
        if (surface == null || (uVCCamera = this.uvcCamera) == null || this.currentSurface != null || !(((z = surface instanceof SurfaceHolder)) || (surface instanceof Surface) || (surface instanceof SurfaceTexture))) {
            UsbDevice usbDevice = this.device;
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("handlePreview 返回 : ", usbDevice != null ? usbDevice.getDeviceName() : null));
            return;
        }
        if (uVCCamera != null) {
            uVCCamera.setFrameCallback(this, 4);
        }
        if (z && (uVCCamera2 = this.uvcCamera) != null) {
            uVCCamera2.setPreviewDisplay((SurfaceHolder) surface);
        }
        if (surface instanceof Surface) {
            UVCCamera uVCCamera3 = this.uvcCamera;
            if (uVCCamera3 != null) {
                uVCCamera3.setPreviewDisplay((Surface) surface);
            }
        } else {
            UVCCamera uVCCamera4 = this.uvcCamera;
            if (uVCCamera4 != null) {
                uVCCamera4.setPreviewTexture((SurfaceTexture) surface);
            }
        }
        UVCCamera uVCCamera5 = this.uvcCamera;
        if (uVCCamera5 != null) {
            uVCCamera5.startPreview();
        }
        UVCCamera uVCCamera6 = this.uvcCamera;
        if (uVCCamera6 != null) {
            uVCCamera6.updateCameraParams();
        }
        this.currentSurface = surface;
        this.currentPreviewId = Integer.valueOf(previewId);
        UsbDevice usbDevice2 = this.device;
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("预览成功:", usbDevice2 != null ? usbDevice2.getDeviceName() : null));
    }

    private final void handleRelease() {
        this.quit = true;
        this.handler = null;
        handleClose();
        quit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: openCameraBlock$lambda-0, reason: not valid java name */
    public static final void m99openCameraBlock$lambda0(UsbCameraThread this$0, USBMonitor.UsbControlBlock ctrlBlock, boolean z, Ref$BooleanRef success, CountDownLatch countDownLatch) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(ctrlBlock, "$ctrlBlock");
        kotlin.jvm.internal.r.e(success, "$success");
        kotlin.jvm.internal.r.e(countDownLatch, "$countDownLatch");
        if (this$0.handleOpen(ctrlBlock)) {
            if (z) {
                this$0.startPreviewDefault();
            }
            success.element = true;
        } else {
            success.element = false;
        }
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: release$lambda-3, reason: not valid java name */
    public static final void m100release$lambda3(UsbCameraThread this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.handleRelease();
    }

    private final void setPreviewSize(UVCCamera camera) throws Exception {
        Object obj;
        Object next;
        Size size;
        List<Size> supportedSize = UVCCamera.getSupportedSize(4, camera.getSupportedSize());
        kotlin.jvm.internal.r.d(supportedSize, "getSupportedSize(4, camera.supportedSize)");
        List<Size> listO0 = CollectionsKt___CollectionsKt.O0(supportedSize);
        List<Size> supportedSize2 = UVCCamera.getSupportedSize(6, camera.getSupportedSize());
        kotlin.jvm.internal.r.d(supportedSize2, "getSupportedSize(6, camera.supportedSize)");
        listO0.addAll(supportedSize2);
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listO0, 10));
        for (Size size2 : listO0) {
            Objects.requireNonNull(size2, "null cannot be cast to non-null type com.serenegiant.usb.Size");
            arrayList.add(size2);
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next2 = it.next();
            if ((((Size) next2).width < this.width ? 0 : 1) != 0) {
                arrayList2.add(next2);
            }
        }
        List listO1 = CollectionsKt___CollectionsKt.O0(arrayList2);
        int i = this.mode > 0 ? 6 : 4;
        Iterator it2 = listO1.iterator();
        do {
            obj = null;
            if (!it2.hasNext()) {
                next = null;
                break;
            } else {
                next = it2.next();
                size = (Size) next;
            }
        } while (!(size.height == this.height && size.width == this.width && size.type == i));
        Size size3 = (Size) next;
        if (size3 == null) {
            int i2 = this.mode <= 0 ? 6 : 4;
            for (Object obj2 : listO1) {
                Size size4 = (Size) obj2;
                if (size4.height == this.height && size4.width == this.width && size4.type == i2) {
                    obj = obj2;
                    break;
                }
            }
            size3 = (Size) obj;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(CollectionsKt___CollectionsKt.m0(listO1, null, null, null, 0, null, new Function1<Size, CharSequence>() { // from class: cn.mucang.android.jky.camera.UsbCameraThread.setPreviewSize.2
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(Size it3) {
                kotlin.jvm.internal.r.e(it3, "it");
                StringBuilder sb = new StringBuilder();
                sb.append(it3.type);
                sb.append('_');
                sb.append(it3.width);
                sb.append('x');
                sb.append(it3.height);
                return sb.toString();
            }
        }, 31, null));
        if (size3 == null) {
            throw new Exception("usb 未找到合适的尺寸");
        }
        int i3 = size3.type != 6 ? 0 : 1;
        cn.mucang.android.jiakaoyi.framework.log.f.o("usb 设置宽高：" + size3.width + " x " + size3.height + ", mode:" + i3);
        camera.setPreviewSize(size3.width, size3.height, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startPreviewCamera$lambda-1, reason: not valid java name */
    public static final void m101startPreviewCamera$lambda1(UsbCameraThread this$0, Object obj, int i) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.doHandlePreview(obj, i);
    }

    private final void startPreviewDefault() {
        if (this.cameraView == null) {
            this.cameraView = new NoViewSurface(this.width, this.height);
        }
        NoViewSurface noViewSurface = this.cameraView;
        kotlin.jvm.internal.r.c(noViewSurface);
        Surface surface = noViewSurface.getSurface();
        kotlin.jvm.internal.r.d(surface, "cameraView!!.surface");
        doHandlePreview(surface, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: stopPreviewCamera$lambda-2, reason: not valid java name */
    public static final void m102stopPreviewCamera$lambda2(UsbCameraThread this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.startPreviewDefault();
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0013  */
    @Override // com.serenegiant.usb.IFrameCallback
    public void onFrame(ByteBuffer frame) {
        kotlin.jvm.internal.r.e(frame, "frame");
        int iCapacity = frame.capacity();
        byte[] bArr = this.yuv;
        if (bArr != null) {
            kotlin.jvm.internal.r.c(bArr);
            if (bArr.length != iCapacity) {
                this.yuv = new byte[iCapacity];
            }
        } else {
            this.yuv = new byte[iCapacity];
        }
        byte[] bArr2 = this.yuv;
        kotlin.jvm.internal.r.c(bArr2);
        frame.get(bArr2);
        UsbCameraCallback usbCameraCallback = this.callback;
        UsbDevice usbDevice = this.device;
        byte[] bArr3 = this.yuv;
        kotlin.jvm.internal.r.c(bArr3);
        usbCameraCallback.onPreviewFrame(usbDevice, bArr3);
    }

    public final UsbCameraThread openCameraBlock(final USBMonitor.UsbControlBlock ctrlBlock, UsbDevice device, final boolean previewInOpen) throws InterruptedException {
        kotlin.jvm.internal.r.e(ctrlBlock, "ctrlBlock");
        kotlin.jvm.internal.r.e(device, "device");
        this.device = device;
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        Handler threadHandler = getThreadHandler();
        if (threadHandler != null) {
            threadHandler.post(new Runnable() { // from class: cn.mucang.android.jky.camera.s
                @Override // java.lang.Runnable
                public final void run() {
                    UsbCameraThread.m99openCameraBlock$lambda0(this.f8822a, ctrlBlock, previewInOpen, ref$BooleanRef, countDownLatch);
                }
            });
        }
        countDownLatch.await(5L, TimeUnit.SECONDS);
        if (ref$BooleanRef.element) {
            return this;
        }
        return null;
    }

    public final void release() {
        Handler threadHandler = getThreadHandler();
        if (threadHandler == null) {
            return;
        }
        threadHandler.post(new Runnable() { // from class: cn.mucang.android.jky.camera.u
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraThread.m100release$lambda3(this.f8826a);
            }
        });
    }

    public final void startPreviewCamera(final Object surface, final int previewId) {
        Handler threadHandler;
        if (surface == null || (threadHandler = getThreadHandler()) == null) {
            return;
        }
        threadHandler.post(new Runnable() { // from class: cn.mucang.android.jky.camera.v
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraThread.m101startPreviewCamera$lambda1(this.f8827a, surface, previewId);
            }
        });
    }

    public final void stopPreviewCamera(int previewId) {
        Handler threadHandler;
        if ((kotlin.jvm.internal.r.a(this.currentPreviewId, Integer.valueOf(previewId)) || previewId <= 0) && (threadHandler = getThreadHandler()) != null) {
            threadHandler.post(new Runnable() { // from class: cn.mucang.android.jky.camera.t
                @Override // java.lang.Runnable
                public final void run() {
                    UsbCameraThread.m102stopPreviewCamera$lambda2(this.f8825a);
                }
            });
        }
    }
}
