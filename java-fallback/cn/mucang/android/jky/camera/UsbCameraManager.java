package cn.mucang.android.jky.camera;

import android.app.Application;
import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.os.SystemClock;
import cn.mucang.android.core.config.MucangConfig;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.iflytek.speech.UtilityConfig;
import com.serenegiant.usb.USBMonitor;
import java.io.File;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0012\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0002UVB\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\b\u0010(\u001a\u00020)H\u0003J\u0010\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001aH\u0003J\b\u0010,\u001a\u00020\u001fH\u0003J\b\u0010-\u001a\u00020\u001fH\u0003J\u001a\u0010.\u001a\u00020)2\u0006\u0010/\u001a\u00020\u00062\b\b\u0002\u00100\u001a\u00020\u001fH\u0003J\u0018\u00101\u001a\u00020\u001f2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000203H\u0002J\u0012\u00105\u001a\u0004\u0018\u0001032\u0006\u00102\u001a\u000203H\u0002J\u0012\u00106\u001a\u0004\u0018\u00010\u00072\u0006\u0010+\u001a\u00020\u001aH\u0003J\"\u00107\u001a\u001e\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u00060\u0005j\u000e\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u0006`\bJ\u000e\u00108\u001a\u00020)2\u0006\u00109\u001a\u00020:J(\u00108\u001a\u00020)2\u0006\u00109\u001a\u00020:2\u0006\u0010&\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0014H\u0007J\u0010\u0010;\u001a\u00020)2\u0006\u00109\u001a\u00020:H\u0003J\u0010\u0010<\u001a\u00020)2\u0006\u0010/\u001a\u00020\u0006H\u0016J\u0010\u0010=\u001a\u00020)2\u0006\u0010/\u001a\u00020\u0006H\u0016J \u0010>\u001a\u00020)2\u0006\u0010/\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u000f2\u0006\u0010@\u001a\u00020\u001fH\u0016J\u0010\u0010A\u001a\u00020)2\u0006\u0010/\u001a\u00020\u0006H\u0016J\u0018\u0010B\u001a\u00020)2\u0006\u0010/\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u000fH\u0016J\u001a\u0010C\u001a\u00020)2\b\u0010/\u001a\u0004\u0018\u00010\u00062\u0006\u0010D\u001a\u00020EH\u0016J \u0010F\u001a\u00020\u001f2\u0006\u0010/\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u000f2\u0006\u0010G\u001a\u000203H\u0003J\u0018\u0010H\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010I\u001a\u00020\u001cH\u0007J\b\u0010J\u001a\u00020)H\u0007J\u000e\u0010K\u001a\u00020)2\u0006\u0010L\u001a\u00020\u001fJ\"\u0010M\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001a2\b\u0010N\u001a\u0004\u0018\u00010O2\u0006\u0010P\u001a\u00020\u0014H\u0007J\u0010\u0010Q\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001aH\u0007J\u0018\u0010Q\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010P\u001a\u00020\u0014H\u0007J\u0006\u0010R\u001a\u00020)J\u0006\u0010S\u001a\u00020)J\u0018\u0010T\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010I\u001a\u00020\u001cH\u0007R-\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007`\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \u0012*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00140\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u001b0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u001b¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u001e\u0010&\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0017¨\u0006W"}, d2 = {"Lcn/mucang/android/jky/camera/UsbCameraManager;", "Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;", "Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;", "()V", "cameraMap", "Ljava/util/LinkedHashMap;", "Landroid/hardware/usb/UsbDevice;", "Lcn/mucang/android/jky/camera/UsbCameraThread;", "Lkotlin/collections/LinkedHashMap;", "getCameraMap", "()Ljava/util/LinkedHashMap;", "closeTask", "Ljava/lang/Runnable;", "deviceBlocks", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;", "es", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "<set-?>", "", "height", "getHeight", "()I", "invalidUsbCount", "listeners", "Lcn/mucang/android/jky/camera/CameraIntent;", "", "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;", "mode", "previewInOpen", "", "usbMonitor", "Lcom/serenegiant/usb/USBMonitor;", "usbSerialList", "Lcn/mucang/android/jky/camera/UsbSerial;", "getUsbSerialList", "()Ljava/util/List;", "width", "getWidth", "checkCameraClose", "", "checkCameraOpen", "intent", "checkSameBind", "checkSameBindSecond", "closeCamera", UtilityConfig.KEY_DEVICE_INFO, "detached", "containSerial", "deviceName", "", "serial", "findSerial", "getCameraThread", "getConnectedPortList", "init", "context", "Landroid/content/Context;", "initUsbSerialBind", "onAttach", "onCancel", "onConnect", "ctrlBlock", "createNew", "onDettach", "onDisconnect", "onPreviewFrame", "data", "", "openSync", "fromDesc", "registerCameraListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "release", "setPreviewInOpen", "value", "startPreviewCamera", "surface", "", "previewId", "stopPreviewCamera", "tryCloseNoUseCamera", "tryOpenAllDevice", "unregisterCameraListener", "UsbCameraListener", "UsbThread", "usbcamera_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UsbCameraManager implements USBMonitor.OnDeviceConnectListener, UsbCameraThread.UsbCameraCallback {
    public static final UsbCameraManager INSTANCE = null;
    private static final LinkedHashMap<UsbDevice, UsbCameraThread> cameraMap = null;
    private static Runnable closeTask;
    private static final ConcurrentHashMap<UsbDevice, USBMonitor.UsbControlBlock> deviceBlocks = null;
    private static final ExecutorService es = null;
    private static int height;
    private static final ConcurrentHashMap<UsbDevice, Integer> invalidUsbCount = null;
    private static final ConcurrentHashMap<CameraIntent, List<UsbCameraListener>> listeners = null;
    private static int mode;
    private static boolean previewInOpen;
    private static USBMonitor usbMonitor;
    private static final List<UsbSerial> usbSerialList = null;
    private static int width;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, d2 = {"Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;", "", "onConnect", "", "onDetached", "onDisconnect", "onPreviewFrame", "data", "", "usbcamera_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface UsbCameraListener {

        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        public static final class DefaultImpls {
            public static void onConnect(UsbCameraListener r1) {
                kotlin.jvm.internal.r.e(r1, "this");
            }

            public static void onDetached(UsbCameraListener r1) {
                kotlin.jvm.internal.r.e(r1, "this");
            }

            public static void onDisconnect(UsbCameraListener r1) {
                kotlin.jvm.internal.r.e(r1, "this");
            }
        }

        void onConnect();

        void onDetached();

        void onDisconnect();

        void onPreviewFrame(byte[] r1);
    }

    @Target({ElementType.METHOD})
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0083\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcn/mucang/android/jky/camera/UsbCameraManager$UsbThread;", "", "usbcamera_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    @Documented
    @Retention(RetentionPolicy.CLASS)
    private @interface UsbThread {
    }

    static {
        INSTANCE = new UsbCameraManager();
        cameraMap = new LinkedHashMap();
        usbSerialList = new ArrayList();
        width = 1280;
        height = 720;
        deviceBlocks = new ConcurrentHashMap();
        listeners = new ConcurrentHashMap();
        invalidUsbCount = new ConcurrentHashMap();
        es = Executors.newSingleThreadExecutor();
        previewInOpen = true;
        closeTask = j.f8813a;
    }

    private UsbCameraManager() {
    }

    public static /* synthetic */ void a(CameraIntent r0, UsbCameraManager$startPreviewCamera$1$listener$1 r1) {
        m94startPreviewCamera$lambda20$lambda19(r0, r1);
    }

    public static final /* synthetic */ UsbCameraThread access$getCameraThread(UsbCameraManager r0, CameraIntent r1) {
        return r0.getCameraThread(r1);
    }

    public static final /* synthetic */ ConcurrentHashMap access$getListeners$p() {
        return listeners;
    }

    public static /* synthetic */ void b(CameraIntent r0, int r1) {
        m95stopPreviewCamera$lambda21(r0, r1);
    }

    public static /* synthetic */ void c(CameraIntent r0, UsbCameraListener r1) {
        m90registerCameraListener$lambda17(r0, r1);
    }

    @UsbThread
    private final void checkCameraClose() {
        Set<UsbDevice> r0 = cameraMap.keySet();
        kotlin.jvm.internal.r.d(r0, "cameraMap.keys");
        Iterator<T> r1 = r0.iterator();
        boolean r2 = false;
    L4:
        if (r1.hasNext() == false) goto L16;
        UsbDevice r3 = (UsbDevice) r1.next();
        UsbCameraManager r4 = INSTANCE;
        Iterator<T> r5 = CameraIntent.Companion.getCacheList().iterator();
    L7:
        if (r5.hasNext() == false) goto L13;
        CameraIntent r6 = (CameraIntent) r5.next();
        String r8 = r3.getDeviceName();
        kotlin.jvm.internal.r.d(r8, "it.deviceName");
        if (r4.containSerial(r8, r6.getBindSerial()) == false) goto L7;
        if (cn.mucang.android.core.utils.g.d(listeners.get(r6)) == false) goto L7;
        boolean r7 = true;
    L14:
        if (r7 == true) goto L4;
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("关闭没用的摄像头", r3.getDeviceName()));
        UsbCameraManager r9 = INSTANCE;
        kotlin.jvm.internal.r.d(r3, "it");
        closeCamera$default(r9, r3, false, 2, null);
        r2 = true;
        goto L4
    L13:
        r7 = false;
        goto L14
    L16:
        if (r2 == false) goto L30;
        SystemClock.sleep(1000);
        System.gc();
        return;
    }

    private final void checkCameraOpen(final CameraIntent r3) {
        if (cn.mucang.android.core.utils.g.b(listeners.get(r3)) == false) goto L5;
        return;
    L5:
        es.execute(new g(r3));
    }

    /* JADX INFO: renamed from: checkCameraOpen$lambda-24, reason: not valid java name */
    private static final void m81checkCameraOpen$lambda24(CameraIntent r8) {
        kotlin.jvm.internal.r.e(r8, "$intent");
        UsbCameraManager r0 = INSTANCE;
        if (r0.checkSameBind() == false) goto L5;
    L7:
        Iterator<Map.Entry<UsbDevice, USBMonitor.UsbControlBlock>> r1 = deviceBlocks.entrySet().iterator();
    L9:
        if (r1.hasNext() == false) goto L29;
        Map.Entry<UsbDevice, USBMonitor.UsbControlBlock> r2 = r1.next();
        UsbCameraManager r3 = INSTANCE;
        if (r3.getCameraMap().get(r2.getKey()) != null) goto L9;
        String r4 = r2.getKey().getDeviceName();
        kotlin.jvm.internal.r.d(r4, "entry.key.deviceName");
        if (r3.containSerial(r4, r8.getBindSerial()) == false) goto L9;
        ConcurrentHashMap<UsbDevice, Integer> r5 = invalidUsbCount;
        UsbDevice r6 = r2.getKey();
        Integer r7 = r5.get(r6);
        if (r7 != null) goto L20;
        r7 = 0;
        Integer r9 = r5.putIfAbsent(r6, r7);
        if (r9 == null) goto L20;
        r7 = r9;
    L20:
        kotlin.jvm.internal.r.d(r7, "invalidUsbCount.getOrPut(entry.key) { 0 }");
        if (r7.intValue() >= 3) goto L9;
        if (r3.openSync(r2.getKey(), r2.getValue(), "open for register") == true) goto L24;
        UsbDevice r10 = r2.getKey();
        Integer r11 = r5.get(r2.getKey());
        if (r11 != null) goto L28;
        r11 = 0;
    L28:
        r5.put(r10, Integer.valueOf(r11.intValue() + 1));
        goto L9
    L24:
        return;
    L29:
        return;
    L5:
        if (r0.checkSameBindSecond() == false) goto L7;
    }

    @UsbThread
    private final boolean checkSameBind() {
        List<Integer> r0 = UsbUtils.INSTANCE.getDevBusByDriver();
        if (r0.isEmpty() == false) goto L5;
        return false;
    L5:
        List<CameraIntent> r1 = CameraIntent.Companion.getCacheList();
        HashSet r3 = new HashSet();
        ArrayList r4 = new ArrayList();
        Iterator<T> r2 = r1.iterator();
    L7:
        if (r2.hasNext() == false) goto L12;
        Object r5 = r2.next();
        if (r3.add(((CameraIntent) r5).getBindSerial()) == false) goto L7;
        r4.add(r5);
        goto L7
    L12:
        if (r4.size() != 1) goto L45;
        ArrayList r6 = new ArrayList();
        Iterator<T> r7 = r0.iterator();
    L15:
        if (r7.hasNext() == false) goto L30;
        int r8 = ((Number) r7.next()).intValue();
        Iterator<T> r9 = INSTANCE.getUsbSerialList().iterator();
    L18:
        if (r9.hasNext() == false) goto L25;
        Object r10 = r9.next();
        if (((UsbSerial) r10).getDevBus() != r8) goto L22;
        boolean r11 = true;
    L23:
        if (r11 == false) goto L18;
    L26:
        UsbSerial r12 = (UsbSerial) r10;
        if (r12 == null) goto L15;
        r6.add(r12);
        goto L15
    L22:
        r11 = false;
        goto L23
    L25:
        r10 = null;
        goto L26
    L30:
        if ((!r6.isEmpty()) == false) goto L45;
        if (r6.isEmpty() == false) goto L34;
    L33:
        boolean r13 = false;
    L40:
        if (r13 == true) goto L45;
        Iterator<T> r14 = CameraIntent.Companion.getCacheList().iterator();
    L43:
        if (r14.hasNext() == false) goto L45;
        CameraIntent r15 = (CameraIntent) r14.next();
        String r16 = r15.getBindSerial();
        r15.bindSerial(((UsbSerial) r6.get(0)).getSerial());
        cn.mucang.android.jiakaoyi.framework.log.f.o("业务绑定同一个摄像头，驱动不存在，" + r15.name() + "重新绑定：\nold:" + r16 + "\nnew:" + r15.getBindSerial());
        goto L43
    L34:
        Iterator r17 = r6.iterator();
    L36:
        if (r17.hasNext() == false) goto L33;
        if (kotlin.jvm.internal.r.a(((UsbSerial) r17.next()).getSerial(), ((CameraIntent) r4.get(0)).getBindSerial()) == false) goto L36;
        r13 = true;
    L45:
        return true;
    }

    @UsbThread
    private final boolean checkSameBindSecond() {
        List<CameraIntent> r0 = CameraIntent.Companion.getCacheList();
        HashSet r1 = new HashSet();
        ArrayList r2 = new ArrayList();
        Iterator<T> r3 = r0.iterator();
    L4:
        if (r3.hasNext() == false) goto L8;
        Object r4 = r3.next();
        if (r1.add(((CameraIntent) r4).getBindSerial()) == false) goto L4;
        r2.add(r4);
        goto L4
    L8:
        Object r5 = null;
        if (r2.size() != 1) goto L61;
        if (cameraMap.isEmpty() == false) goto L61;
        Iterator<Map.Entry<UsbDevice, USBMonitor.UsbControlBlock>> r6 = deviceBlocks.entrySet().iterator();
    L14:
        if (r6.hasNext() == false) goto L112;
        Map.Entry<UsbDevice, USBMonitor.UsbControlBlock> r7 = r6.next();
        if (INSTANCE.getCameraMap().get(r7.getKey()) != null) goto L14;
        ConcurrentHashMap<CameraIntent, List<UsbCameraListener>> r8 = listeners;
        ArrayList r9 = new ArrayList();
        Iterator<Map.Entry<CameraIntent, List<UsbCameraListener>>> r10 = r8.entrySet().iterator();
    L19:
        if (r10.hasNext() == false) goto L22;
        kotlin.collections.s.B(r9, r10.next().getValue());
        goto L19
    L22:
        if (cn.mucang.android.core.utils.g.d(r9) == false) goto L14;
        ConcurrentHashMap<UsbDevice, Integer> r11 = invalidUsbCount;
        UsbDevice r12 = r7.getKey();
        Integer r13 = r11.get(r12);
        if (r13 != null) goto L29;
        r13 = 0;
        Integer r14 = r11.putIfAbsent(r12, r13);
        if (r14 == null) goto L29;
        r13 = r14;
    L29:
        kotlin.jvm.internal.r.d(r13, "invalidUsbCount.getOrPut(entry.key) { 0 }");
        if (r13.intValue() >= 3) goto L14;
        UsbCameraManager r15 = INSTANCE;
        if (r15.openSync(r7.getKey(), r7.getValue(), "open for checkSameBindSecond") == true) goto L33;
        UsbDevice r16 = r7.getKey();
        Integer r17 = r11.get(r7.getKey());
        if (r17 != null) goto L59;
        r17 = 0;
    L59:
        r11.put(r16, Integer.valueOf(r17.intValue() + 1));
        goto L14
    L33:
        Iterator<T> r18 = r15.getUsbSerialList().iterator();
    L35:
        if (r18.hasNext() == false) goto L45;
        Object r19 = r18.next();
        int r20 = ((UsbSerial) r19).getDevBus();
        UsbUtils r21 = UsbUtils.INSTANCE;
        String r22 = r7.getKey().getDeviceName();
        kotlin.jvm.internal.r.d(r22, "entry.key.deviceName");
        Integer r23 = r21.getDevBusByName(r22);
        if (r23 != null) goto L40;
    L42:
        boolean r24 = false;
    L43:
        if (r24 == false) goto L35;
        r5 = r19;
        goto L45
    L40:
        if (r20 != r23.intValue()) goto L42;
        r24 = true;
    L45:
        UsbSerial r25 = (UsbSerial) r5;
        if (r25 == null) goto L55;
        String r26 = r25.getSerial();
        if (r26 == null) goto L55;
        Iterator<T> r27 = CameraIntent.Companion.getCacheList().iterator();
    L53:
        if (r27.hasNext() == false) goto L55;
        ((CameraIntent) r27.next()).bindSerial(r26);
    L55:
        return true;
    L112:
        if (r2.size() != 1) goto L151;
        return true;
    L151:
        return false;
    L61:
        if (r2.size() != 1) goto L112;
        String r28 = ((CameraIntent) r2.get(0)).getBindSerial();
        LinkedHashMap<UsbDevice, UsbCameraThread> r29 = cameraMap;
        if (r29.isEmpty() == false) goto L65;
    L64:
        boolean r30 = false;
    L89:
        if ((!r30) == false) goto L112;
        if (cameraMap.size() <= 0) goto L112;
        Iterator<T> r31 = usbSerialList.iterator();
    L94:
        if (r31.hasNext() == false) goto L104;
        Object r32 = r31.next();
        int r33 = ((UsbSerial) r32).getDevBus();
        UsbUtils r34 = UsbUtils.INSTANCE;
        Set<UsbDevice> r35 = INSTANCE.getCameraMap().keySet();
        kotlin.jvm.internal.r.d(r35, "cameraMap.keys");
        String r36 = ((UsbDevice) kotlin.collections.s.M0(r35).get(0)).getDeviceName();
        kotlin.jvm.internal.r.d(r36, "cameraMap.keys.toList()[0].deviceName");
        Integer r37 = r34.getDevBusByName(r36);
        if (r37 != null) goto L99;
    L101:
        boolean r38 = false;
    L102:
        if (r38 == false) goto L94;
        r5 = r32;
        goto L104
    L99:
        if (r33 != r37.intValue()) goto L101;
        r38 = true;
    L104:
        UsbSerial r39 = (UsbSerial) r5;
        if (r39 == null) goto L112;
        Iterator<T> r40 = CameraIntent.Companion.getCacheList().iterator();
    L109:
        if (r40.hasNext() == false) goto L112;
        CameraIntent r41 = (CameraIntent) r40.next();
        String r42 = r41.getBindSerial();
        r41.bindSerial(r39.getSerial());
        cn.mucang.android.jiakaoyi.framework.log.f.o("业务绑定同一个摄像头，摄像头不可用，" + r41.name() + "重新绑定：\nold:" + r42 + "\nnew:" + r41.getBindSerial());
        goto L109
    L65:
        Iterator<Map.Entry<UsbDevice, UsbCameraThread>> r43 = r29.entrySet().iterator();
    L67:
        if (r43.hasNext() == false) goto L64;
        Map.Entry<UsbDevice, UsbCameraThread> r44 = r43.next();
        Iterator<T> r45 = INSTANCE.getUsbSerialList().iterator();
    L70:
        if (r45.hasNext() == false) goto L80;
        Object r46 = r45.next();
        int r47 = ((UsbSerial) r46).getDevBus();
        UsbUtils r110 = UsbUtils.INSTANCE;
        String r111 = r44.getKey().getDeviceName();
        kotlin.jvm.internal.r.d(r111, "s.key.deviceName");
        Integer r112 = r110.getDevBusByName(r111);
        if (r112 != null) goto L75;
    L77:
        boolean r48 = false;
    L78:
        if (r48 == false) goto L70;
    L81:
        UsbSerial r49 = (UsbSerial) r46;
        if (r49 != null) goto L84;
        String r50 = null;
    L86:
        if (kotlin.jvm.internal.r.a(r28, r50) == false) goto L67;
        r30 = true;
        goto L89
    L84:
        r50 = r49.getSerial();
        goto L86
    L75:
        if (r47 != r112.intValue()) goto L77;
        r48 = true;
        goto L78
    L80:
        r46 = null;
        goto L81
    }

    @UsbThread
    private final void closeCamera(final UsbDevice r3, final boolean r4) {
        if (r4 == false) goto L4;
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("usb移除:", r3.getDeviceName()));
    L5:
        UsbCameraThread r0 = cameraMap.remove(r3);
        if (r0 == null) goto L9;
        r0.release();
    L9:
        cn.mucang.android.core.utils.u.f(new n(r3, r4));
        return;
    L4:
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("usb断开连接:", r3.getDeviceName()));
        goto L5
    }

    static /* synthetic */ void closeCamera$default(UsbCameraManager r0, UsbDevice r1, boolean r2, int r3, Object r4) {
        if ((r3 & 2) == 0) goto L5;
        r2 = false;
    L5:
        r0.closeCamera(r1, r2);
    }

    /* JADX INFO: renamed from: closeCamera$lambda-59, reason: not valid java name */
    private static final void m82closeCamera$lambda59(UsbDevice r5, boolean r6) {
        kotlin.jvm.internal.r.e(r5, "$device");
        Iterator<T> r0 = CameraIntent.Companion.getCacheList().iterator();
    L4:
        if (r0.hasNext() == false) goto L17;
        CameraIntent r1 = (CameraIntent) r0.next();
        UsbCameraManager r2 = INSTANCE;
        String r3 = r5.getDeviceName();
        kotlin.jvm.internal.r.d(r3, "device.deviceName");
        if (r2.containSerial(r3, r1.getBindSerial()) == false) goto L4;
        List<UsbCameraListener> r4 = listeners.get(r1);
        if (r4 == null) goto L4;
        Iterator r7 = new ArrayList(r4).iterator();
    L12:
        if (r7.hasNext() == false) goto L4;
        UsbCameraListener r8 = (UsbCameraListener) r7.next();
        if (r6 == true) goto L15;
        r8.onDisconnect();
        goto L12
    L15:
        r8.onDetached();
        goto L12
    }

    /* JADX INFO: renamed from: closeTask$lambda-1, reason: not valid java name */
    private static final void m83closeTask$lambda1() {
        es.execute(d.f8807a);
    }

    /* JADX INFO: renamed from: closeTask$lambda-1$lambda-0, reason: not valid java name */
    private static final void m84closeTask$lambda1$lambda0() {
        INSTANCE.checkCameraClose();
    }

    private final boolean containSerial(String r5, String r6) {
        Integer r7 = UsbUtils.INSTANCE.getDevBusByName(r5);
        if (r7 == null) goto L18;
        Iterator<T> r0 = usbSerialList.iterator();
    L5:
        Integer r2 = null;
        if (r0.hasNext() == false) goto L10;
        Object r1 = r0.next();
        if (kotlin.jvm.internal.r.a(((UsbSerial) r1).getSerial(), r6) == false) goto L5;
    L11:
        UsbSerial r3 = (UsbSerial) r1;
        if (r3 == null) goto L16;
        r2 = Integer.valueOf(r3.getDevBus());
    L16:
        if (kotlin.jvm.internal.r.a(r2, r7) == false) goto L18;
        return true;
    L10:
        r1 = null;
    L18:
        return false;
    }

    public static /* synthetic */ void d() {
        m84closeTask$lambda1$lambda0();
    }

    public static /* synthetic */ void e() {
        m92release$lambda11();
    }

    public static /* synthetic */ void f(Context r0) {
        m85init$lambda2(r0);
    }

    private final String findSerial(String r6) {
        Integer r7 = UsbUtils.INSTANCE.getDevBusByName(r6);
        Iterator<T> r0 = usbSerialList.iterator();
    L4:
        if (r0.hasNext() == false) goto L14;
        Object r1 = r0.next();
        int r3 = ((UsbSerial) r1).getDevBus();
        if (r7 != null) goto L9;
    L11:
        boolean r4 = false;
    L12:
        if (r4 == false) goto L4;
    L15:
        UsbSerial r2 = (UsbSerial) r1;
        if (r2 != null) goto L19;
        return null;
    L19:
        return r2.getSerial();
    L9:
        if (r3 != r7.intValue()) goto L11;
        r4 = true;
        goto L12
    L14:
        r1 = null;
        goto L15
    }

    public static /* synthetic */ void g(CameraIntent r0) {
        m81checkCameraOpen$lambda24(r0);
    }

    @UsbThread
    private final UsbCameraThread getCameraThread(CameraIntent r6) {
        Iterator<Map.Entry<UsbDevice, UsbCameraThread>> r0 = cameraMap.entrySet().iterator();
    L4:
        if (r0.hasNext() == false) goto L9;
        Map.Entry<UsbDevice, UsbCameraThread> r1 = r0.next();
        UsbCameraManager r2 = INSTANCE;
        String r3 = r1.getKey().getDeviceName();
        kotlin.jvm.internal.r.d(r3, "it.key.deviceName");
        if (r2.containSerial(r3, r6.getBindSerial()) == false) goto L4;
        return r1.getValue();
    L9:
        return null;
    }

    public static /* synthetic */ void h(CameraIntent r0) {
        m91registerCameraListener$lambda17$lambda16(r0);
    }

    public static /* synthetic */ void i(UsbDevice r0) {
        m86onAttach$lambda49(r0);
    }

    /* JADX INFO: renamed from: init$lambda-2, reason: not valid java name */
    private static final void m85init$lambda2(Context r1) {
        kotlin.jvm.internal.r.e(r1, "$context");
        if (usbMonitor == null) goto L5;
        return;
    L5:
        INSTANCE.initUsbSerialBind(r1);
    }

    @UsbThread
    private final void initUsbSerialBind(Context r16) {
        usbSerialList.clear();
        List<UsbSerial> r0 = UsbUtils.INSTANCE.getAllSerial();
        if (r0.isEmpty() == false) goto L9;
        cn.mucang.android.jiakaoyi.framework.log.f.o("获取不到系统usb目录,自己创建一个serial list");
        List<UsbSerial> r1 = kotlin.collections.s.O0(r0);
        int r2 = 1;
    L5:
        int r3 = r2 + 1;
        r1.add(new UsbSerial(r2, kotlin.jvm.internal.r.m("diy-serial", Integer.valueOf(r2))));
        if (r3 > 8) goto L7;
        r2 = r3;
        goto L5
    L7:
        r0 = r1;
    L9:
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("initUsbSerialBind : ", JSON.toJSONString(r0)));
        UsbUtils r4 = UsbUtils.INSTANCE;
        List<Integer> r5 = r4.getDevBusByDriver();
        if (r5.isEmpty() == false) goto L12;
        r5 = UsbUtils.getDevBus$default(r4, null, 1, null);
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("getDevBusByVendor : ", JSON.toJSONString(r5)));
    L12:
        File[] r6 = new File("/dev/bus/usb").listFiles();
        if (r6 != null) goto L15;
        List r7 = null;
    L19:
        Iterator<T> r8 = CameraIntent.Companion.getCacheList().iterator();
        int r9 = 0;
    L21:
        if (r8.hasNext() == false) goto L69;
        CameraIntent r10 = (CameraIntent) r8.next();
        if (r10.isSerialNoBind() == false) goto L21;
        if (r10.getDevice() != (-1)) goto L27;
        if ((!r5.isEmpty()) == false) goto L21;
        Iterator<T> r11 = r0.iterator();
    L53:
        if (r11.hasNext() == false) goto L63;
        Object r12 = r11.next();
        int r13 = ((UsbSerial) r12).getDevBus();
        Integer r14 = (Integer) kotlin.collections.s.f0(r5, r9 % r5.size());
        if (r14 != null) goto L58;
    L60:
        boolean r15 = false;
    L61:
        if (r15 == false) goto L53;
    L64:
        UsbSerial r17 = (UsbSerial) r12;
        if (r17 == null) goto L68;
        cn.mucang.android.jiakaoyi.framework.log.f.o("设置默认绑定关系-" + r10 + ": \nusb" + r17.getDevBus() + "->" + r17.getSerial());
        r10.bindSerial(r17.getSerial());
    L68:
        r9 = r9 + 1;
        goto L21
    L58:
        if (r13 != r14.intValue()) goto L60;
        r15 = true;
        goto L61
    L63:
        r12 = null;
        goto L64
    L27:
        if (r7 == null) goto L21;
        String r18 = (String) kotlin.collections.s.f0(r7, r10.getDevice());
        if (r18 == null) goto L21;
        Iterator<T> r19 = r0.iterator();
    L34:
        if (r19.hasNext() == false) goto L44;
        Object r110 = r19.next();
        int r111 = ((UsbSerial) r110).getDevBus();
        Integer r112 = UsbUtils.INSTANCE.getDevBusByName(r18);
        if (r112 != null) goto L39;
    L41:
        boolean r113 = false;
    L42:
        if (r113 == false) goto L34;
    L45:
        UsbSerial r114 = (UsbSerial) r110;
        if (r114 == null) goto L21;
        cn.mucang.android.jiakaoyi.framework.log.f.o("旧转新绑定关系-" + r10 + ": \nold: " + r18 + "\nnew: usb" + r114.getDevBus() + "->" + r114.getSerial());
        r10.bindSerial(r114.getSerial());
        goto L21
    L39:
        if (r111 != r112.intValue()) goto L41;
        r113 = true;
        goto L42
    L44:
        r110 = null;
        goto L45
    L69:
        usbSerialList.addAll(r0);
        USBMonitor r20 = new USBMonitor(r16, this);
        usbMonitor = r20;
        if (r20 == null) goto L102;
        r20.register();
        return;
    L102:
        return;
    L15:
        ArrayList r21 = new ArrayList(r6.length);
        int r22 = r6.length;
        int r23 = 0;
    L16:
        if (r23 >= r22) goto L18;
        r21.add(r6[r23].getAbsolutePath());
        r23 = r23 + 1;
        goto L16
    L18:
        r7 = kotlin.collections.s.F0(r21);
        goto L19
    }

    public static /* synthetic */ void j() {
        m83closeTask$lambda1();
    }

    public static /* synthetic */ void k(CameraIntent r0, UsbCameraListener r1) {
        m98unregisterCameraListener$lambda18(r0, r1);
    }

    public static /* synthetic */ void l(UsbDevice r0, USBMonitor.UsbControlBlock r1) {
        m87onConnect$lambda53(r0, r1);
    }

    public static /* synthetic */ void m(CameraIntent r0, Object r1, int r2) {
        m93startPreviewCamera$lambda20(r0, r1, r2);
    }

    public static /* synthetic */ void n(UsbDevice r0, boolean r1) {
        m82closeCamera$lambda59(r0, r1);
    }

    public static /* synthetic */ void o(UsbDevice r0) {
        m88onDettach$lambda54(r0);
    }

    /* JADX INFO: renamed from: onAttach$lambda-49, reason: not valid java name */
    private static final void m86onAttach$lambda49(UsbDevice r4) {
        kotlin.jvm.internal.r.e(r4, "$device");
        Set<UsbDevice> r0 = deviceBlocks.keySet();
        kotlin.jvm.internal.r.d(r0, "deviceBlocks.keys");
        Iterator<T> r1 = r0.iterator();
    L4:
        if (r1.hasNext() == false) goto L8;
        Object r2 = r1.next();
        if (kotlin.jvm.internal.r.a(((UsbDevice) r2).getDeviceName(), r4.getDeviceName()) == false) goto L4;
    L9:
        if (r2 != null) goto L19;
        USBMonitor r3 = usbMonitor;
        if (r3 == null) goto L14;
        r3.requestPermission(r4);
    L14:
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("usb onAttach : ", r4.getDeviceName()));
        return;
    L19:
        return;
    L8:
        r2 = null;
        goto L9
    }

    /* JADX INFO: renamed from: onConnect$lambda-53, reason: not valid java name */
    private static final void m87onConnect$lambda53(UsbDevice r8, USBMonitor.UsbControlBlock r9) {
        kotlin.jvm.internal.r.e(r8, "$device");
        kotlin.jvm.internal.r.e(r9, "$ctrlBlock");
        UsbCameraManager r0 = INSTANCE;
        boolean r3 = false;
        Integer r4 = 0;
        if (r0.getCameraMap().get(r8) != null) goto L12;
        Set<Map.Entry<UsbDevice, UsbCameraThread>> r1 = r0.getCameraMap().entrySet();
        kotlin.jvm.internal.r.d(r1, "cameraMap.entries");
        Iterator<T> r2 = r1.iterator();
    L6:
        if (r2.hasNext() == false) goto L10;
        Object r5 = r2.next();
        if (kotlin.jvm.internal.r.a(r8.getDeviceName(), ((UsbDevice) ((Map.Entry) r5).getKey()).getDeviceName()) == false) goto L6;
    L11:
        if (r5 != null) goto L12;
    L13:
        if (r3 == false) goto L15;
        return;
    L15:
        deviceBlocks.put(r8, r9);
        UsbCameraManager r6 = INSTANCE;
        if (r6.checkSameBind() == false) goto L18;
    L20:
        Iterator<T> r7 = CameraIntent.Companion.getCacheList().iterator();
    L22:
        if (r7.hasNext() == false) goto L56;
        CameraIntent r10 = (CameraIntent) r7.next();
        UsbCameraManager r11 = INSTANCE;
        String r12 = r8.getDeviceName();
        kotlin.jvm.internal.r.d(r12, "device.deviceName");
        if (r11.containSerial(r12, r10.getBindSerial()) == false) goto L22;
        ConcurrentHashMap<UsbDevice, Integer> r13 = invalidUsbCount;
        Integer r14 = r13.get(r8);
        if (r14 != null) goto L32;
        r14 = r13.putIfAbsent(r8, r4);
        if (r14 != null) goto L32;
        r14 = r4;
    L32:
        kotlin.jvm.internal.r.d(r14, "invalidUsbCount.getOrPut(device) { 0 }");
        if (r14.intValue() >= 3) goto L22;
        if (cn.mucang.android.core.utils.g.d(listeners.get(r10)) == false) goto L22;
        if (r11.openSync(r8, r9, "open for onConnect") == true) goto L55;
        Integer r15 = r13.get(r8);
        if (r15 == null) goto L42;
        r4 = r15;
    L42:
        r13.put(r8, Integer.valueOf(r4.intValue() + 1));
        return;
    L55:
        return;
    L56:
        return;
    L18:
        if (r6.checkSameBindSecond() == false) goto L20;
        return;
    L10:
        r5 = null;
    L12:
        r3 = true;
        goto L13
    }

    /* JADX INFO: renamed from: onDettach$lambda-54, reason: not valid java name */
    private static final void m88onDettach$lambda54(UsbDevice r2) {
        kotlin.jvm.internal.r.e(r2, "$device");
        deviceBlocks.remove(r2);
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("usb onDetach : ", r2.getDeviceName()));
        INSTANCE.closeCamera(r2, true);
    }

    /* JADX INFO: renamed from: onDisconnect$lambda-55, reason: not valid java name */
    private static final void m89onDisconnect$lambda55(UsbDevice r4) {
        kotlin.jvm.internal.r.e(r4, "$device");
        closeCamera$default(INSTANCE, r4, false, 2, null);
    }

    @UsbThread
    private final boolean openSync(UsbDevice r10, USBMonitor.UsbControlBlock r11, String r12) {
        UsbCameraThread r6 = new UsbCameraThread(kotlin.jvm.internal.r.m("摄像头:", r10.getDeviceName()), this, width, height, mode);
        r6.setDaemon(false);
        r6.setPriority(9);
        r6.start();
        cn.mucang.android.jiakaoyi.framework.log.f.o(r12 + ':' + r10.getDeviceName());
        UsbCameraThread r13 = r6.openCameraBlock(r11, r10, previewInOpen);
        if (r13 == null) goto L10;
        cameraMap.put(r10, r13);
        Iterator<T> r14 = CameraIntent.Companion.getCacheList().iterator();
    L6:
        if (r14.hasNext() == false) goto L10;
        CameraIntent r1 = (CameraIntent) r14.next();
        UsbCameraManager r2 = INSTANCE;
        String r3 = r10.getDeviceName();
        kotlin.jvm.internal.r.d(r3, "device.deviceName");
        if (r2.containSerial(r3, r1.getBindSerial()) == false) goto L6;
        kotlinx.coroutines.f.b(j0.b(), null, null, new UsbCameraManager$openSync$1$1(r1, null), 3, null);
    L10:
        if (r13 == null) goto L18;
        return true;
    L18:
        return false;
    }

    public static /* synthetic */ void p(UsbDevice r0) {
        m89onDisconnect$lambda55(r0);
    }

    public static /* synthetic */ void q() {
        m97tryOpenAllDevice$lambda14();
    }

    public static /* synthetic */ void r() {
        m96tryCloseNoUseCamera$lambda15();
    }

    /* JADX INFO: renamed from: registerCameraListener$lambda-17, reason: not valid java name */
    private static final void m90registerCameraListener$lambda17(final CameraIntent r4, UsbCameraListener r5) {
        kotlin.jvm.internal.r.e(r4, "$intent");
        kotlin.jvm.internal.r.e(r5, "$listener");
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m(r4.getDesc(), "：开始注册监听"));
        if (cn.mucang.android.jiakaoyi.framework.utils.m.k() == true) goto L5;
        UsbCameraManager r0 = INSTANCE;
        Application r1 = MucangConfig.getContext();
        kotlin.jvm.internal.r.d(r1, "getContext()");
        r0.init(r1);
    L5:
        ConcurrentHashMap<CameraIntent, List<UsbCameraListener>> r2 = listeners;
        List<UsbCameraListener> r3 = r2.get(r4);
        if (r3 != null) goto L8;
        r2.put(r4, new ArrayList());
    L8:
        boolean r6 = false;
        if (r3 != null) goto L12;
    L14:
        if (r6 == false) goto L16;
        return;
    L16:
        List<UsbCameraListener> r7 = r2.get(r4);
        if (r7 == null) goto L20;
        r7.add(r5);
    L20:
        cn.mucang.android.jiakaoyi.framework.utils.p.f3633a.b(r4.getKey(), 200, new h(r4));
        return;
    L12:
        if (r3.contains(r5) != true) goto L14;
        r6 = true;
        goto L14
    }

    /* JADX INFO: renamed from: registerCameraListener$lambda-17$lambda-16, reason: not valid java name */
    private static final void m91registerCameraListener$lambda17$lambda16(CameraIntent r1) {
        kotlin.jvm.internal.r.e(r1, "$intent");
        cn.mucang.android.core.utils.u.e(closeTask);
        INSTANCE.checkCameraOpen(r1);
    }

    public static final void release() {
        es.execute(e.f8808a);
    }

    /* JADX INFO: renamed from: release$lambda-11, reason: not valid java name */
    private static final void m92release$lambda11() {
        cn.mucang.android.jiakaoyi.framework.log.f.o("usb camera manager release");
        USBMonitor r0 = usbMonitor;
        if (r0 == null) goto L6;
        r0.unregister();
    L6:
        USBMonitor r1 = usbMonitor;
        if (r1 == null) goto L10;
        r1.destroy();
    L10:
        Iterator<Map.Entry<UsbDevice, UsbCameraThread>> r2 = INSTANCE.getCameraMap().entrySet().iterator();
    L12:
        if (r2.hasNext() == false) goto L14;
        r2.next().getValue().release();
        goto L12
    L14:
        INSTANCE.getCameraMap().clear();
        usbMonitor = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [cn.mucang.android.jky.camera.UsbCameraManager$UsbCameraListener, cn.mucang.android.jky.camera.UsbCameraManager$startPreviewCamera$1$listener$1] */
    /* JADX WARN: Type inference failed for: r4v1, types: [T, cn.mucang.android.jky.camera.a] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: startPreviewCamera$lambda-20, reason: not valid java name */
    private static final void m93startPreviewCamera$lambda20(final CameraIntent r3, final Object r4, final int r5) {
        kotlin.jvm.internal.r.e(r3, "$intent");
        UsbCameraManager r0 = INSTANCE;
        UsbCameraThread r1 = r0.getCameraThread(r3);
        if (r1 == null) goto L5;
        r1.startPreviewCamera(r4, r5);
        return;
    L5:
        final Ref$ObjectRef r2 = new Ref$ObjectRef();
        final ?? r6 = new UsbCameraManager$startPreviewCamera$1$listener$1(r2, r3, r4, r5);
        r2.element = new a(r3, r6);
        r0.registerCameraListener(r3, r6);
        cn.mucang.android.core.utils.u.d((Runnable) r2.element, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    }

    /* JADX INFO: renamed from: startPreviewCamera$lambda-20$lambda-19, reason: not valid java name */
    private static final void m94startPreviewCamera$lambda20$lambda19(CameraIntent r1, UsbCameraManager$startPreviewCamera$1$listener$1 r2) {
        kotlin.jvm.internal.r.e(r1, "$intent");
        kotlin.jvm.internal.r.e(r2, "$listener");
        INSTANCE.unregisterCameraListener(r1, r2);
    }

    /* JADX INFO: renamed from: stopPreviewCamera$lambda-21, reason: not valid java name */
    private static final void m95stopPreviewCamera$lambda21(CameraIntent r2, int r3) {
        kotlin.jvm.internal.r.e(r2, "$intent");
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("stop preview : ", r2.getDesc()));
        UsbCameraThread r4 = INSTANCE.getCameraThread(r2);
        if (r4 != null) goto L5;
        return;
    L5:
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("thread=", r4.getName()));
        r4.stopPreviewCamera(r3);
    }

    /* JADX INFO: renamed from: tryCloseNoUseCamera$lambda-15, reason: not valid java name */
    private static final void m96tryCloseNoUseCamera$lambda15() {
        INSTANCE.checkCameraClose();
    }

    /* JADX INFO: renamed from: tryOpenAllDevice$lambda-14, reason: not valid java name */
    private static final void m97tryOpenAllDevice$lambda14() {
        Iterator<Map.Entry<UsbDevice, USBMonitor.UsbControlBlock>> r0 = deviceBlocks.entrySet().iterator();
    L4:
        if (r0.hasNext() == false) goto L9;
        Map.Entry<UsbDevice, USBMonitor.UsbControlBlock> r1 = r0.next();
        UsbCameraManager r2 = INSTANCE;
        if (r2.getCameraMap().get(r1.getKey()) != null) goto L8;
        r2.openSync(r1.getKey(), r1.getValue(), "open for tryOpenAllDevice");
    L8:
        Thread.sleep(100);
        goto L4
    }

    /* JADX INFO: renamed from: unregisterCameraListener$lambda-18, reason: not valid java name */
    private static final void m98unregisterCameraListener$lambda18(CameraIntent r2, UsbCameraListener r3) {
        kotlin.jvm.internal.r.e(r2, "$intent");
        kotlin.jvm.internal.r.e(r3, "$listener");
        List<UsbCameraListener> r4 = listeners.get(r2);
        if (r4 == null) goto L6;
        r4.remove(r3);
    L6:
        cn.mucang.android.core.utils.u.e(closeTask);
        cn.mucang.android.core.utils.u.d(closeTask, 3000);
    }

    public final LinkedHashMap<UsbDevice, UsbCameraThread> getCameraMap() {
        return cameraMap;
    }

    public final LinkedHashMap<String, UsbDevice> getConnectedPortList() {
        LinkedHashMap<String, UsbDevice> r0 = new LinkedHashMap();
        Set<UsbDevice> r1 = cameraMap.keySet();
        kotlin.jvm.internal.r.d(r1, "cameraMap.keys");
        Iterator<T> r2 = r1.iterator();
    L4:
        if (r2.hasNext() == false) goto L6;
        UsbDevice r3 = (UsbDevice) r2.next();
        UsbUtils r4 = UsbUtils.INSTANCE;
        String r5 = r3.getDeviceName();
        kotlin.jvm.internal.r.d(r5, "it.deviceName");
        String r6 = kotlin.jvm.internal.r.m("USB", r4.getDevBusByName(r5));
        kotlin.jvm.internal.r.d(r3, "it");
        r0.put(r6, r3);
        goto L4
    L6:
        return r0;
    }

    public final int getHeight() {
        return height;
    }

    public final List<UsbSerial> getUsbSerialList() {
        return usbSerialList;
    }

    public final int getWidth() {
        return width;
    }

    public final void init(Context r4) {
        kotlin.jvm.internal.r.e(r4, "context");
        init(r4, 1280, 720, 1);
    }

    @Override // com.serenegiant.usb.USBMonitor.OnDeviceConnectListener
    public void onAttach(final UsbDevice r3) {
        kotlin.jvm.internal.r.e(r3, UtilityConfig.KEY_DEVICE_INFO);
        es.execute(new i(r3));
    }

    @Override // com.serenegiant.usb.USBMonitor.OnDeviceConnectListener
    public void onCancel(UsbDevice r2) {
        kotlin.jvm.internal.r.e(r2, UtilityConfig.KEY_DEVICE_INFO);
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("usb cancel : ", r2.getDeviceName()));
    }

    @Override // com.serenegiant.usb.USBMonitor.OnDeviceConnectListener
    public void onConnect(final UsbDevice r2, final USBMonitor.UsbControlBlock r3, boolean r4) {
        kotlin.jvm.internal.r.e(r2, UtilityConfig.KEY_DEVICE_INFO);
        kotlin.jvm.internal.r.e(r3, "ctrlBlock");
        es.execute(new l(r2, r3));
    }

    @Override // com.serenegiant.usb.USBMonitor.OnDeviceConnectListener
    public void onDettach(final UsbDevice r3) {
        kotlin.jvm.internal.r.e(r3, UtilityConfig.KEY_DEVICE_INFO);
        es.execute(new o(r3));
    }

    @Override // com.serenegiant.usb.USBMonitor.OnDeviceConnectListener
    public void onDisconnect(final UsbDevice r2, USBMonitor.UsbControlBlock r3) {
        kotlin.jvm.internal.r.e(r2, UtilityConfig.KEY_DEVICE_INFO);
        kotlin.jvm.internal.r.e(r3, "ctrlBlock");
        es.execute(new p(r2));
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraThread.UsbCameraCallback
    public void onPreviewFrame(UsbDevice r10, byte[] r11) {
        kotlin.jvm.internal.r.e(r11, "data");
        if (r10 != null) goto L5;
        return;
    L5:
        Iterator<T> r0 = CameraIntent.Companion.getCacheList().iterator();
    L7:
        if (r0.hasNext() == false) goto L11;
        CameraIntent r1 = (CameraIntent) r0.next();
        UsbCameraManager r2 = INSTANCE;
        String r3 = r10.getDeviceName();
        kotlin.jvm.internal.r.d(r3, "device.deviceName");
        if (r2.containSerial(r3, r1.getBindSerial()) == false) goto L7;
        kotlinx.coroutines.f.b(j0.b(), null, null, new UsbCameraManager$onPreviewFrame$1$1(r1, r11, null), 3, null);
        goto L7
    }

    public final void registerCameraListener(final CameraIntent r2, final UsbCameraListener r3) {
        kotlin.jvm.internal.r.e(r2, "intent");
        kotlin.jvm.internal.r.e(r3, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        cn.mucang.android.core.utils.u.f(new c(r2, r3));
    }

    public final void setPreviewInOpen(boolean r3) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("setPreviewInOpen:", Boolean.valueOf(r3)));
        previewInOpen = r3;
    }

    public final void startPreviewCamera(final CameraIntent r3, final Object r4, final int r5) {
        kotlin.jvm.internal.r.e(r3, "intent");
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m(r3.getDesc(), "：开始预览"));
        es.execute(new m(r3, r4, r5));
    }

    public final void stopPreviewCamera(CameraIntent r2) {
        kotlin.jvm.internal.r.e(r2, "intent");
        stopPreviewCamera(r2, 0);
    }

    public final void tryCloseNoUseCamera() {
        es.execute(r.f8821a);
    }

    public final void tryOpenAllDevice() {
        es.execute(q.f8820a);
    }

    public final void unregisterCameraListener(final CameraIntent r2, final UsbCameraListener r3) {
        kotlin.jvm.internal.r.e(r2, "intent");
        kotlin.jvm.internal.r.e(r3, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        cn.mucang.android.core.utils.u.f(new k(r2, r3));
    }

    public static final void init(final Context r1, int r2, int r3, int r4) {
        kotlin.jvm.internal.r.e(r1, "context");
        if (usbMonitor == null) goto L5;
        return;
    L5:
        cn.mucang.android.jiakaoyi.framework.log.f.o("usb camera manager init");
        width = r2;
        height = r3;
        mode = r4;
        es.execute(new f(r1));
    }

    public final void stopPreviewCamera(final CameraIntent r3, final int r4) {
        kotlin.jvm.internal.r.e(r3, "intent");
        es.execute(new b(r3, r4));
    }
}
