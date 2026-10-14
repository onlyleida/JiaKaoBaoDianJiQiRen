package cn.mucang.jiakaoyi.uilib.rtmc;

import android.location.Location;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.b0;
import cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager;
import cn.mucang.jiakaoyi.uilib.socket.SocketModel;
import cn.mucang.jiakaoyi.uilib.socket.model.DiffDataModel;
import cn.mucang.jiakaoyi.uilib.socket.o;
import cn.mucang.jiakaoyi.uilib.socket.t;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.LinkedList;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rtmc.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000i\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000*\u0001\u001a\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\b\u0010\u001c\u001a\u00020\u001dH\u0007J\b\u0010\u001e\u001a\u00020\u001dH\u0016J\b\u0010\u001f\u001a\u00020\u001dH\u0016J\u0012\u0010 \u001a\u00020\u001d2\b\u0010!\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\"\u001a\u00020\u001d2\b\u0010#\u001a\u0004\u0018\u00010$H\u0017J\u001a\u0010\"\u001a\u00020\u001d2\b\u0010%\u001a\u0004\u0018\u00010\u00182\u0006\u0010&\u001a\u00020\u000fH\u0002J\b\u0010'\u001a\u00020\u001dH\u0002J\b\u0010(\u001a\u00020\u001dH\u0007J\u0010\u0010)\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\fH\u0007J\b\u0010+\u001a\u00020\u001dH\u0007J\u0018\u0010+\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\fH\u0007J \u0010-\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020/2\u0006\u0010\r\u001a\u00020\f2\u0006\u00100\u001a\u000201H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001b¨\u00062"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rtmc/HPGpsManager;", "Lcn/mucang/jiakaoyi/uilib/socket/MCConnectListener;", "Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;", "()V", "TAG", "", "Time_To_Rtmc", "", "Time_To_Server", "callback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "emptyCount", "", "gpsQuality", "hasSendSiteOnce", "", "isStop", "lastRtcmTime", "lock", "", "lsatUploadGpsTime", "restartGpsComTime", "rtcmList", "Ljava/util/LinkedList;", "", "sendRtcmTask", "cn/mucang/jiakaoyi/uilib/rtmc/HPGpsManager$sendRtcmTask$1", "Lcn/mucang/jiakaoyi/uilib/rtmc/HPGpsManager$sendRtcmTask$1;", "init", "", "onConnect", "onConnectException", "onData", "data", "onMessage", ErrorDialogParams.EXTRA_MESSAGE, "Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;", "rtcm", "self", "sendRtcm", "stop", "updateGpsBase", "gpsBaseId", "uploadConfig", "siteId", "uploadLocation", "location", "Landroid/location/Location;", "satelliteNumber", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HPGpsManager implements o, DiffDataListener {
    private static long b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f9487d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f9488e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f9489f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static long f9491h;
    private static int i;
    private static long j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HPGpsManager f9486a = new HPGpsManager();
    private static final LinkedList<byte[]> c = new LinkedList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Object f9490g = new Object();
    private static a k = new a();
    private static final cn.mucang.android.jiakaoyi.signal.c.f.a l = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.jiakaoyi.uilib.rtmc.c
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            HPGpsManager.e(eVar);
        }
    };

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rtmc.h$a */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/jiakaoyi/uilib/rtmc/HPGpsManager$sendRtcmTask$1", "Ljava/lang/Runnable;", "run", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HPGpsManager.f9486a.i();
            u.d(this, 200L);
        }
    }

    private HPGpsManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(cn.mucang.android.jiakaoyi.signal.c.e it) {
        r.e(it, "it");
        HPGpsManager hPGpsManager = f9486a;
        int i2 = it.getCurrentPosition().f5282h;
        i = i2;
        if (j == 0 || i2 == 4 || i2 == 5) {
            j = it.d().L;
        }
        if (it.d().L - j > 30000) {
            j = it.d().L;
        }
        long j2 = it.d().L;
        if (j2 - b <= SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
            return;
        }
        if (!f9487d) {
            f9487d = k(ExamSiteUtil.e(0L), (int) ExamSiteUtil.f(0L));
        }
        if (Math.abs(it.getCurrentPosition().f5281g.getLatitude()) > 1.0E-5d && Math.abs(it.getCurrentPosition().f5281g.getLongitude()) > 1.0E-5d) {
            Location location = it.getCurrentPosition().f5281g;
            r.d(location, "it.currentPosition.location");
            hPGpsManager.l(location, it.getCurrentPosition().f5282h, (byte) it.getCurrentPosition().i);
        }
        b = j2;
    }

    public static final void f() {
        HPGpsManager hPGpsManager = f9486a;
        f9488e = false;
        cn.mucang.android.jiakaoyi.signal.c.d dVar = cn.mucang.android.jiakaoyi.signal.c.d.m;
        cn.mucang.android.jiakaoyi.signal.c.f.a aVar = l;
        dVar.n(aVar);
        dVar.b(aVar);
        u.e(k);
        u.c(k);
        t.b().Q();
        GpsStationSwitcher.f9475a.i(hPGpsManager);
    }

    private final void h(byte[] bArr, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        sb.append(z ? "自建" : "云");
        sb.append(")长度=");
        sb.append(bArr == null ? 0 : bArr.length);
        sb.append('}');
        cn.mucang.android.jiakaoyi.signal.handle.gps.g.b(sb.toString());
        synchronized (f9490g) {
            if (bArr != null) {
                if (bArr.length > 10) {
                    c.addFirst(bArr);
                }
            }
            v vVar = v.f15822a;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = f9491h;
        if (j2 > 0 && jCurrentTimeMillis - j2 > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS && bArr != null && bArr.length > 10) {
            cn.mucang.android.jiakaoyi.framework.log.f.i(r.m("距离上一帧rtcm的时间太长:", Long.valueOf(jCurrentTimeMillis - j2)));
        }
        f9491h = jCurrentTimeMillis;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i() {
        byte[] bArrRemoveLast;
        if (!b0.a().b() || f9488e) {
            return;
        }
        synchronized (f9490g) {
            LinkedList<byte[]> linkedList = c;
            if (linkedList.size() > 10) {
                cn.mucang.android.jiakaoyi.framework.log.f.i(r.m("rtcm数据积压太多没有往串口/下位机发送:", Integer.valueOf(linkedList.size())));
                while (true) {
                    LinkedList<byte[]> linkedList2 = c;
                    if (linkedList2.size() <= 1) {
                        break;
                    } else {
                        linkedList2.removeLast();
                    }
                }
            }
            LinkedList<byte[]> linkedList3 = c;
            bArrRemoveLast = linkedList3.size() != 0 ? linkedList3.removeLast() : null;
            v vVar = v.f15822a;
        }
        if (bArrRemoveLast != null) {
            byte[] bArr = bArrRemoveLast;
            if (bArr.length > 10) {
                f9489f = 0;
                McCommandManager.f5380a.l(bArr);
                if (i != 4) {
                    cn.mucang.android.jiakaoyi.framework.log.f.i("发送rtcm : " + Integer.valueOf(bArr.length) + " , gpsType = " + i);
                    return;
                }
                return;
            }
        }
        int i2 = f9489f + 1;
        f9489f = i2;
        if (i2 % 20 == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("rtcm数据长度异常:");
            byte[] bArr2 = bArrRemoveLast;
            sb.append(bArr2 != null ? Integer.valueOf(bArr2.length) : null);
            sb.append("，count = ");
            sb.append(f9489f);
            sb.append(", gpsType = ");
            sb.append(i);
            cn.mucang.android.jiakaoyi.framework.log.f.i(sb.toString());
        }
        if (bArrRemoveLast == null || f9489f % 1000 != 0) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.i("rtcm数据长度太短:" + Integer.valueOf(bArrRemoveLast.length) + ':' + f9489f);
    }

    public static final void j() {
        if (!b0.a().b() || f9488e) {
            return;
        }
        k(ExamSiteUtil.e(0L), (int) ExamSiteUtil.f(0L));
    }

    public static final boolean k(long j2, int i2) {
        if (!b0.a().b() || f9488e) {
            return false;
        }
        return cn.mucang.jiakaoyi.uilib.socket.u.i(j2, (byte) AppUtils.a(), i2);
    }

    private final void l(Location location, int i2, byte b2) {
        if (!b0.a().b() || f9488e) {
            return;
        }
        cn.mucang.jiakaoyi.uilib.socket.u.l(location.getLatitude(), location.getLongitude(), i2, GpsStationSwitcher.f9475a.g(), b2);
    }

    @Override // cn.mucang.jiakaoyi.uilib.socket.o
    public void a() {
        synchronized (f9490g) {
            c.clear();
            v vVar = v.f15822a;
        }
    }

    @Override // cn.mucang.jiakaoyi.uilib.rtmc.DiffDataListener
    public void b(byte[] bArr) {
        h(bArr, false);
    }

    @Override // cn.mucang.jiakaoyi.uilib.socket.o
    public void c(SocketModel socketModel) {
        if (socketModel instanceof DiffDataModel) {
            h(((DiffDataModel) socketModel).rtcm, true);
        }
    }

    @Override // cn.mucang.jiakaoyi.uilib.socket.o
    public void onConnect() {
        k(ExamSiteUtil.e(0L), (int) ExamSiteUtil.f(0L));
    }
}
