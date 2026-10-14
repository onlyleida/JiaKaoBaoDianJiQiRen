package cn.mucang.android.jky.usbcamera.detectside;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.opencv.core.Mat;

/* JADX INFO: loaded from: classes4.dex */
public class o {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static c f8876d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static AtomicInteger f8875a = new AtomicInteger(0);
    private static final ExecutorService b = new ThreadPoolExecutor(1, 1, 3, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private static AtomicBoolean c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Handler f8877e = new a(Looper.getMainLooper());

    static class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (o.c.get() || o.f8876d == null) {
                return;
            }
            int i = message.arg1;
            int i2 = message.arg2;
            b bVar = (b) message.obj;
            o.f8876d.a(bVar.c, bVar.b, bVar.f8878a);
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f8878a;
        List<q> b;
        Bitmap c;

        public b(long j, List<q> list, Bitmap bitmap) {
            this.f8878a = j;
            this.b = list;
            this.c = bitmap;
        }
    }

    public interface c {
        void a(Bitmap bitmap, List<q> list, long j);
    }

    public static boolean c() {
        return f8875a.get() < 1;
    }

    public static void d(Mat mat, long j, boolean z) {
        if (c.get()) {
            return;
        }
        ExecutorService executorService = b;
        synchronized (executorService) {
            if (f8875a.get() >= 1) {
                Log.e(o.class.getName(), "舍弃");
                return;
            }
            Log.e(o.class.getName(), "任务开始:" + System.currentTimeMillis());
            f8875a.getAndIncrement();
            executorService.execute(new r(mat, j, z));
        }
    }

    public static void e(Bitmap bitmap, List<q> list, long j) {
        f8875a.getAndDecrement();
        if (c.get()) {
            return;
        }
        synchronized (b) {
            Message messageObtain = Message.obtain();
            messageObtain.arg1 = (int) (((-4294967296L) & j) >> 32);
            messageObtain.arg2 = (int) (4294967295L & j);
            messageObtain.obj = new b(j, list, bitmap);
            f8877e.sendMessage(messageObtain);
        }
    }

    public static void f() {
        c.set(false);
        f8875a.set(0);
    }

    public static void g(c cVar) {
        f8876d = cVar;
    }

    public static void h() {
        c.set(true);
        f8875a.set(0);
    }
}
