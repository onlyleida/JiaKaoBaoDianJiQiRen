package cn.mucang.android.jiakaoyi.signal.gearsensor;

import android.os.Environment;
import cn.mucang.android.core.utils.p0;
import cn.mucang.android.core.utils.u;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public class j {
    private static final ExecutorService c = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BufferedWriter f5630a;
    private long b;

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            BufferedWriter bufferedWriter = this.f5630a;
            if (bufferedWriter != null) {
                bufferedWriter.flush();
                this.f5630a.close();
                this.f5630a = null;
            }
        } catch (Throwable unused) {
        }
        try {
            String str = Environment.getExternalStorageDirectory() + "/SensorData/";
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            this.f5630a = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(str + "陀螺仪数据_" + p0.b(System.currentTimeMillis()) + ".txt"), StandardCharsets.UTF_8));
            this.b = -1L;
            u.h("开始采集");
        } catch (Throwable unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d(String str) {
        if (this.f5630a == null) {
            a();
        }
        try {
            BufferedWriter bufferedWriter = this.f5630a;
            if (bufferedWriter != null) {
                bufferedWriter.write(str);
                this.f5630a.flush();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f() {
        try {
            BufferedWriter bufferedWriter = this.f5630a;
            if (bufferedWriter != null) {
                bufferedWriter.flush();
                this.f5630a.close();
                this.f5630a = null;
            }
            u.h("结束采集");
        } catch (Throwable unused) {
        }
    }

    private void j() {
        c.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.gearsensor.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f5595a.f();
            }
        });
    }

    private static String k(double d2) {
        return String.format("%.1f", Double.valueOf(d2));
    }

    public void g(double d2, double d3, double d4, double d5, double d6, double d7) {
        long jNanoTime = System.nanoTime();
        if (this.b <= 0) {
            this.b = jNanoTime;
        }
        final String str = k(d2) + "," + k(d3) + "," + k(d4) + "," + k(d5) + "," + k(d6) + "," + k(d7) + "," + ((jNanoTime - this.b) / 1.0E9f) + "\n";
        c.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.gearsensor.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f5594a.d(str);
            }
        });
    }

    public void h() {
        c.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.gearsensor.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f5593a.a();
            }
        });
    }

    public void i() {
        this.b = -1L;
        j();
    }
}
