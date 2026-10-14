package cn.mucang.android.jiakaoyi.signal.com.v.impl;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.com.v.a;
import cn.mucang.android.jiakaoyi.signal.communicate.o;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class b extends a implements o.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final o f5336e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CountDownLatch f5337f;

    public b(ComName comName) {
        super(comName);
        this.f5336e = new o(MucangConfig.getContext(), this);
        this.f5337f = new CountDownLatch(1);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.o.b
    public void a(InputStream inputStream) {
        this.f5333a = inputStream;
        this.f5337f.countDown();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        if (this.f5337f.getCount() == 0) {
            this.f5337f.countDown();
        }
        this.f5336e.c();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public void init() throws ComException {
        this.f5336e.e();
        try {
            this.f5337f.await(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            t.d("TAG", "蓝牙打开失败");
            throw new ComException(this.f5334d, ComState.ErrorInitial, e2);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public int v() {
        return 1048576;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public String w() {
        return "蓝牙1";
    }
}
