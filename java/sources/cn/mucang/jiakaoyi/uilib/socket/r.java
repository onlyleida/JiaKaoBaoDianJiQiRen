package cn.mucang.jiakaoyi.uilib.socket;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.JNet;
import cn.mucang.android.jiakaoyi.signal.com.heartbeat.HeartBeatPolicy;
import cn.mucang.android.jiakaoyi.signal.gps.GpsAnalysis;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import cn.mucang.jiakaoyi.uilib.socket.model.LoginRespModel;
import cn.mucang.jiakaoyi.uilib.socket.model.SocketInfo;
import cn.mucang.jiakaoyi.uilib.socket.parser.excption.MCException;
import com.mobile.auth.BuildConfig;
import com.tencent.connect.common.Constants;
import io.agora.rtc.internal.RtcEngineEvent;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes5.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Socket f9685a;
    private DataInputStream b;
    private BufferedOutputStream c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private p f9686d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f9687e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.com.heartbeat.a f9688f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f9689g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private cn.mucang.jiakaoyi.uilib.socket.a0.l f9690h;
    private cn.mucang.jiakaoyi.uilib.socket.a0.k i;
    private String j;
    private int k;
    private final p.a l;
    private final cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b m;
    private final Runnable n;

    class a implements cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b
        public void a(int i) {
            if (r.this.f9689g) {
                t.b().I(1000L);
            } else {
                t.a().I(1000L);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b
        public /* synthetic */ boolean b() {
            return cn.mucang.android.jiakaoyi.signal.com.heartbeat.b.a(this);
        }

        @Override // cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b
        public void c(int i) {
            if (r.this.f9689g) {
                t.b().M(i, false);
            } else {
                t.a().M(i, false);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b
        public String name() {
            return r.this.f9689g ? "GpsService" : "BusinessService";
        }
    }

    public r(boolean z, p.a aVar, Runnable runnable) {
        a aVar2 = new a();
        this.m = aVar2;
        this.n = runnable;
        this.f9688f = new cn.mucang.android.jiakaoyi.signal.com.heartbeat.a(new HeartBeatPolicy(5, 5), aVar2);
        this.f9689g = z;
        this.l = aVar;
    }

    private void d() {
        Socket socket = this.f9685a;
        if (socket == null || !socket.isConnected()) {
            return;
        }
        c();
    }

    private void e() {
        cn.mucang.jiakaoyi.uilib.socket.a0.l lVar = this.f9690h;
        this.f9690h = null;
        if (lVar != null) {
            lVar.g();
            cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "tcp关闭gps udp");
        }
        cn.mucang.jiakaoyi.uilib.socket.a0.k kVar = this.i;
        this.i = null;
        if (kVar != null) {
            kVar.g();
            cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "tcp关闭业务udp");
        }
    }

    private void f(String str, int i) throws IOException {
        d();
        this.j = str;
        this.k = i;
        cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "开始连接: " + h());
        Socket socket = new Socket();
        this.f9685a = socket;
        socket.connect(new InetSocketAddress(str, i));
        this.b = new DataInputStream(this.f9685a.getInputStream());
        this.c = new BufferedOutputStream(this.f9685a.getOutputStream());
    }

    private boolean g(LoginRespModel loginRespModel) {
        if (loginRespModel.isSuccess()) {
            m();
            return true;
        }
        l(loginRespModel.isTokenExpired() ? "token过期" : "token非法");
        return false;
    }

    private String h() {
        return "ip=" + i() + ", port=" + (this.k ^ RtcEngineEvent.EvtType.EVT_UNPUBLISH_URL);
    }

    private String i() {
        String str = this.j;
        return str == null ? BuildConfig.COMMON_MODULE_COMMIT_ID : str.replaceAll("1", Marker.ANY_MARKER).replaceAll(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, "1").replaceAll("\\.", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO);
    }

    private boolean k(String str) {
        try {
            cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "开始登陆:" + h());
            this.c.write(s.b(str));
            this.c.flush();
            cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "登陆数据写完毕，等待回应:" + h());
            SocketModel socketModelB = cn.mucang.jiakaoyi.uilib.socket.util.c.b(this.b);
            cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "登陆回应:" + socketModelB.getClass().getSimpleName());
            if (socketModelB instanceof LoginRespModel) {
                return g((LoginRespModel) socketModelB);
            }
            return false;
        } catch (Exception e2) {
            l(e2.getLocalizedMessage());
            return false;
        }
    }

    private void l(String str) {
        cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "登陆失败:" + h() + " , message" + str);
        this.f9687e = null;
    }

    private void m() {
        cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "登陆成功:" + h());
    }

    private void o() {
        cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "重试：" + h());
        if (this.f9689g) {
            t.b().I(1000L);
        } else {
            t.a().I(1000L);
        }
    }

    private String r() {
        return this.f9689g ? "GpsService" : "BusinessService";
    }

    private void v() {
        e();
        if (this.f9689g) {
            GpsAnalysis.f().l(true);
            cn.mucang.jiakaoyi.uilib.socket.a0.l lVar = new cn.mucang.jiakaoyi.uilib.socket.a0.l(this.j, this.k, this.l, this.n);
            this.f9690h = lVar;
            lVar.t();
            return;
        }
        if (AppUtils.k()) {
            cn.mucang.jiakaoyi.uilib.socket.a0.k kVar = new cn.mucang.jiakaoyi.uilib.socket.a0.k(this.j, this.k);
            this.i = kVar;
            kVar.w();
        }
    }

    public boolean b() {
        Socket socket;
        if (this.f9686d == null) {
            cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "读线程为空, " + h());
            return false;
        }
        if (this.c != null && (socket = this.f9685a) != null && socket.isConnected()) {
            return true;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "socket没有连接, " + h());
        return false;
    }

    public void c() {
        if (this.f9689g) {
            GpsAnalysis.f().l(false);
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "关闭socket: " + h());
        cn.mucang.android.core.utils.o.a(this.f9686d);
        try {
            Socket socket = this.f9685a;
            if (socket != null && !socket.isInputShutdown()) {
                this.f9685a.shutdownInput();
            }
        } catch (Throwable th) {
            cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "关闭socket输入流失败:" + th.getMessage() + " , " + h());
        }
        try {
            Socket socket2 = this.f9685a;
            if (socket2 != null && !socket2.isOutputShutdown()) {
                this.f9685a.shutdownOutput();
            }
        } catch (Throwable th2) {
            cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "关闭socket输出流失败" + th2.getMessage() + " , " + h());
        }
        cn.mucang.android.core.utils.o.a(this.f9685a);
        cn.mucang.android.core.utils.o.a(this.b);
        cn.mucang.android.core.utils.o.a(this.c);
        this.f9688f.i();
        this.f9686d = null;
        this.f9685a = null;
        this.b = null;
        this.c = null;
        e();
    }

    public boolean j() {
        cn.mucang.jiakaoyi.uilib.socket.a0.k kVar = this.i;
        return kVar != null && kVar.l();
    }

    public void n(String str, int i) throws IOException, MCException {
        cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "重连: " + str);
        d();
        try {
            if (n0.e(this.f9687e)) {
                o();
                throw new MCException(4, "鉴权失败");
            }
            f(str, i);
            if (k(this.f9687e)) {
                u(this.l);
            } else {
                o();
                throw new MCException(3, "登陆失败");
            }
        } catch (IOException e2) {
            o();
            throw e2;
        }
    }

    public boolean p(byte[] bArr) {
        try {
            BufferedOutputStream bufferedOutputStream = this.c;
            if (bufferedOutputStream != null) {
                bufferedOutputStream.write(bArr, 0, bArr.length);
                bufferedOutputStream.flush();
                return true;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(r());
            sb.append("输出流为空：");
            sb.append(h());
            sb.append(" , ");
            sb.append((int) (bArr.length > 6 ? bArr[6] : (byte) 0));
            cn.mucang.android.jiakaoyi.framework.log.f.f(sb.toString());
            return true;
        } catch (Throwable th) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(r());
            sb2.append("发送数据异常：");
            sb2.append(h());
            sb2.append(" , ");
            sb2.append((int) (bArr.length > 6 ? bArr[6] : (byte) 0));
            sb2.append(" error=");
            sb2.append(th.getLocalizedMessage());
            cn.mucang.android.jiakaoyi.framework.log.f.f(sb2.toString());
            return true;
        }
    }

    public boolean q(byte b, byte[] bArr) {
        cn.mucang.jiakaoyi.uilib.socket.a0.k kVar = this.i;
        if (kVar != null) {
            return kVar.v(b, bArr);
        }
        return false;
    }

    public void s(int i) {
        this.f9688f.f(i);
    }

    public void t() throws ApiException, IOException, InternalException, HttpException, MCException {
        cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "开始获取鉴权信息, " + h());
        SocketInfo socketInfoA = q.a(this.f9689g);
        cn.mucang.android.jiakaoyi.framework.log.f.f(r() + "鉴权信息: " + socketInfoA + ", " + h());
        if (socketInfoA == null) {
            throw new MCException(4, "鉴权失败");
        }
        this.f9687e = socketInfoA.token;
        String str = socketInfoA.ip;
        this.j = str;
        int i = socketInfoA.port;
        this.k = i;
        f(str, i);
        if (!k(socketInfoA.token)) {
            throw new MCException(3, "登陆失败");
        }
        this.f9688f.e(socketInfoA.heartBeatPolicy);
        u(this.l);
        if (this.f9689g) {
            HPGpsManager.j();
            JNet.i(socketInfoA.ip);
        }
    }

    public void u(p.a aVar) {
        this.f9686d = new p(this.b, aVar, h());
        new Thread(this.f9686d).start();
        this.f9688f.g();
        v();
    }
}
