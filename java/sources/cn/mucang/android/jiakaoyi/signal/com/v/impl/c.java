package cn.mucang.android.jiakaoyi.signal.com.v.impl;

import android.os.SystemClock;
import android.serialport.SerialPort;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.q;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.com.v.a;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import com.rscja.deviceapi.b;
import com.rscja.deviceapi.exception.ConfigurationException;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class c extends a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f5338e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f5339f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private SerialPort f5340g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f5341h;

    public c(String str, int i, ComName comName) {
        super(comName);
        this.f5338e = str;
        this.f5339f = i;
        StringBuilder sb = new StringBuilder();
        sb.append("串口:");
        sb.append(q.f3635a ? "v600" : str);
        this.f5341h = sb.toString();
    }

    private void c() throws ComException {
        try {
            b.b().c(5, this.f5339f);
            this.f5333a = new cn.mucang.android.jiakaoyi.signal.com.v.impl.f.b();
            this.b = new cn.mucang.android.jiakaoyi.signal.com.v.impl.f.c();
        } catch (ConfigurationException e2) {
            f.f("v600初始化失败");
            throw new ComException(this.f5334d, ComState.ErrorInitial, e2);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        SerialPort serialPort;
        super.close();
        if (q.f3635a || (serialPort = this.f5340g) == null) {
            return;
        }
        serialPort.close();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public void init() throws ComException {
        if (q.f3635a) {
            c();
            return;
        }
        try {
            this.f5340g = SerialPort.newBuilder(this.f5338e, this.f5339f).build();
            SystemClock.sleep(200L);
            try {
                this.f5333a = this.f5340g.getInputStream();
                this.b = this.f5340g.getOutputStream();
            } catch (Throwable th) {
                f.f("串口init 2 " + th.getLocalizedMessage());
                throw new ComException(this.f5334d, ComState.ErrorInitial, th);
            }
        } catch (Throwable th2) {
            f.f("串口init 1 " + th2.getLocalizedMessage());
            throw new ComException(this.f5334d, ComState.ErrorInitial, th2);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public int v() {
        return this.f5339f / 10;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public String w() {
        return this.f5341h;
    }
}
