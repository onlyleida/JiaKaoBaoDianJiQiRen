package cn.mucang.android.jiakaoyi.signal.handle.gear;

import android.os.Environment;
import android.os.SystemClock;
import cn.mucang.android.core.utils.p0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ExecutorService f5681e = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Gear f5682a;
    private BufferedWriter b;
    private GearLinearResult c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f5683d;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f5684a;

        a(String str) {
            this.f5684a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.b == null) {
                b.this.e();
            }
            try {
                b.this.b.write(this.f5684a);
                b.this.b.write("\n");
                b.this.b.flush();
            } catch (Throwable th) {
                t.d("TAG", th.getLocalizedMessage());
            }
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.handle.gear.b$b, reason: collision with other inner class name */
    class RunnableC0126b implements Runnable {
        RunnableC0126b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (b.this.b != null) {
                    b.this.b.flush();
                    b.this.b.close();
                    b.this.b = null;
                }
            } catch (Throwable th) {
                t.d("TAG", th.getLocalizedMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            BufferedWriter bufferedWriter = this.b;
            if (bufferedWriter != null) {
                bufferedWriter.flush();
                this.b.close();
                this.b = null;
            }
        } catch (Throwable unused) {
        }
        try {
            String str = Environment.getExternalStorageDirectory() + "/GearSpeed/Learn/";
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(p0.b(System.currentTimeMillis()));
            sb.append("--");
            Gear gear = this.f5682a;
            sb.append(gear == null ? "" : gear.gearName);
            sb.append(".txt");
            this.b = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(sb.toString()), StandardCharsets.UTF_8));
        } catch (Throwable th) {
            t.d("TAG", th.getLocalizedMessage());
        }
    }

    private void i() {
        f5681e.execute(new RunnableC0126b());
    }

    private void j(String str) {
        f5681e.execute(new a(str));
    }

    public GearLinearResult d(int i, float f2, Gear gear) {
        if (f2 <= BitmapDescriptorFactory.HUE_RED) {
            return null;
        }
        if (this.f5683d <= 0) {
            this.f5683d = SystemClock.elapsedRealtime();
        }
        this.f5682a = gear;
        if (this.c == null) {
            GearLinearResult gearLinearResult = new GearLinearResult();
            this.c = gearLinearResult;
            gearLinearResult.max = BitmapDescriptorFactory.HUE_RED;
            gearLinearResult.min = 100000.0f;
            gearLinearResult.count = 0;
            gearLinearResult.sum = BitmapDescriptorFactory.HUE_RED;
        }
        j(f2 + "," + i + "," + gear.gear);
        float f3 = ((float) i) / f2;
        GearLinearResult gearLinearResult2 = this.c;
        if (gearLinearResult2.max < f3) {
            gearLinearResult2.max = f3;
        }
        if (gearLinearResult2.min > f3) {
            gearLinearResult2.min = f3;
        }
        float f4 = gearLinearResult2.sum + f3;
        gearLinearResult2.sum = f4;
        int i2 = gearLinearResult2.count + 1;
        gearLinearResult2.count = i2;
        if (i2 > 2) {
            gearLinearResult2.value = ((f4 - gearLinearResult2.max) - gearLinearResult2.min) / (i2 - 2);
        } else {
            gearLinearResult2.value = f4 / i2;
        }
        return gearLinearResult2;
    }

    public boolean f() {
        GearLinearResult gearLinearResult = this.c;
        return gearLinearResult != null && gearLinearResult.count > 25 && SystemClock.elapsedRealtime() - this.f5683d > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS;
    }

    public void g() {
        this.c = null;
        this.f5683d = 0L;
        i();
    }

    public GearLinearResult h() {
        return this.c;
    }
}
