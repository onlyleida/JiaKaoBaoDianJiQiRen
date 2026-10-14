package cn.mucang.android.jiakaoyi.signal.com.v.impl;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.communicate.UsbDeviceManager;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import com.felhr.usbserial.j;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes3.dex */
public class e extends cn.mucang.android.jiakaoyi.signal.com.v.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private j f5345e;

    class a implements UsbDeviceManager.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CountDownLatch f5346a;

        a(CountDownLatch countDownLatch) {
            this.f5346a = countDownLatch;
        }

        @Override // cn.mucang.android.jiakaoyi.signal.communicate.UsbDeviceManager.a
        public void a(j jVar) {
            e.this.f5345e = jVar;
            ((cn.mucang.android.jiakaoyi.signal.com.v.a) e.this).f5333a = jVar.g();
            ((cn.mucang.android.jiakaoyi.signal.com.v.a) e.this).b = jVar.h();
            this.f5346a.countDown();
        }
    }

    public e(ComName comName) {
        super(comName);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        j jVar = this.f5345e;
        if (jVar != null) {
            jVar.m();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public void init() throws ComException {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        UsbDeviceManager.c(MucangConfig.getContext(), new a(countDownLatch));
        try {
            countDownLatch.await();
        } catch (Throwable th) {
            t.d("TAG", "usb串口打开失败");
            throw new ComException(this.f5334d, ComState.ErrorInitial, th);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public int v() {
        return 11520;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public String w() {
        return "usb";
    }
}
