package com.iflytek.cloud.record;

import android.content.Context;
import android.media.AudioTrack;
import android.os.MemoryFile;
import com.iflytek.cloud.msc.util.FileUtil;
import com.iflytek.cloud.msc.util.log.DebugLog;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f12395g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<a> f12396h;
    private Context i;
    private int j;
    private volatile long k;
    public volatile long m;
    private String q;
    private int u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f12391a = 2;
    private final int b = 1;
    private final int c = 16000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f12392d = 60;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f12393e = 500;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f12394f = 1920000;
    private MemoryFile l = null;
    private volatile int n = 0;
    private a o = null;
    private String p = "";
    private byte[] r = null;
    private int s = 0;
    private int t = 0;
    private final float v = 0.95f;
    private boolean w = true;
    private int x = 0;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f12397a;
        long b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f12398d;

        public a(long j, long j2, int i, int i2) {
            this.f12397a = j;
            this.b = j2;
            this.c = i;
            this.f12398d = i2;
        }
    }

    public b(Context context, int i, int i2, String str, int i3) {
        this.f12395g = 1920000;
        this.f12396h = null;
        this.i = null;
        this.j = 16000;
        this.k = 0L;
        this.m = 0L;
        this.q = null;
        this.u = 100;
        this.i = context;
        this.k = 0L;
        this.f12396h = new ArrayList<>();
        this.m = 0L;
        this.j = i;
        this.q = str;
        this.u = i3;
        this.f12395g = (i * 2 * 1 * i2) + 1920000;
        DebugLog.LogD("min audio seconds: " + i2 + ", max audio buf size: " + this.f12395g);
    }

    public void a(ArrayList<byte[]> arrayList, int i, int i2, int i3) throws IOException {
        DebugLog.LogI("buffer percent = " + i + ", beg=" + i2 + ", end=" + i3);
        a aVar = new a(this.m, this.m, i2, i3);
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            a(arrayList.get(i4));
        }
        aVar.b = this.m;
        this.k = i;
        synchronized (this.f12396h) {
            this.f12396h.add(aVar);
        }
        DebugLog.LogI("allSize = " + this.m + " maxSize=" + this.f12395g);
    }

    public void b(AudioTrack audioTrack, int i) {
        long j = this.m;
        long j2 = this.x;
        if (j < j2) {
            int i2 = (int) (j2 - this.m);
            DebugLog.LogI("mBuffer.writeTrack writeTrackBlankBlock size: " + i2);
            audioTrack.write(new byte[i2], 0, i2);
        }
    }

    public boolean c(int i) {
        if (this.k > this.u * 0.95f) {
            return true;
        }
        return this.m / 32 >= ((long) i) && 0 < this.m;
    }

    public void d(int i) {
        this.x = i;
    }

    public int e() {
        MemoryFile memoryFile = this.l;
        if (memoryFile != null) {
            return memoryFile.length();
        }
        return 0;
    }

    public a f() {
        if (this.o == null) {
            return null;
        }
        long j = this.n - (this.t - this.s);
        a aVar = this.o;
        if (j >= aVar.f12397a && j <= aVar.b) {
            return aVar;
        }
        synchronized (this.f12396h) {
            for (a aVar2 : this.f12396h) {
                this.o = aVar2;
                if (j >= aVar2.f12397a && j <= aVar2.b) {
                    return aVar2;
                }
            }
            return null;
        }
    }

    protected void finalize() throws Throwable {
        b();
        super.finalize();
    }

    public int g() {
        if (this.m <= 0) {
            return 0;
        }
        return (int) ((((long) (this.n - (this.t - this.s))) * this.k) / this.m);
    }

    public int h() {
        return this.j;
    }

    public long i() {
        return this.m;
    }

    public boolean j() {
        return ((long) this.u) == this.k;
    }

    public boolean k() {
        return ((long) this.u) == this.k && ((long) this.n) >= this.m && this.s >= this.t;
    }

    public boolean l() {
        return ((long) this.n) < this.m || this.s < this.t;
    }

    public boolean d() {
        return this.w;
    }

    private String c() {
        return FileUtil.getUserPath(this.i) + System.currentTimeMillis() + "tts.pcm";
    }

    public void b() {
        DebugLog.LogD("deleteFile");
        try {
            MemoryFile memoryFile = this.l;
            if (memoryFile != null) {
                memoryFile.close();
                this.l = null;
            }
        } catch (Exception e2) {
            DebugLog.LogE(e2);
        }
    }

    private void b(int i) throws IOException {
        if (this.r == null) {
            this.r = new byte[i * 10];
        }
        int length = this.r.length;
        int i2 = (int) (this.m - ((long) this.n));
        if (i2 < length) {
            length = i2;
        }
        this.l.readBytes(this.r, this.n, 0, length);
        this.n += length;
        this.s = 0;
        this.t = length;
        DebugLog.LogD("readAudio leave, dataSize=" + length + ", bufLen=" + i2);
    }

    public boolean a(String str) {
        DebugLog.LogD("save to local: format = " + str + " totalSize = " + this.m + " maxSize=" + this.f12395g);
        if (FileUtil.saveFile(this.l, this.m, this.q)) {
            return FileUtil.formatPcm(str, this.q, h());
        }
        return false;
    }

    private void a(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        if (this.l == null) {
            this.p = c();
            MemoryFile memoryFile = new MemoryFile(this.p, this.f12395g);
            this.l = memoryFile;
            memoryFile.allowPurging(false);
        }
        this.l.writeBytes(bArr, 0, (int) this.m, bArr.length);
        this.m += (long) bArr.length;
    }

    public void a() throws IOException {
        this.n = 0;
        this.o = null;
        if (this.f12396h.size() > 0) {
            this.o = this.f12396h.get(0);
        }
    }

    public boolean a(int i) {
        return ((long) i) <= ((this.m - ((long) this.n)) + ((long) this.t)) - ((long) this.s);
    }

    public void a(boolean z) {
        this.w = z;
    }

    public void a(AudioTrack audioTrack, int i) throws IOException {
        if (this.s >= this.t) {
            b(i);
        }
        int i2 = i * 2;
        int i3 = this.t;
        int i4 = this.s;
        int i5 = i3 - i4;
        if (i2 <= i5) {
            i5 = i;
        }
        audioTrack.write(this.r, i4, i5);
        this.s += i5;
        if (k() && d()) {
            b(audioTrack, i);
        }
    }
}
