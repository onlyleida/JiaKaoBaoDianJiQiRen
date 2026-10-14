package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.os.Environment;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes5.dex */
public class b1 {
    private static final ExecutorService c = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BufferedWriter f9902a;
    private long b;

    private void a() {
        try {
            BufferedWriter bufferedWriter = this.f9902a;
            if (bufferedWriter != null) {
                bufferedWriter.flush();
                this.f9902a.close();
                this.f9902a = null;
            }
        } catch (Throwable unused) {
        }
        try {
            String str = Environment.getExternalStorageDirectory() + "/SensorData/";
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            this.f9902a = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(str + "gps_" + cn.mucang.android.core.utils.p0.b(System.currentTimeMillis()) + ".txt"), StandardCharsets.UTF_8));
            this.b = -1L;
            cn.mucang.android.core.utils.u.h("开始采集");
        } catch (Throwable unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void c(double d2, double d3, double d4, float f2) {
        if (this.f9902a == null) {
            a();
        }
        try {
            BufferedWriter bufferedWriter = this.f9902a;
            if (bufferedWriter != null) {
                bufferedWriter.write(d2 + "," + d3 + "," + d4 + "," + f2);
                this.f9902a.flush();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void e() {
        try {
            BufferedWriter bufferedWriter = this.f9902a;
            if (bufferedWriter != null) {
                bufferedWriter.flush();
                this.f9902a.close();
                this.f9902a = null;
                cn.mucang.android.core.utils.u.h("结束采集");
            }
        } catch (Throwable unused) {
        }
    }

    private void h() {
        c.execute(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.o0
            @Override // java.lang.Runnable
            public final void run() {
                this.f10174a.e();
            }
        });
    }

    public void f(final double d2, final double d3, final double d4) {
        long jNanoTime = System.nanoTime();
        if (this.b <= 0) {
            this.b = jNanoTime;
        }
        final float f2 = (jNanoTime - this.b) / 1.0E9f;
        c.execute(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.p0
            @Override // java.lang.Runnable
            public final void run() {
                this.f10194a.c(d2, d3, d4, f2);
            }
        });
    }

    public void g() {
        this.b = -1L;
        h();
    }
}
