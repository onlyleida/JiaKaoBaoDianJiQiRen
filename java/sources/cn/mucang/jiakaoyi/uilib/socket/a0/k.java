package cn.mucang.jiakaoyi.uilib.socket.a0;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.lifecycle.a0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.jiakaoyi.uilib.socket.SocketModel;
import cn.mucang.jiakaoyi.uilib.socket.config.MCMessageParserConfig;
import cn.mucang.jiakaoyi.uilib.socket.model.UdpResponse;
import cn.mucang.jiakaoyi.uilib.socket.y.w;
import cn.mucang.jiakaoyi.uilib.socket.z.t;
import com.google.common.primitives.UnsignedBytes;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class k {
    private DatagramSocket b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f9651d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f9652e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9653f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f9654g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private byte[] f9655h;
    private Handler i;
    private HandlerThread j;
    private int k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a0<UdpResponse> f9650a = new a();
    private final byte[] l = new byte[1500];
    private volatile boolean c = false;

    class a implements a0<UdpResponse> {
        a() {
        }

        @Override // androidx.lifecycle.a0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(UdpResponse udpResponse) {
            if (udpResponse.getType() != 21) {
                return;
            }
            k.this.k = 0;
            k.this.f9653f = 0;
            k.this.f9654g = udpResponse.t;
            k.this.f9655h = udpResponse.token;
            cn.mucang.android.jiakaoyi.framework.log.f.f("业务udp:收到业务token");
            k.this.x();
        }
    }

    class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            k.this.k(message);
        }
    }

    public k(String str, int i) {
        this.f9651d = i + 1;
        this.f9652e = str;
    }

    private void h() {
        if (!this.c && this.b == null) {
            int i = 30;
            while (i > 0 && !this.c) {
                try {
                    if (this.c) {
                        return;
                    }
                    DatagramSocket datagramSocket = new DatagramSocket();
                    this.b = datagramSocket;
                    datagramSocket.setReceiveBufferSize(1600);
                    this.b.connect(InetAddress.getByName(this.f9652e), this.f9651d);
                    cn.mucang.android.jiakaoyi.framework.log.f.f("业务udp:udp本地port:" + this.b.getLocalPort());
                    u();
                    return;
                } catch (Throwable th) {
                    cn.mucang.android.jiakaoyi.framework.log.f.f("业务udp:" + i + ":udp启动异常:" + th.getLocalizedMessage());
                    i += -1;
                    SystemClock.sleep(500L);
                }
            }
        }
    }

    private void i() {
        DatagramSocket datagramSocket = this.b;
        this.b = null;
        cn.mucang.android.jiakaoyi.framework.log.f.f("业务udp:udp关闭:" + this.f9651d);
        if (datagramSocket != null) {
            try {
                if (!datagramSocket.isClosed()) {
                    datagramSocket.close();
                }
                datagramSocket.disconnect();
            } catch (Throwable th) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("业务udp:udp关闭异常:" + th.getLocalizedMessage());
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("业务udp:udp关闭完成:" + this.f9651d);
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.a0.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f9640a.p();
            }
        });
    }

    private void j(byte b2, byte[] bArr) {
        if (this.c) {
            return;
        }
        try {
            if (this.f9655h == null) {
                int i = this.k + 1;
                this.k = i;
                if (i >= 50) {
                    this.k = 0;
                    cn.mucang.android.jiakaoyi.framework.log.f.f("业务udp:等待50帧还没有token，不应该发生，因为是先有token再启动udp连接");
                    return;
                }
                return;
            }
            this.k = 0;
            byte[] bArrY = y(b2, bArr);
            if (bArrY == null) {
                return;
            }
            this.b.send(new DatagramPacket(bArrY, bArrY.length));
        } catch (Throwable th) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("业务udp:发送数据失败:" + th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(Message message) {
        int i = message.what;
        if (i == 1) {
            h();
        } else if (i == 2) {
            j((byte) message.arg1, (byte[]) message.obj);
        } else {
            if (i != 3) {
                return;
            }
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n() {
        LiveBus.d(UdpResponse.class).m(this.f9650a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p() {
        try {
            Handler handler = this.i;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                this.j.quit();
            }
        } catch (Throwable th) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("推出线程出错:" + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r() {
        cn.mucang.android.jiakaoyi.framework.log.f.f("bizUdp开始receive数据");
        DatagramSocket datagramSocket = this.b;
        while (!this.c && datagramSocket != null && !datagramSocket.isClosed()) {
            try {
                byte[] bArr = this.l;
                DatagramPacket datagramPacket = new DatagramPacket(bArr, bArr.length);
                this.b.receive(datagramPacket);
                byte[] bArrCopyOfRange = Arrays.copyOfRange(datagramPacket.getData(), datagramPacket.getOffset(), datagramPacket.getLength());
                if (bArrCopyOfRange.length > 1) {
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArrCopyOfRange);
                    int i = byteBufferWrap.get() & UnsignedBytes.MAX_VALUE;
                    byteBufferWrap.getInt();
                    byte[] bArr2 = new byte[byteBufferWrap.remaining()];
                    byteBufferWrap.get(bArr2);
                    t<? extends SocketModel> messageParser = MCMessageParserConfig.getMessageParser(i);
                    w<? extends SocketModel> messageHandler = MCMessageParserConfig.getMessageHandler(i);
                    if (messageParser != null) {
                        SocketModel socketModelA = messageParser.a(i, ByteBuffer.wrap(bArr2));
                        if (messageHandler != null) {
                            messageHandler.a(socketModelA);
                        }
                    } else {
                        cn.mucang.android.jiakaoyi.framework.log.f.f("bizUdp 没有找到0x" + Integer.toHexString(i) + "的MessageParser");
                    }
                } else {
                    cn.mucang.android.jiakaoyi.framework.log.f.f("bizUdp receive 数据长度 <= 1");
                }
            } catch (Throwable th) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("bizUdp receive数据出错:" + th.getMessage());
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("bizUdp结束receive数据");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void t() {
        if (this.c || this.c) {
            return;
        }
        LiveBus.d(UdpResponse.class).i(this.f9650a);
        cn.mucang.android.jiakaoyi.framework.log.f.f("业务udp:请求udp token");
        cn.mucang.jiakaoyi.uilib.socket.u.a();
    }

    private void u() {
        new Thread(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.a0.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f9643a.r();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (this.b == null && !this.c) {
            HandlerThread handlerThread = new HandlerThread("BusinessUdpThread");
            this.j = handlerThread;
            handlerThread.start();
            b bVar = new b(this.j.getLooper());
            bVar.sendEmptyMessage(1);
            this.i = bVar;
        }
    }

    private byte[] y(byte b2, byte[] bArr) {
        byte[] bArr2 = this.f9655h;
        if (bArr2 == null) {
            return null;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length + 1 + bArr2.length + 4);
        byteBufferAllocate.put(b2);
        byteBufferAllocate.put(bArr2);
        int i = this.f9653f;
        this.f9653f = i + 1;
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.put(bArr);
        return byteBufferAllocate.array();
    }

    public void g() {
        this.c = true;
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.a0.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f9642a.n();
            }
        });
        Handler handler = this.i;
        if (handler != null && handler.sendEmptyMessage(3)) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("业务udp:发送关闭消息");
        } else if (this.b != null) {
            i();
        }
    }

    public boolean l() {
        return (this.c || this.b == null) ? false : true;
    }

    public boolean v(byte b2, byte[] bArr) {
        Handler handler;
        if (bArr == null || (handler = this.i) == null) {
            return false;
        }
        handler.sendMessage(handler.obtainMessage(2, b2, b2, bArr));
        return true;
    }

    public void w() {
        this.c = false;
        cn.mucang.android.jiakaoyi.framework.log.f.f("业务udp:启动udp");
        u.d(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.a0.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f9641a.t();
            }
        }, 100L);
    }
}
