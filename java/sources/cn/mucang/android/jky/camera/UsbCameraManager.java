package cn.mucang.android.jky.camera;

import android.app.Application;
import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.os.SystemClock;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DebounceUtil;
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
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0012\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0002UVB\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\b\u0010(\u001a\u00020)H\u0003J\u0010\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001aH\u0003J\b\u0010,\u001a\u00020\u001fH\u0003J\b\u0010-\u001a\u00020\u001fH\u0003J\u001a\u0010.\u001a\u00020)2\u0006\u0010/\u001a\u00020\u00062\b\b\u0002\u00100\u001a\u00020\u001fH\u0003J\u0018\u00101\u001a\u00020\u001f2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000203H\u0002J\u0012\u00105\u001a\u0004\u0018\u0001032\u0006\u00102\u001a\u000203H\u0002J\u0012\u00106\u001a\u0004\u0018\u00010\u00072\u0006\u0010+\u001a\u00020\u001aH\u0003J\"\u00107\u001a\u001e\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u00060\u0005j\u000e\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u0006`\bJ\u000e\u00108\u001a\u00020)2\u0006\u00109\u001a\u00020:J(\u00108\u001a\u00020)2\u0006\u00109\u001a\u00020:2\u0006\u0010&\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0014H\u0007J\u0010\u0010;\u001a\u00020)2\u0006\u00109\u001a\u00020:H\u0003J\u0010\u0010<\u001a\u00020)2\u0006\u0010/\u001a\u00020\u0006H\u0016J\u0010\u0010=\u001a\u00020)2\u0006\u0010/\u001a\u00020\u0006H\u0016J \u0010>\u001a\u00020)2\u0006\u0010/\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u000f2\u0006\u0010@\u001a\u00020\u001fH\u0016J\u0010\u0010A\u001a\u00020)2\u0006\u0010/\u001a\u00020\u0006H\u0016J\u0018\u0010B\u001a\u00020)2\u0006\u0010/\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u000fH\u0016J\u001a\u0010C\u001a\u00020)2\b\u0010/\u001a\u0004\u0018\u00010\u00062\u0006\u0010D\u001a\u00020EH\u0016J \u0010F\u001a\u00020\u001f2\u0006\u0010/\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u000f2\u0006\u0010G\u001a\u000203H\u0003J\u0018\u0010H\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010I\u001a\u00020\u001cH\u0007J\b\u0010J\u001a\u00020)H\u0007J\u000e\u0010K\u001a\u00020)2\u0006\u0010L\u001a\u00020\u001fJ\"\u0010M\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001a2\b\u0010N\u001a\u0004\u0018\u00010O2\u0006\u0010P\u001a\u00020\u0014H\u0007J\u0010\u0010Q\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001aH\u0007J\u0018\u0010Q\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010P\u001a\u00020\u0014H\u0007J\u0006\u0010R\u001a\u00020)J\u0006\u0010S\u001a\u00020)J\u0018\u0010T\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010I\u001a\u00020\u001cH\u0007R-\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007`\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \u0012*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00140\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u001b0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u001b¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u001e\u0010&\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0017¨\u0006W"}, d2 = {"Lcn/mucang/android/jky/camera/UsbCameraManager;", "Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;", "Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;", "()V", "cameraMap", "Ljava/util/LinkedHashMap;", "Landroid/hardware/usb/UsbDevice;", "Lcn/mucang/android/jky/camera/UsbCameraThread;", "Lkotlin/collections/LinkedHashMap;", "getCameraMap", "()Ljava/util/LinkedHashMap;", "closeTask", "Ljava/lang/Runnable;", "deviceBlocks", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;", "es", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "<set-?>", "", "height", "getHeight", "()I", "invalidUsbCount", "listeners", "Lcn/mucang/android/jky/camera/CameraIntent;", "", "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;", "mode", "previewInOpen", "", "usbMonitor", "Lcom/serenegiant/usb/USBMonitor;", "usbSerialList", "Lcn/mucang/android/jky/camera/UsbSerial;", "getUsbSerialList", "()Ljava/util/List;", "width", "getWidth", "checkCameraClose", "", "checkCameraOpen", "intent", "checkSameBind", "checkSameBindSecond", "closeCamera", UtilityConfig.KEY_DEVICE_INFO, "detached", "containSerial", "deviceName", "", "serial", "findSerial", "getCameraThread", "getConnectedPortList", "init", "context", "Landroid/content/Context;", "initUsbSerialBind", "onAttach", "onCancel", "onConnect", "ctrlBlock", "createNew", "onDettach", "onDisconnect", "onPreviewFrame", "data", "", "openSync", "fromDesc", "registerCameraListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "release", "setPreviewInOpen", "value", "startPreviewCamera", "surface", "", "previewId", "stopPreviewCamera", "tryCloseNoUseCamera", "tryOpenAllDevice", "unregisterCameraListener", "UsbCameraListener", "UsbThread", "usbcamera_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UsbCameraManager implements USBMonitor.OnDeviceConnectListener, UsbCameraThread.UsbCameraCallback {
    private static int mode;
    private static USBMonitor usbMonitor;
    public static final UsbCameraManager INSTANCE = new UsbCameraManager();
    private static final LinkedHashMap<UsbDevice, UsbCameraThread> cameraMap = new LinkedHashMap<>();
    private static final List<UsbSerial> usbSerialList = new ArrayList();
    private static int width = 1280;
    private static int height = 720;
    private static final ConcurrentHashMap<UsbDevice, USBMonitor.UsbControlBlock> deviceBlocks = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<CameraIntent, List<UsbCameraListener>> listeners = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<UsbDevice, Integer> invalidUsbCount = new ConcurrentHashMap<>();
    private static final ExecutorService es = Executors.newSingleThreadExecutor();
    private static boolean previewInOpen = true;
    private static Runnable closeTask = new Runnable() { // from class: cn.mucang.android.jky.camera.j
        @Override // java.lang.Runnable
        public final void run() {
            UsbCameraManager.m83closeTask$lambda1();
        }
    };

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, d2 = {"Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;", "", "onConnect", "", "onDetached", "onDisconnect", "onPreviewFrame", "data", "", "usbcamera_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface UsbCameraListener {

        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        public static final class DefaultImpls {
            public static void onConnect(UsbCameraListener usbCameraListener) {
                kotlin.jvm.internal.r.e(usbCameraListener, "this");
            }

            public static void onDetached(UsbCameraListener usbCameraListener) {
                kotlin.jvm.internal.r.e(usbCameraListener, "this");
            }

            public static void onDisconnect(UsbCameraListener usbCameraListener) {
                kotlin.jvm.internal.r.e(usbCameraListener, "this");
            }
        }

        void onConnect();

        void onDetached();

        void onDisconnect();

        void onPreviewFrame(byte[] data);
    }

    @Target({ElementType.METHOD})
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0083\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcn/mucang/android/jky/camera/UsbCameraManager$UsbThread;", "", "usbcamera_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    @Documented
    @Retention(RetentionPolicy.CLASS)
    private @interface UsbThread {
    }

    private UsbCameraManager() {
    }

    @UsbThread
    private final void checkCameraClose() {
        boolean z;
        Set<UsbDevice> setKeySet = cameraMap.keySet();
        kotlin.jvm.internal.r.d(setKeySet, "cameraMap.keys");
        boolean z2 = false;
        for (UsbDevice it : setKeySet) {
            UsbCameraManager usbCameraManager = INSTANCE;
            Iterator<T> it2 = CameraIntent.INSTANCE.getCacheList().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = false;
                    break;
                }
                CameraIntent cameraIntent = (CameraIntent) it2.next();
                String deviceName = it.getDeviceName();
                kotlin.jvm.internal.r.d(deviceName, "it.deviceName");
                if (usbCameraManager.containSerial(deviceName, cameraIntent.getBindSerial()) && cn.mucang.android.core.utils.g.d(listeners.get(cameraIntent))) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("关闭没用的摄像头", it.getDeviceName()));
                UsbCameraManager usbCameraManager2 = INSTANCE;
                kotlin.jvm.internal.r.d(it, "it");
                closeCamera$default(usbCameraManager2, it, false, 2, null);
                z2 = true;
            }
        }
        if (z2) {
            SystemClock.sleep(1000L);
            System.gc();
        }
    }

    private final void checkCameraOpen(final CameraIntent intent) {
        if (cn.mucang.android.core.utils.g.b(listeners.get(intent))) {
            return;
        }
        es.execute(new Runnable() { // from class: cn.mucang.android.jky.camera.g
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m81checkCameraOpen$lambda24(intent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0061, code lost:
    
        r5 = 0;
     */
    /* JADX INFO: renamed from: checkCameraOpen$lambda-24, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m81checkCameraOpen$lambda24(cn.mucang.android.jky.camera.CameraIntent r8) {
        /*
            java.lang.String r0 = "$intent"
            kotlin.jvm.internal.r.e(r8, r0)
            cn.mucang.android.jky.camera.UsbCameraManager r0 = cn.mucang.android.jky.camera.UsbCameraManager.INSTANCE
            boolean r1 = r0.checkSameBind()
            if (r1 != 0) goto L14
            boolean r0 = r0.checkSameBindSecond()
            if (r0 == 0) goto L14
            return
        L14:
            java.util.concurrent.ConcurrentHashMap<android.hardware.usb.UsbDevice, com.serenegiant.usb.USBMonitor$UsbControlBlock> r0 = cn.mucang.android.jky.camera.UsbCameraManager.deviceBlocks
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
        L1e:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Lb2
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            cn.mucang.android.jky.camera.UsbCameraManager r2 = cn.mucang.android.jky.camera.UsbCameraManager.INSTANCE
            java.util.LinkedHashMap r3 = r2.getCameraMap()
            java.lang.Object r4 = r1.getKey()
            java.lang.Object r3 = r3.get(r4)
            if (r3 != 0) goto L1e
            java.lang.Object r3 = r1.getKey()
            android.hardware.usb.UsbDevice r3 = (android.hardware.usb.UsbDevice) r3
            java.lang.String r3 = r3.getDeviceName()
            java.lang.String r4 = "entry.key.deviceName"
            kotlin.jvm.internal.r.d(r3, r4)
            java.lang.String r4 = r8.getBindSerial()
            boolean r3 = r2.containSerial(r3, r4)
            if (r3 == 0) goto L1e
            java.util.concurrent.ConcurrentHashMap<android.hardware.usb.UsbDevice, java.lang.Integer> r3 = cn.mucang.android.jky.camera.UsbCameraManager.invalidUsbCount
            java.lang.Object r4 = r1.getKey()
            java.lang.Object r5 = r3.get(r4)
            r6 = 0
            if (r5 == 0) goto L61
            goto L6c
        L61:
            java.lang.Integer r5 = java.lang.Integer.valueOf(r6)
            java.lang.Object r4 = r3.putIfAbsent(r4, r5)
            if (r4 == 0) goto L6c
            r5 = r4
        L6c:
            java.lang.String r4 = "invalidUsbCount.getOrPut(entry.key) { 0 }"
            kotlin.jvm.internal.r.d(r5, r4)
            java.lang.Number r5 = (java.lang.Number) r5
            int r4 = r5.intValue()
            r5 = 3
            if (r4 >= r5) goto L1e
            java.lang.Object r4 = r1.getKey()
            android.hardware.usb.UsbDevice r4 = (android.hardware.usb.UsbDevice) r4
            java.lang.Object r5 = r1.getValue()
            com.serenegiant.usb.USBMonitor$UsbControlBlock r5 = (com.serenegiant.usb.USBMonitor.UsbControlBlock) r5
            java.lang.String r7 = "open for register"
            boolean r2 = r2.openSync(r4, r5, r7)
            if (r2 == 0) goto L8f
            return
        L8f:
            java.lang.Object r2 = r1.getKey()
            java.lang.Object r1 = r1.getKey()
            java.lang.Object r1 = r3.get(r1)
            java.lang.Integer r1 = (java.lang.Integer) r1
            if (r1 != 0) goto La3
            java.lang.Integer r1 = java.lang.Integer.valueOf(r6)
        La3:
            int r1 = r1.intValue()
            int r1 = r1 + 1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r3.put(r2, r1)
            goto L1e
        Lb2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jky.camera.UsbCameraManager.m81checkCameraOpen$lambda24(cn.mucang.android.jky.camera.CameraIntent):void");
    }

    @UsbThread
    private final boolean checkSameBind() {
        boolean z;
        Object next;
        List<Integer> devBusByDriver = UsbUtils.INSTANCE.getDevBusByDriver();
        if (devBusByDriver.isEmpty()) {
            return false;
        }
        List<CameraIntent> cacheList = CameraIntent.INSTANCE.getCacheList();
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : cacheList) {
            if (hashSet.add(((CameraIntent) obj).getBindSerial())) {
                arrayList.add(obj);
            }
        }
        if (arrayList.size() == 1) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it = devBusByDriver.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Number) it.next()).intValue();
                Iterator<T> it2 = INSTANCE.getUsbSerialList().iterator();
                do {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                } while (!(((UsbSerial) next).getDevBus() == iIntValue));
                UsbSerial usbSerial = (UsbSerial) next;
                if (usbSerial != null) {
                    arrayList2.add(usbSerial);
                }
            }
            if (!arrayList2.isEmpty()) {
                if (arrayList2.isEmpty()) {
                    z = false;
                    break;
                }
                Iterator it3 = arrayList2.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        z = false;
                        break;
                    }
                    if (kotlin.jvm.internal.r.a(((UsbSerial) it3.next()).getSerial(), ((CameraIntent) arrayList.get(0)).getBindSerial())) {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    for (CameraIntent cameraIntent : CameraIntent.INSTANCE.getCacheList()) {
                        String bindSerial = cameraIntent.getBindSerial();
                        cameraIntent.bindSerial(((UsbSerial) arrayList2.get(0)).getSerial());
                        cn.mucang.android.jiakaoyi.framework.log.f.o("业务绑定同一个摄像头，驱动不存在，" + cameraIntent.name() + "重新绑定：\nold:" + bindSerial + "\nnew:" + cameraIntent.getBindSerial());
                    }
                }
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x009e, code lost:
    
        r8 = 0;
     */
    @cn.mucang.android.jky.camera.UsbCameraManager.UsbThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean checkSameBindSecond() {
        /*
            Method dump skipped, instruction units count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jky.camera.UsbCameraManager.checkSameBindSecond():boolean");
    }

    @UsbThread
    private final void closeCamera(final UsbDevice device, final boolean detached) {
        if (detached) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("usb移除:", device.getDeviceName()));
        } else {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("usb断开连接:", device.getDeviceName()));
        }
        UsbCameraThread usbCameraThreadRemove = cameraMap.remove(device);
        if (usbCameraThreadRemove != null) {
            usbCameraThreadRemove.release();
        }
        cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.android.jky.camera.n
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m82closeCamera$lambda59(device, detached);
            }
        });
    }

    static /* synthetic */ void closeCamera$default(UsbCameraManager usbCameraManager, UsbDevice usbDevice, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        usbCameraManager.closeCamera(usbDevice, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: closeCamera$lambda-59, reason: not valid java name */
    public static final void m82closeCamera$lambda59(UsbDevice device, boolean z) {
        List<UsbCameraListener> list;
        kotlin.jvm.internal.r.e(device, "$device");
        for (CameraIntent cameraIntent : CameraIntent.INSTANCE.getCacheList()) {
            UsbCameraManager usbCameraManager = INSTANCE;
            String deviceName = device.getDeviceName();
            kotlin.jvm.internal.r.d(deviceName, "device.deviceName");
            if (usbCameraManager.containSerial(deviceName, cameraIntent.getBindSerial()) && (list = listeners.get(cameraIntent)) != null) {
                for (UsbCameraListener usbCameraListener : new ArrayList(list)) {
                    if (z) {
                        usbCameraListener.onDetached();
                    } else {
                        usbCameraListener.onDisconnect();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: closeTask$lambda-1, reason: not valid java name */
    public static final void m83closeTask$lambda1() {
        es.execute(new Runnable() { // from class: cn.mucang.android.jky.camera.d
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m84closeTask$lambda1$lambda0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: closeTask$lambda-1$lambda-0, reason: not valid java name */
    public static final void m84closeTask$lambda1$lambda0() {
        INSTANCE.checkCameraClose();
    }

    private final boolean containSerial(String deviceName, String serial) {
        Object next;
        Integer devBusByName = UsbUtils.INSTANCE.getDevBusByName(deviceName);
        if (devBusByName != null) {
            Iterator<T> it = usbSerialList.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!kotlin.jvm.internal.r.a(((UsbSerial) next).getSerial(), serial));
            UsbSerial usbSerial = (UsbSerial) next;
            if (kotlin.jvm.internal.r.a(usbSerial != null ? Integer.valueOf(usbSerial.getDevBus()) : null, devBusByName)) {
                return true;
            }
        }
        return false;
    }

    private final String findSerial(String deviceName) {
        Object next;
        Integer devBusByName = UsbUtils.INSTANCE.getDevBusByName(deviceName);
        Iterator<T> it = usbSerialList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(devBusByName != null && ((UsbSerial) next).getDevBus() == devBusByName.intValue()));
        UsbSerial usbSerial = (UsbSerial) next;
        if (usbSerial == null) {
            return null;
        }
        return usbSerial.getSerial();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @UsbThread
    public final UsbCameraThread getCameraThread(CameraIntent intent) {
        for (Map.Entry<UsbDevice, UsbCameraThread> entry : cameraMap.entrySet()) {
            UsbCameraManager usbCameraManager = INSTANCE;
            String deviceName = entry.getKey().getDeviceName();
            kotlin.jvm.internal.r.d(deviceName, "it.key.deviceName");
            if (usbCameraManager.containSerial(deviceName, intent.getBindSerial())) {
                return entry.getValue();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: init$lambda-2, reason: not valid java name */
    public static final void m85init$lambda2(Context context) {
        kotlin.jvm.internal.r.e(context, "$context");
        if (usbMonitor != null) {
            return;
        }
        INSTANCE.initUsbSerialBind(context);
    }

    @UsbThread
    private final void initUsbSerialBind(Context context) {
        List listF0;
        String str;
        Object next;
        int devBus;
        Integer devBusByName;
        Object next2;
        int devBus2;
        Integer num;
        usbSerialList.clear();
        List<UsbSerial> allSerial = UsbUtils.INSTANCE.getAllSerial();
        if (allSerial.isEmpty()) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("获取不到系统usb目录,自己创建一个serial list");
            List<UsbSerial> listO0 = CollectionsKt___CollectionsKt.O0(allSerial);
            int i = 1;
            while (true) {
                int i2 = i + 1;
                listO0.add(new UsbSerial(i, kotlin.jvm.internal.r.m("diy-serial", Integer.valueOf(i))));
                if (i2 > 8) {
                    break;
                } else {
                    i = i2;
                }
            }
            allSerial = listO0;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("initUsbSerialBind : ", JSON.toJSONString(allSerial)));
        UsbUtils usbUtils = UsbUtils.INSTANCE;
        List<Integer> devBusByDriver = usbUtils.getDevBusByDriver();
        if (devBusByDriver.isEmpty()) {
            devBusByDriver = UsbUtils.getDevBus$default(usbUtils, null, 1, null);
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("getDevBusByVendor : ", JSON.toJSONString(devBusByDriver)));
        }
        File[] fileArrListFiles = new File("/dev/bus/usb").listFiles();
        if (fileArrListFiles == null) {
            listF0 = null;
        } else {
            ArrayList arrayList = new ArrayList(fileArrListFiles.length);
            for (File file : fileArrListFiles) {
                arrayList.add(file.getAbsolutePath());
            }
            listF0 = CollectionsKt___CollectionsKt.F0(arrayList);
        }
        int i3 = 0;
        for (CameraIntent cameraIntent : CameraIntent.INSTANCE.getCacheList()) {
            if (cameraIntent.isSerialNoBind()) {
                if (cameraIntent.getDevice() != -1) {
                    if (listF0 != null && (str = (String) kotlin.collections.s.f0(listF0, cameraIntent.getDevice())) != null) {
                        Iterator<T> it = allSerial.iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            } else {
                                next = it.next();
                                devBus = ((UsbSerial) next).getDevBus();
                                devBusByName = UsbUtils.INSTANCE.getDevBusByName(str);
                            }
                        } while (!(devBusByName != null && devBus == devBusByName.intValue()));
                        UsbSerial usbSerial = (UsbSerial) next;
                        if (usbSerial != null) {
                            cn.mucang.android.jiakaoyi.framework.log.f.o("旧转新绑定关系-" + cameraIntent + ": \nold: " + str + "\nnew: usb" + usbSerial.getDevBus() + "->" + usbSerial.getSerial());
                            cameraIntent.bindSerial(usbSerial.getSerial());
                        }
                    }
                } else if (!devBusByDriver.isEmpty()) {
                    Iterator<T> it2 = allSerial.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next2 = null;
                            break;
                        } else {
                            next2 = it2.next();
                            devBus2 = ((UsbSerial) next2).getDevBus();
                            num = (Integer) kotlin.collections.s.f0(devBusByDriver, i3 % devBusByDriver.size());
                        }
                    } while (!(num != null && devBus2 == num.intValue()));
                    UsbSerial usbSerial2 = (UsbSerial) next2;
                    if (usbSerial2 != null) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("设置默认绑定关系-" + cameraIntent + ": \nusb" + usbSerial2.getDevBus() + "->" + usbSerial2.getSerial());
                        cameraIntent.bindSerial(usbSerial2.getSerial());
                    }
                    i3++;
                }
            }
        }
        usbSerialList.addAll(allSerial);
        USBMonitor uSBMonitor = new USBMonitor(context, this);
        usbMonitor = uSBMonitor;
        if (uSBMonitor == null) {
            return;
        }
        uSBMonitor.register();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onAttach$lambda-49, reason: not valid java name */
    public static final void m86onAttach$lambda49(UsbDevice device) {
        Object next;
        kotlin.jvm.internal.r.e(device, "$device");
        Set<UsbDevice> setKeySet = deviceBlocks.keySet();
        kotlin.jvm.internal.r.d(setKeySet, "deviceBlocks.keys");
        Iterator<T> it = setKeySet.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!kotlin.jvm.internal.r.a(((UsbDevice) next).getDeviceName(), device.getDeviceName()));
        if (next == null) {
            USBMonitor uSBMonitor = usbMonitor;
            if (uSBMonitor != null) {
                uSBMonitor.requestPermission(device);
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("usb onAttach : ", device.getDeviceName()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:12:0x0052  */
    /* JADX INFO: renamed from: onConnect$lambda-53, reason: not valid java name */
    public static final void m87onConnect$lambda53(UsbDevice device, USBMonitor.UsbControlBlock ctrlBlock) {
        boolean z;
        Object next;
        kotlin.jvm.internal.r.e(device, "$device");
        kotlin.jvm.internal.r.e(ctrlBlock, "$ctrlBlock");
        UsbCameraManager usbCameraManager = INSTANCE;
        Integer num = 0;
        if (usbCameraManager.getCameraMap().get(device) == null) {
            Set<Map.Entry<UsbDevice, UsbCameraThread>> setEntrySet = usbCameraManager.getCameraMap().entrySet();
            kotlin.jvm.internal.r.d(setEntrySet, "cameraMap.entries");
            Iterator<T> it = setEntrySet.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!kotlin.jvm.internal.r.a(device.getDeviceName(), ((UsbDevice) ((Map.Entry) next).getKey()).getDeviceName()));
            z = next != null;
        }
        if (z) {
            return;
        }
        deviceBlocks.put(device, ctrlBlock);
        UsbCameraManager usbCameraManager2 = INSTANCE;
        if (usbCameraManager2.checkSameBind() || !usbCameraManager2.checkSameBindSecond()) {
            for (CameraIntent cameraIntent : CameraIntent.INSTANCE.getCacheList()) {
                UsbCameraManager usbCameraManager3 = INSTANCE;
                String deviceName = device.getDeviceName();
                kotlin.jvm.internal.r.d(deviceName, "device.deviceName");
                if (usbCameraManager3.containSerial(deviceName, cameraIntent.getBindSerial())) {
                    ConcurrentHashMap<UsbDevice, Integer> concurrentHashMap = invalidUsbCount;
                    Integer numPutIfAbsent = concurrentHashMap.get(device);
                    if (numPutIfAbsent == null && (numPutIfAbsent = concurrentHashMap.putIfAbsent(device, num)) == null) {
                        numPutIfAbsent = num;
                    }
                    kotlin.jvm.internal.r.d(numPutIfAbsent, "invalidUsbCount.getOrPut(device) { 0 }");
                    if (numPutIfAbsent.intValue() < 3 && cn.mucang.android.core.utils.g.d(listeners.get(cameraIntent))) {
                        if (usbCameraManager3.openSync(device, ctrlBlock, "open for onConnect")) {
                            return;
                        }
                        Integer num2 = concurrentHashMap.get(device);
                        concurrentHashMap.put(device, Integer.valueOf((num2 != null ? num2 : 0).intValue() + 1));
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onDettach$lambda-54, reason: not valid java name */
    public static final void m88onDettach$lambda54(UsbDevice device) {
        kotlin.jvm.internal.r.e(device, "$device");
        deviceBlocks.remove(device);
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("usb onDetach : ", device.getDeviceName()));
        INSTANCE.closeCamera(device, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onDisconnect$lambda-55, reason: not valid java name */
    public static final void m89onDisconnect$lambda55(UsbDevice device) {
        kotlin.jvm.internal.r.e(device, "$device");
        closeCamera$default(INSTANCE, device, false, 2, null);
    }

    @UsbThread
    private final boolean openSync(UsbDevice device, USBMonitor.UsbControlBlock ctrlBlock, String fromDesc) throws InterruptedException {
        UsbCameraThread usbCameraThread = new UsbCameraThread(kotlin.jvm.internal.r.m("摄像头:", device.getDeviceName()), this, width, height, mode);
        usbCameraThread.setDaemon(false);
        usbCameraThread.setPriority(9);
        usbCameraThread.start();
        cn.mucang.android.jiakaoyi.framework.log.f.o(fromDesc + ':' + device.getDeviceName());
        UsbCameraThread usbCameraThreadOpenCameraBlock = usbCameraThread.openCameraBlock(ctrlBlock, device, previewInOpen);
        if (usbCameraThreadOpenCameraBlock != null) {
            cameraMap.put(device, usbCameraThreadOpenCameraBlock);
            for (CameraIntent cameraIntent : CameraIntent.INSTANCE.getCacheList()) {
                UsbCameraManager usbCameraManager = INSTANCE;
                String deviceName = device.getDeviceName();
                kotlin.jvm.internal.r.d(deviceName, "device.deviceName");
                if (usbCameraManager.containSerial(deviceName, cameraIntent.getBindSerial())) {
                    kotlinx.coroutines.g.b(j0.b(), null, null, new UsbCameraManager$openSync$1$1(cameraIntent, null), 3, null);
                }
            }
        }
        return usbCameraThreadOpenCameraBlock != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: registerCameraListener$lambda-17, reason: not valid java name */
    public static final void m90registerCameraListener$lambda17(final CameraIntent intent, UsbCameraListener listener) {
        kotlin.jvm.internal.r.e(intent, "$intent");
        kotlin.jvm.internal.r.e(listener, "$listener");
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m(intent.getDesc(), "：开始注册监听"));
        if (!AppUtils.k()) {
            UsbCameraManager usbCameraManager = INSTANCE;
            Application context = MucangConfig.getContext();
            kotlin.jvm.internal.r.d(context, "getContext()");
            usbCameraManager.init(context);
        }
        ConcurrentHashMap<CameraIntent, List<UsbCameraListener>> concurrentHashMap = listeners;
        List<UsbCameraListener> list = concurrentHashMap.get(intent);
        if (list == null) {
            concurrentHashMap.put(intent, new ArrayList());
        }
        boolean z = false;
        if (list != null && list.contains(listener)) {
            z = true;
        }
        if (z) {
            return;
        }
        List<UsbCameraListener> list2 = concurrentHashMap.get(intent);
        if (list2 != null) {
            list2.add(listener);
        }
        DebounceUtil.f3633a.b(intent.getKey(), 200, new Runnable() { // from class: cn.mucang.android.jky.camera.h
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m91registerCameraListener$lambda17$lambda16(intent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: registerCameraListener$lambda-17$lambda-16, reason: not valid java name */
    public static final void m91registerCameraListener$lambda17$lambda16(CameraIntent intent) {
        kotlin.jvm.internal.r.e(intent, "$intent");
        cn.mucang.android.core.utils.u.e(closeTask);
        INSTANCE.checkCameraOpen(intent);
    }

    public static final void release() {
        es.execute(new Runnable() { // from class: cn.mucang.android.jky.camera.e
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m92release$lambda11();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: release$lambda-11, reason: not valid java name */
    public static final void m92release$lambda11() {
        cn.mucang.android.jiakaoyi.framework.log.f.o("usb camera manager release");
        USBMonitor uSBMonitor = usbMonitor;
        if (uSBMonitor != null) {
            uSBMonitor.unregister();
        }
        USBMonitor uSBMonitor2 = usbMonitor;
        if (uSBMonitor2 != null) {
            uSBMonitor2.destroy();
        }
        Iterator<Map.Entry<UsbDevice, UsbCameraThread>> it = INSTANCE.getCameraMap().entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().release();
        }
        INSTANCE.getCameraMap().clear();
        usbMonitor = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
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
    public static final void m93startPreviewCamera$lambda20(final CameraIntent intent, final Object obj, final int i) {
        kotlin.jvm.internal.r.e(intent, "$intent");
        UsbCameraManager usbCameraManager = INSTANCE;
        UsbCameraThread cameraThread = usbCameraManager.getCameraThread(intent);
        if (cameraThread != null) {
            cameraThread.startPreviewCamera(obj, i);
            return;
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        final ?? r2 = new UsbCameraListener() { // from class: cn.mucang.android.jky.camera.UsbCameraManager$startPreviewCamera$1$listener$1
            @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
            public void onConnect() {
                UsbCameraManager.UsbCameraListener.DefaultImpls.onConnect(this);
                cn.mucang.android.core.utils.u.e(ref$ObjectRef.element);
                UsbCameraManager usbCameraManager2 = UsbCameraManager.INSTANCE;
                usbCameraManager2.unregisterCameraListener(intent, this);
                UsbCameraThread cameraThread2 = usbCameraManager2.getCameraThread(intent);
                if (cameraThread2 == null) {
                    return;
                }
                cameraThread2.startPreviewCamera(obj, i);
            }

            @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
            public void onDetached() {
                UsbCameraManager.UsbCameraListener.DefaultImpls.onDetached(this);
            }

            @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
            public void onDisconnect() {
                UsbCameraManager.UsbCameraListener.DefaultImpls.onDisconnect(this);
            }

            @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
            public void onPreviewFrame(byte[] data) {
                kotlin.jvm.internal.r.e(data, "data");
            }
        };
        ref$ObjectRef.element = new Runnable() { // from class: cn.mucang.android.jky.camera.a
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m94startPreviewCamera$lambda20$lambda19(intent, r2);
            }
        };
        usbCameraManager.registerCameraListener(intent, r2);
        cn.mucang.android.core.utils.u.d((Runnable) ref$ObjectRef.element, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startPreviewCamera$lambda-20$lambda-19, reason: not valid java name */
    public static final void m94startPreviewCamera$lambda20$lambda19(CameraIntent intent, UsbCameraManager$startPreviewCamera$1$listener$1 listener) {
        kotlin.jvm.internal.r.e(intent, "$intent");
        kotlin.jvm.internal.r.e(listener, "$listener");
        INSTANCE.unregisterCameraListener(intent, listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: stopPreviewCamera$lambda-21, reason: not valid java name */
    public static final void m95stopPreviewCamera$lambda21(CameraIntent intent, int i) {
        kotlin.jvm.internal.r.e(intent, "$intent");
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("stop preview : ", intent.getDesc()));
        UsbCameraThread cameraThread = INSTANCE.getCameraThread(intent);
        if (cameraThread == null) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("thread=", cameraThread.getName()));
        cameraThread.stopPreviewCamera(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: tryCloseNoUseCamera$lambda-15, reason: not valid java name */
    public static final void m96tryCloseNoUseCamera$lambda15() {
        INSTANCE.checkCameraClose();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: tryOpenAllDevice$lambda-14, reason: not valid java name */
    public static final void m97tryOpenAllDevice$lambda14() throws InterruptedException {
        for (Map.Entry<UsbDevice, USBMonitor.UsbControlBlock> entry : deviceBlocks.entrySet()) {
            UsbCameraManager usbCameraManager = INSTANCE;
            if (usbCameraManager.getCameraMap().get(entry.getKey()) == null) {
                usbCameraManager.openSync(entry.getKey(), entry.getValue(), "open for tryOpenAllDevice");
            }
            Thread.sleep(100L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: unregisterCameraListener$lambda-18, reason: not valid java name */
    public static final void m98unregisterCameraListener$lambda18(CameraIntent intent, UsbCameraListener listener) {
        kotlin.jvm.internal.r.e(intent, "$intent");
        kotlin.jvm.internal.r.e(listener, "$listener");
        List<UsbCameraListener> list = listeners.get(intent);
        if (list != null) {
            list.remove(listener);
        }
        cn.mucang.android.core.utils.u.e(closeTask);
        cn.mucang.android.core.utils.u.d(closeTask, 3000L);
    }

    public final LinkedHashMap<UsbDevice, UsbCameraThread> getCameraMap() {
        return cameraMap;
    }

    public final LinkedHashMap<String, UsbDevice> getConnectedPortList() {
        LinkedHashMap<String, UsbDevice> linkedHashMap = new LinkedHashMap<>();
        Set<UsbDevice> setKeySet = cameraMap.keySet();
        kotlin.jvm.internal.r.d(setKeySet, "cameraMap.keys");
        for (UsbDevice it : setKeySet) {
            UsbUtils usbUtils = UsbUtils.INSTANCE;
            String deviceName = it.getDeviceName();
            kotlin.jvm.internal.r.d(deviceName, "it.deviceName");
            String strM = kotlin.jvm.internal.r.m("USB", usbUtils.getDevBusByName(deviceName));
            kotlin.jvm.internal.r.d(it, "it");
            linkedHashMap.put(strM, it);
        }
        return linkedHashMap;
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

    public final void init(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        init(context, 1280, 720, 1);
    }

    @Override // com.serenegiant.usb.USBMonitor.OnDeviceConnectListener
    public void onAttach(final UsbDevice device) {
        kotlin.jvm.internal.r.e(device, "device");
        es.execute(new Runnable() { // from class: cn.mucang.android.jky.camera.i
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m86onAttach$lambda49(device);
            }
        });
    }

    @Override // com.serenegiant.usb.USBMonitor.OnDeviceConnectListener
    public void onCancel(UsbDevice device) {
        kotlin.jvm.internal.r.e(device, "device");
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("usb cancel : ", device.getDeviceName()));
    }

    @Override // com.serenegiant.usb.USBMonitor.OnDeviceConnectListener
    public void onConnect(final UsbDevice device, final USBMonitor.UsbControlBlock ctrlBlock, boolean createNew) {
        kotlin.jvm.internal.r.e(device, "device");
        kotlin.jvm.internal.r.e(ctrlBlock, "ctrlBlock");
        es.execute(new Runnable() { // from class: cn.mucang.android.jky.camera.l
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m87onConnect$lambda53(device, ctrlBlock);
            }
        });
    }

    @Override // com.serenegiant.usb.USBMonitor.OnDeviceConnectListener
    public void onDettach(final UsbDevice device) {
        kotlin.jvm.internal.r.e(device, "device");
        es.execute(new Runnable() { // from class: cn.mucang.android.jky.camera.o
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m88onDettach$lambda54(device);
            }
        });
    }

    @Override // com.serenegiant.usb.USBMonitor.OnDeviceConnectListener
    public void onDisconnect(final UsbDevice device, USBMonitor.UsbControlBlock ctrlBlock) {
        kotlin.jvm.internal.r.e(device, "device");
        kotlin.jvm.internal.r.e(ctrlBlock, "ctrlBlock");
        es.execute(new Runnable() { // from class: cn.mucang.android.jky.camera.p
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m89onDisconnect$lambda55(device);
            }
        });
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraThread.UsbCameraCallback
    public void onPreviewFrame(UsbDevice device, byte[] data) {
        kotlin.jvm.internal.r.e(data, "data");
        if (device == null) {
            return;
        }
        for (CameraIntent cameraIntent : CameraIntent.INSTANCE.getCacheList()) {
            UsbCameraManager usbCameraManager = INSTANCE;
            String deviceName = device.getDeviceName();
            kotlin.jvm.internal.r.d(deviceName, "device.deviceName");
            if (usbCameraManager.containSerial(deviceName, cameraIntent.getBindSerial())) {
                kotlinx.coroutines.g.b(j0.b(), null, null, new UsbCameraManager$onPreviewFrame$1$1(cameraIntent, data, null), 3, null);
            }
        }
    }

    public final void registerCameraListener(final CameraIntent intent, final UsbCameraListener listener) {
        kotlin.jvm.internal.r.e(intent, "intent");
        kotlin.jvm.internal.r.e(listener, "listener");
        cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.android.jky.camera.c
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m90registerCameraListener$lambda17(intent, listener);
            }
        });
    }

    public final void setPreviewInOpen(boolean value) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("setPreviewInOpen:", Boolean.valueOf(value)));
        previewInOpen = value;
    }

    public final void startPreviewCamera(final CameraIntent intent, final Object surface, final int previewId) {
        kotlin.jvm.internal.r.e(intent, "intent");
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m(intent.getDesc(), "：开始预览"));
        es.execute(new Runnable() { // from class: cn.mucang.android.jky.camera.m
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m93startPreviewCamera$lambda20(intent, surface, previewId);
            }
        });
    }

    public final void stopPreviewCamera(CameraIntent intent) {
        kotlin.jvm.internal.r.e(intent, "intent");
        stopPreviewCamera(intent, 0);
    }

    public final void tryCloseNoUseCamera() {
        es.execute(new Runnable() { // from class: cn.mucang.android.jky.camera.r
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m96tryCloseNoUseCamera$lambda15();
            }
        });
    }

    public final void tryOpenAllDevice() {
        es.execute(new Runnable() { // from class: cn.mucang.android.jky.camera.q
            @Override // java.lang.Runnable
            public final void run() throws InterruptedException {
                UsbCameraManager.m97tryOpenAllDevice$lambda14();
            }
        });
    }

    public final void unregisterCameraListener(final CameraIntent intent, final UsbCameraListener listener) {
        kotlin.jvm.internal.r.e(intent, "intent");
        kotlin.jvm.internal.r.e(listener, "listener");
        cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.android.jky.camera.k
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m98unregisterCameraListener$lambda18(intent, listener);
            }
        });
    }

    public static final void init(final Context context, int width2, int height2, int mode2) {
        kotlin.jvm.internal.r.e(context, "context");
        if (usbMonitor != null) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("usb camera manager init");
        width = width2;
        height = height2;
        mode = mode2;
        es.execute(new Runnable() { // from class: cn.mucang.android.jky.camera.f
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m85init$lambda2(context);
            }
        });
    }

    public final void stopPreviewCamera(final CameraIntent intent, final int previewId) {
        kotlin.jvm.internal.r.e(intent, "intent");
        es.execute(new Runnable() { // from class: cn.mucang.android.jky.camera.b
            @Override // java.lang.Runnable
            public final void run() {
                UsbCameraManager.m95stopPreviewCamera$lambda21(intent, previewId);
            }
        });
    }
}
