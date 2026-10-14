package cn.mucang.android.jiakaoyi.signal.communicate;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.os.Parcelable;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.iflytek.speech.UtilityConfig;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.communicate.u, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\u0018\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/communicate/UsbDeviceManager;", "", "()V", "ACTION_USB_PERMISSION", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/jiakaoyi/signal/communicate/UsbDeviceManager$OnDeviceConnectListener;", "serial", "Lcom/felhr/usbserial/UsbSerialDevice;", "usbManager", "Landroid/hardware/usb/UsbManager;", "usbReceiver", "Landroid/content/BroadcastReceiver;", "connect", "", UtilityConfig.KEY_DEVICE_INFO, "Landroid/hardware/usb/UsbDevice;", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "context", "Landroid/content/Context;", "requestPermission", "OnDeviceConnectListener", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UsbDeviceManager {
    private static UsbManager b;
    private static com.felhr.usbserial.j c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static a f5475d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UsbDeviceManager f5474a = new UsbDeviceManager();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final BroadcastReceiver f5476e = new b();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.communicate.u$a */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/communicate/UsbDeviceManager$OnDeviceConnectListener;", "", "onDeviceConnect", "", "serial", "Lcom/felhr/usbserial/UsbSerialDevice;", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface a {
        void a(com.felhr.usbserial.j jVar);
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.communicate.u$b */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/signal/communicate/UsbDeviceManager$usbReceiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(intent, "intent");
            if (kotlin.jvm.internal.r.a("com.android.example.USB_PERMISSION", intent.getAction())) {
                Parcelable parcelableExtra = intent.getParcelableExtra(UtilityConfig.KEY_DEVICE_INFO);
                UsbDevice usbDevice = parcelableExtra instanceof UsbDevice ? (UsbDevice) parcelableExtra : null;
                if (intent.getBooleanExtra("permission", false)) {
                    UsbDeviceManager.f5474a.b(usbDevice);
                } else {
                    cn.mucang.android.core.utils.t.d("UsbDeviceManager", kotlin.jvm.internal.r.m("permission denied for device ", usbDevice));
                }
            }
        }
    }

    private UsbDeviceManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(UsbDevice usbDevice) {
        a aVar;
        if (usbDevice == null) {
            return;
        }
        UsbManager usbManager = b;
        com.felhr.usbserial.j jVarE = com.felhr.usbserial.j.e(usbDevice, usbManager == null ? null : usbManager.openDevice(usbDevice));
        c = jVarE;
        if (jVarE != null) {
            jVarE.n();
        }
        com.felhr.usbserial.j jVar = c;
        if (jVar != null) {
            jVar.k(115200);
        }
        com.felhr.usbserial.j jVar2 = c;
        if (jVar2 == null || (aVar = f5475d) == null) {
            return;
        }
        aVar.a(jVar2);
    }

    public static final void c(Context context, a listener) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(listener, "listener");
        f5475d = listener;
        Object systemService = context.getSystemService("usb");
        UsbManager usbManager = systemService instanceof UsbManager ? (UsbManager) systemService : null;
        b = usbManager;
        if (usbManager == null) {
            return;
        }
        for (UsbDevice usbDevice : usbManager.getDeviceList().values()) {
            if (com.felhr.usbserial.j.j(usbDevice)) {
                if (usbManager.hasPermission(usbDevice)) {
                    f5474a.b(usbDevice);
                    return;
                } else {
                    context.registerReceiver(f5476e, new IntentFilter("com.android.example.USB_PERMISSION"));
                    usbManager.requestPermission(usbDevice, PendingIntent.getBroadcast(context, 0, new Intent("com.android.example.USB_PERMISSION"), 0));
                    return;
                }
            }
        }
    }
}
