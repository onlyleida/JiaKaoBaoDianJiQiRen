package cn.mucang.sundial.android.log.write;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.log.LogType;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes5.dex */
public class LogExe implements LogWriter {
    private static final ExecutorService writerExe = Executors.newSingleThreadExecutor();
    public final LogType type;
    public final LogWriter writer;

    public LogExe(LogWriter logWriter, LogType logType) {
        this.writer = logWriter;
        this.type = logType;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b(CountDownLatch countDownLatch) {
        try {
            this.writer.stop();
        } catch (Throwable th) {
            try {
                t.d("LogWrap", "log error = " + th);
            } finally {
                countDownLatch.countDown();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d(byte[] bArr, String str, long j) {
        try {
            this.writer.write(bArr, str, j);
        } catch (Throwable th) {
            t.d("LogWrap", "log error = " + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f(Object obj, long j) {
        try {
            this.writer.write(obj, j);
        } catch (Throwable th) {
            t.d("LogWrap", "log error = " + th);
        }
    }

    @Override // cn.mucang.sundial.android.log.write.LogWriter
    public long entityId() {
        return this.writer.entityId();
    }

    @Override // cn.mucang.sundial.android.log.write.LogWriter
    public void stop() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        writerExe.execute(new Runnable() { // from class: cn.mucang.sundial.android.log.write.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f10358a.b(countDownLatch);
            }
        });
        if (u.b()) {
            return;
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e2) {
            t.d("LogWrap", "log error = " + e2);
        }
    }

    @Override // cn.mucang.sundial.android.log.write.LogWriter
    public void write(final byte[] bArr, final String str, final long j) throws Throwable {
        writerExe.execute(new Runnable() { // from class: cn.mucang.sundial.android.log.write.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f10355a.d(bArr, str, j);
            }
        });
    }

    @Override // cn.mucang.sundial.android.log.write.LogWriter
    public void write(final Object obj, final long j) throws Throwable {
        writerExe.execute(new Runnable() { // from class: cn.mucang.sundial.android.log.write.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f10357a.f(obj, j);
            }
        });
    }
}
