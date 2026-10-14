package cn.mucang.android.jiakaoyi.framework.tts.play.g;

import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.tts.voice.o;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.common.primitives.UnsignedBytes;
import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    private static final int i = AudioTrack.getMinBufferSize(16000, 4, 2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.tts.play.e f3553a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AudioTrack f3554d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final o f3556f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> f3557g;
    private volatile boolean b = false;
    private volatile boolean c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f3555e = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f3558h = 1.0f;

    public e(cn.mucang.android.jiakaoyi.framework.tts.play.e eVar, o oVar, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        this.f3553a = eVar;
        this.f3556f = oVar;
        this.f3557g = bVar;
    }

    private void a(String str, int i2, o oVar) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(str);
        try {
            byte[] bArr = new byte[i2];
            Process.setThreadPriority(-19);
            while (this.f3554d != null && !this.c) {
                int i3 = fileInputStream.read(bArr);
                if (i3 <= 0) {
                    SystemClock.sleep(200L);
                    break;
                }
                this.f3554d.play();
                if (this.f3558h <= 0.99d) {
                    for (int i4 = 0; i4 < i3 - 1; i4 += 2) {
                        int i5 = i4 + 1;
                        short s = (short) (((double) ((short) ((bArr[i4] & UnsignedBytes.MAX_VALUE) | ((bArr[i5] & UnsignedBytes.MAX_VALUE) << 8)))) * ((double) this.f3558h) * 0.5d);
                        bArr[i4] = (byte) (s & 255);
                        bArr[i5] = (byte) ((s >> 8) & 255);
                    }
                }
                this.f3554d.write(bArr, 0, i3);
            }
            c(oVar);
            fileInputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private synchronized void c(o oVar) {
        this.b = false;
        if (!this.f3555e && oVar != null) {
            this.f3555e = true;
            this.f3553a.a(oVar);
        }
    }

    public boolean b() {
        return this.b;
    }

    public void d(String str) {
        try {
            try {
                this.b = true;
                if (this.f3554d == null) {
                    this.f3554d = new AudioTrack(3, 16000, 4, 2, i, 1);
                }
                if (!this.c) {
                    this.f3553a.d(this.f3556f);
                    this.f3554d.play();
                    a(str, i, this.f3556f);
                    AudioTrack audioTrack = this.f3554d;
                    if (audioTrack != null && audioTrack.getState() == 1) {
                        this.f3554d.stop();
                        this.f3554d.release();
                    }
                }
            } finally {
                this.b = false;
            }
        } catch (Throwable unused) {
            if (!this.f3555e) {
                this.f3557g.callback(Boolean.TRUE);
            }
        }
    }

    public void e() {
        try {
            AudioTrack audioTrack = this.f3554d;
            if (audioTrack != null) {
                if (audioTrack.getState() == 1) {
                    this.f3554d.stop();
                }
                this.f3554d.release();
            }
        } catch (Throwable th) {
            t.d("MediaPlayerWrap", "" + th.getMessage());
        }
    }

    public void f(float f2) {
        this.f3558h = Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, f2));
    }

    public void g() {
        this.b = false;
        this.c = true;
        c(this.f3556f);
        try {
            AudioTrack audioTrack = this.f3554d;
            if (audioTrack != null) {
                if (audioTrack.getState() == 1) {
                    this.f3554d.stop();
                }
                this.f3554d.release();
            }
        } catch (Throwable th) {
            t.d("MediaPlayerWrap", "" + th.getMessage());
        }
    }
}
