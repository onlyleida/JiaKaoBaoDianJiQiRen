package cn.mucang.jiakaoyi.uilib.socket.a0;

import android.os.SystemClock;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.signal.gps.GpsAnalysis;
import cn.mucang.jiakaoyi.uilib.rtmc.GpsStationSwitcher;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import cn.mucang.jiakaoyi.uilib.socket.model.DiffDataModel;
import cn.mucang.jiakaoyi.uilib.socket.model.UdpResponse;
import cn.mucang.jiakaoyi.uilib.socket.p;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class l {
    private DatagramSocket c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f9660e;
    private final int j;
    private final String k;
    private long n;
    private String o;
    private final p.a p;
    private Runnable q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a0<UdpResponse> f9658a = new a();
    private final Runnable b = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f9663h = false;
    private volatile boolean i = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f9661f = false;
    private int l = 0;
    private int m = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final byte[] f9662g = new byte[1500];

    class a implements a0<UdpResponse> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void b() {
            l.this.h();
        }

        @Override // androidx.lifecycle.a0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onChanged(UdpResponse udpResponse) {
            if (udpResponse.getType() != 19) {
                return;
            }
            l.this.o = udpResponse.t;
            cn.mucang.android.jiakaoyi.framework.log.f.f("收到udp token");
            new Thread(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.a0.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f9644a.b();
                }
            }).start();
        }
    }

    class b implements Runnable {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void b() {
            l.this.g();
            while (l.this.f9661f) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("udp等待receive线程关闭");
                SystemClock.sleep(1L);
            }
            SystemClock.sleep(500L);
            l.this.t();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (l.this.f9663h) {
                return;
            }
            if (System.currentTimeMillis() - l.this.f9660e <= 8000 || l.this.f9660e <= 0) {
                u.e(l.this.b);
                u.d(l.this.b, 1000L);
            } else {
                cn.mucang.android.jiakaoyi.framework.log.f.f("8秒没有收到rtcm数据，重新启动udp连接");
                n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.a0.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f9645a.b();
                    }
                });
            }
        }
    }

    public l(String str, int i, p.a aVar, Runnable runnable) {
        this.j = i + 1;
        this.k = str;
        this.q = runnable;
        this.p = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.f9663h) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("udp connect时isClose=true");
            return;
        }
        if (this.c != null) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("udp connect时socket不为空");
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("udp 开始connect");
        int i = 30;
        while (i > 0 && !this.f9663h) {
            try {
                if (this.f9663h) {
                    break;
                }
                DatagramSocket datagramSocket = new DatagramSocket();
                this.c = datagramSocket;
                datagramSocket.setReceiveBufferSize(1600);
                this.c.connect(InetAddress.getByName(this.k), this.j);
                cn.mucang.android.jiakaoyi.framework.log.f.f("udp本地port:" + this.c.getLocalPort());
                s();
                q();
                return;
            } catch (Throwable th) {
                cn.mucang.android.jiakaoyi.framework.log.f.f(i + ":udp启动异常:" + th.getLocalizedMessage());
                i += -1;
                SystemClock.sleep(500L);
            }
        }
        g();
        cn.mucang.android.jiakaoyi.framework.log.f.f("udp connect失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void j() {
        LiveBus.d(UdpResponse.class).m(this.f9658a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void l() {
        this.f9661f = true;
        cn.mucang.android.jiakaoyi.framework.log.f.f("udp开始receive数据");
        DatagramSocket datagramSocket = this.c;
        while (!this.f9663h && datagramSocket != null && !datagramSocket.isClosed()) {
            try {
                r(this.f9662g, datagramSocket);
            } catch (Throwable th) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("udp receive数据出错:" + th.getMessage());
            }
        }
        this.f9661f = false;
        cn.mucang.android.jiakaoyi.framework.log.f.f("udp结束receive数据");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:19:0x003b  */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n() {
        boolean z;
        Runnable runnable;
        long j = 0;
        int i = 0;
        while (!this.f9663h) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            boolean zJ = GpsStationSwitcher.f9475a.j();
            if (this.i) {
                long j2 = this.n;
                if (jElapsedRealtime - j2 <= SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US || j2 <= 0) {
                    z = false;
                } else {
                    long j3 = jElapsedRealtime - j;
                    if (!zJ ? j3 > DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS : j3 > 900) {
                        z = false;
                    } else {
                        z = true;
                    }
                }
            } else {
                z = false;
            }
            if (!this.i || z) {
                if (zJ) {
                    cn.mucang.android.jiakaoyi.framework.log.f.f("udp发送token");
                }
                try {
                    byte[] bytes = this.o.getBytes();
                    DatagramPacket datagramPacket = new DatagramPacket(bytes, bytes.length);
                    if (this.c != null && !this.f9663h) {
                        this.c.send(datagramPacket);
                        i++;
                    }
                } catch (Throwable th) {
                    cn.mucang.android.jiakaoyi.framework.log.f.f("udp发送token失败:" + th.getMessage());
                }
                j = jElapsedRealtime;
            }
            if (i == 30 && !this.i && (runnable = this.q) != null) {
                runnable.run();
                this.q = null;
            }
            SystemClock.sleep(1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p() {
        if (this.f9663h || this.f9663h) {
            return;
        }
        LiveBus.d(UdpResponse.class).i(this.f9658a);
        cn.mucang.android.jiakaoyi.framework.log.f.f("请求udp token");
        cn.mucang.jiakaoyi.uilib.socket.u.b();
    }

    private void q() {
        new Thread(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.a0.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f9647a.l();
            }
        }).start();
    }

    private void r(byte[] bArr, DatagramSocket datagramSocket) throws IOException {
        long j = 1000;
        if (!this.i) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("udp开始检查udp接受rtcm数据是否正常");
            u.d(this.b, 1000L);
        }
        DatagramPacket datagramPacket = new DatagramPacket(bArr, bArr.length);
        datagramSocket.setReceiveBufferSize(1600);
        datagramSocket.receive(datagramPacket);
        if (!this.i) {
            this.f9659d = 0;
            GpsAnalysis.f().l(true);
            cn.mucang.android.jiakaoyi.framework.log.f.f("udp开始工作");
            u.e(this.b);
            HPGpsManager.j();
        }
        this.i = true;
        this.n = SystemClock.elapsedRealtime();
        byte[] bArrCopyOfRange = Arrays.copyOfRange(datagramPacket.getData(), datagramPacket.getOffset(), datagramPacket.getLength());
        datagramSocket.setReceiveBufferSize(1);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArrCopyOfRange);
        while (byteBufferWrap.capacity() > 2 && byteBufferWrap.remaining() > 2) {
            short s = byteBufferWrap.getShort();
            if (s != 19) {
                int i = this.l + 1;
                this.l = i;
                if (i % 100 == 0) {
                    cn.mucang.android.jiakaoyi.framework.log.f.f("udp收到" + this.l + "个不能识别帧:" + Integer.toHexString(65535 & s));
                    return;
                }
                return;
            }
            int i2 = byteBufferWrap.getShort();
            int i3 = byteBufferWrap.getInt();
            if (i3 <= 1) {
                this.f9659d = i3;
            }
            if (i3 < this.f9659d) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("udp序号可能错乱, last = " + this.f9659d + " , now = " + i3);
            }
            if (i3 - this.f9659d > 1) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("udp可能丢帧, last = " + this.f9659d + " , now = " + i3);
            }
            byte[] bArr2 = new byte[i2];
            byteBufferWrap.get(bArr2);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.f9660e == 0) {
                this.f9660e = jCurrentTimeMillis - j;
            }
            long j2 = jCurrentTimeMillis - this.f9660e;
            GpsAnalysis.f().i((int) j2);
            int iH = cn.mucang.android.jiakaoyi.signal.c.d.m.h();
            if (j2 > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS || MucangConfig.v() || iH != 4) {
                cn.mucang.android.jiakaoyi.framework.log.f.q("udp : read=" + i2 + " , data=" + i2 + ", receive=" + bArrCopyOfRange.length + " , dt=" + j2 + " , last=" + this.f9659d + " , now=" + i3 + " , gpsType=" + iH);
            }
            this.f9660e = jCurrentTimeMillis;
            this.f9659d = i3;
            this.p.b(new DiffDataModel(bArr2));
            int i4 = this.m + 1;
            this.m = i4;
            if (i4 % 100 == 0) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("udp收到" + this.m + "个rtcm帧");
            }
            j = 1000;
        }
    }

    private void s() {
        new Thread(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.a0.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f9646a.n();
            }
        }).start();
    }

    public synchronized void g() {
        GpsAnalysis.f().l(false);
        this.f9663h = true;
        u.e(this.b);
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.a0.i
            @Override // java.lang.Runnable
            public final void run() {
                this.f9648a.j();
            }
        });
        this.i = false;
        DatagramSocket datagramSocket = this.c;
        this.c = null;
        this.f9660e = 0L;
        cn.mucang.android.jiakaoyi.framework.log.f.f("udp关闭:" + this.j);
        if (datagramSocket != null) {
            try {
                if (!datagramSocket.isClosed()) {
                    datagramSocket.close();
                }
                datagramSocket.disconnect();
            } catch (Throwable th) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("udp关闭异常:" + th.getLocalizedMessage());
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("udp关闭完成:" + this.j);
    }

    public synchronized void t() {
        this.f9660e = 0L;
        this.i = false;
        this.f9663h = false;
        this.f9659d = 0;
        cn.mucang.android.jiakaoyi.framework.log.f.f("启动udp");
        u.d(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.a0.j
            @Override // java.lang.Runnable
            public final void run() {
                this.f9649a.p();
            }
        }, 100L);
    }
}
