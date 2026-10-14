package cn.mucang.android.jiakaoyi.teachingk2.dtu;

import android.os.SystemClock;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.x;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.com.n;
import cn.mucang.android.jiakaoyi.signal.communicate.v;
import com.google.common.base.Ascii;
import com.google.common.net.HttpHeaders;
import com.iflytek.cloud.SpeechConstant;
import com.mobile.auth.gatewayauth.Constant;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.t;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.dtu.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0018\u0010\u001d\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0006\u0010\u001e\u001a\u00020\u001cJ\u0018\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/dtu/G781Model;", "", "()V", "COMMAND_ICCID", "", "COMMAND_IMEI", "COMMAND_PWD", "COMMAND_VER", "IP_ADDRESS", "SplitByte", "", "SplitTo", "SplitTo1", "inputStream", "Ljava/io/InputStream;", "lastByte", "Ljava/lang/Byte;", "outputStream", "Ljava/io/OutputStream;", "socket", "Ljava/net/Socket;", "checkTimeout", "", "timeout", "", Constant.START_TIME, "", "configG781tcp", "", "decode", "listenG781SimInfo", "sendData", SpeechConstant.ISV_CMD, "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class G781Model {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6995a = "http://192.168.118.1";
    private final byte b = Ascii.CR;
    private final byte c = 10;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte f6996d = 43;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f6997e = "www.usr.cn";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f6998f = "#AT+imei";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f6999g = "#AT+iccid";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f7000h = "#AT+ver";
    private Socket i;
    private InputStream j;
    private OutputStream k;
    private Byte l;

    private final void a(int i, long j) throws SocketTimeoutException {
        if (i > 0 && SystemClock.elapsedRealtime() - j > i) {
            throw new SocketTimeoutException();
        }
    }

    private final String c(InputStream inputStream, int i) throws IOException {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            if (inputStream.available() <= 0) {
                SystemClock.sleep(1L);
                a(i, jElapsedRealtime);
            } else {
                if (this.b != ((byte) inputStream.read())) {
                    continue;
                } else if (inputStream.available() <= 0) {
                    SystemClock.sleep(1L);
                    a(i, jElapsedRealtime);
                } else {
                    if (this.c != ((byte) inputStream.read())) {
                        continue;
                    } else {
                        if (this.f6996d == ((byte) inputStream.read())) {
                            break;
                        }
                    }
                }
            }
        }
        byte[] bArr = new byte[1024];
        int i2 = 0;
        while (true) {
            byte b = (byte) inputStream.read();
            bArr[i2] = b;
            byte b2 = this.b;
            Byte b3 = this.l;
            if ((b3 != null && b2 == b3.byteValue()) && this.c == b) {
                break;
            }
            this.l = Byte.valueOf(b);
            i2++;
        }
        int i3 = i2 - 1;
        byte[] bArr2 = new byte[i3];
        if (!(i3 == 0)) {
            System.arraycopy(bArr, 0, bArr2, 0, i3);
        }
        return StringsKt__StringsKt.J0(new String(bArr2, Charsets.f15811a)).toString();
    }

    private final void e(OutputStream outputStream, String str) throws IOException {
        Charset charset = Charsets.f15811a;
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = str.getBytes(charset);
        r.d(bytes, "(this as java.lang.String).getBytes(charset)");
        v vVar = new v(true);
        vVar.c(this.b);
        vVar.c(this.c);
        vVar.d(bytes);
        vVar.c(this.b);
        vVar.c(this.c);
        outputStream.write(vVar.b());
        outputStream.flush();
    }

    public final boolean b() {
        try {
            String string = x.a(true).toString();
            if (string == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
            }
            String string2 = StringsKt__StringsKt.J0(string).toString();
            f.o(r.m("-DTU IP:", string2));
            return new OkHttpClient().newCall(new Request.Builder().url(r.m(this.f6995a, "/cgi-bin/httpd.cgi")).header(HttpHeaders.AUTHORIZATION, "Basic YWRtaW46YWRtaW4=").post(RequestBody.create(MediaType.parse("application/x-www-form-urlencoded"), "src_file=sockets_cn.html&cmd_save=para set user.socka.enable=ON;para set user.socka.type=TCPC;para set user.socka.server=" + string2 + ";para set user.socka.port=2317;")).build()).execute().isSuccessful();
        } catch (Exception e2) {
            f.o(r.m("-DTU ", e2.getLocalizedMessage()));
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean d() {
        boolean z = false;
        try {
            try {
                f.o("-DTU 开始尝试获取G781型SIM卡信息");
                ServerSocket serverSocket = new ServerSocket(n.c.b);
                f.o("-DTU 启动服务器....");
                this.i = serverSocket.accept();
                StringBuilder sb = new StringBuilder();
                sb.append("-DTU 客户端: ");
                Socket socket = this.i;
                r.c(socket);
                sb.append((Object) socket.getInetAddress().getHostAddress());
                sb.append("已连接到服务器");
                f.o(sb.toString());
                Socket socket2 = this.i;
                r.c(socket2);
                this.j = socket2.getInputStream();
                Socket socket3 = this.i;
                r.c(socket3);
                OutputStream outputStream = socket3.getOutputStream();
                this.k = outputStream;
                r.c(outputStream);
                e(outputStream, r.m(this.f6997e, this.f7000h));
                InputStream inputStream = this.j;
                r.c(inputStream);
                String strC = c(inputStream, 2000);
                f.o(r.m("-DTU ", strC));
                DTUManager dTUManager = DTUManager.f6989a;
                dTUManager.e().j(t.x(strC, "VER:", "", false, 4, null));
                OutputStream outputStream2 = this.k;
                r.c(outputStream2);
                e(outputStream2, r.m(this.f6997e, this.f6999g));
                InputStream inputStream2 = this.j;
                r.c(inputStream2);
                String strC2 = c(inputStream2, 2000);
                f.o(r.m("-DTU ", strC2));
                dTUManager.b().j(t.x(strC2, "ICCID:", "", false, 4, null));
                OutputStream outputStream3 = this.k;
                r.c(outputStream3);
                e(outputStream3, r.m(this.f6997e, this.f6998f));
                InputStream inputStream3 = this.j;
                r.c(inputStream3);
                String strC3 = c(inputStream3, 2000);
                f.o(r.m("-DTU ", strC3));
                dTUManager.c().j(t.x(strC3, "IMEI:", "", false, 4, null));
                if (dTUManager.i()) {
                    z = true;
                    dTUManager.m();
                }
            } catch (Exception e2) {
                f.o(r.m("-DTU ", e2.getLocalizedMessage()));
            }
            return z;
        } finally {
            o.a(this.j);
            o.a(this.k);
            o.a(this.i);
            this.j = null;
            this.k = null;
            this.i = null;
        }
    }
}
