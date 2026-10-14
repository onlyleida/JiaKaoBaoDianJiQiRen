package cn.mucang.android.jiakaoyi.framework.base;

import android.os.SystemClock;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0002J\u001c\u0010\n\u001a\u00020\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\tH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/JkyUncaughtExceptionHandler;", "Ljava/lang/Thread$UncaughtExceptionHandler;", "defaultHandler", "interceptor", "Lcn/mucang/android/jiakaoyi/framework/GlobalInterceptor;", "(Ljava/lang/Thread$UncaughtExceptionHandler;Lcn/mucang/android/jiakaoyi/framework/GlobalInterceptor;)V", "getStackTrace", "", "t", "", "uncaughtException", "", "Ljava/lang/Thread;", "e", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class JkyUncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f3353a;
    private final cn.mucang.android.jiakaoyi.framework.b b;

    public JkyUncaughtExceptionHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, cn.mucang.android.jiakaoyi.framework.b interceptor) {
        r.e(interceptor, "interceptor");
        this.f3353a = uncaughtExceptionHandler;
        this.b = interceptor;
    }

    private final String a(Throwable th) throws IOException {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            th.printStackTrace(printWriter);
            String string = stringWriter.toString();
            kotlin.io.b.a(printWriter, null);
            r.d(string, "pw.use {\n            t.p…  sw.toString()\n        }");
            return string;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                kotlin.io.b.a(printWriter, th2);
                throw th3;
            }
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread t, Throwable e2) {
        try {
            Result.Companion companion = Result.INSTANCE;
            this.b.j();
            Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
        if (e2 != null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("未捕获异常:", a(e2)));
            cn.mucang.android.jiakaoyi.framework.log.f.t();
            SystemClock.sleep(300L);
        }
        this.b.c();
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f3353a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(t, e2);
        }
        u.h("退出APP");
        SystemClock.sleep(MucangConfig.v() ? 10000L : SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        System.exit(0);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }
}
