package cn.mucang.android.jiakaoyi.framework.log.l;

import android.util.Log;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.log.DebugLogUtil;
import cn.mucang.android.jiakaoyi.framework.log.db.LogEntity;
import cn.mucang.android.jiakaoyi.framework.log.i;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class g implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3484a;
    private FileOutputStream b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i f3485d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f3486e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LogEntity f3487f;

    public g(String str, i iVar, long j) throws IOException {
        if (MucangConfig.v()) {
            Log.e("LogTag", "创建 " + str);
        }
        this.f3484a = str;
        this.b = new FileOutputStream(str);
        this.f3486e = j;
        this.f3485d = iVar;
        LogEntity logEntityA = cn.mucang.android.jiakaoyi.framework.log.db.a.a(iVar, str);
        this.f3487f = logEntityA;
        if (logEntityA == null) {
            throw new RuntimeException("log开始失败");
        }
    }

    private void d(File file, long j) {
        this.f3487f.setFile(file.getAbsolutePath());
        this.f3487f.setEndTime(j);
        this.f3487f.setSize(file.length());
        this.f3487f.setState(1);
        cn.mucang.android.jiakaoyi.framework.log.db.a.f(this.f3487f);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public void a() {
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public String b() {
        return this.f3484a;
    }

    public boolean c() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i = this.c;
        i iVar = this.f3485d;
        if (i < iVar.f3468d && jCurrentTimeMillis - this.f3486e <= iVar.c) {
            return false;
        }
        if (!MucangConfig.v()) {
            return true;
        }
        Log.e("LogTag", this.c + " , " + this.f3485d.f3468d + " , " + jCurrentTimeMillis + " , " + this.f3486e + " , " + (jCurrentTimeMillis - this.f3486e) + " , " + this.f3485d.c);
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public long entityId() {
        return this.f3487f.getId().longValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x005f, code lost:
    
        r4.delete();
        d(r1, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0067, code lost:
    
        d(r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00e3, code lost:
    
        if (cn.mucang.android.jiakaoyi.framework.log.g.b(r11.f3484a, r1.getAbsolutePath()) != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00fb, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x005d, code lost:
    
        if (cn.mucang.android.jiakaoyi.framework.log.g.b(r11.f3484a, r1.getAbsolutePath()) != false) goto L10;
     */
    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void stop() {
        /*
            Method dump skipped, instruction units count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.framework.log.l.g.stop():void");
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public void write(byte[] bArr, String str, long j) throws Throwable {
        this.b.write(bArr, 0, bArr.length);
        this.b.flush();
        this.c += bArr.length;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public void write(Object obj, long j) throws Throwable {
        i iVar;
        if (MucangConfig.v() && (iVar = this.f3485d) != i.l && iVar != i.n && iVar != i.j && iVar != i.k) {
            t.h("LogFile-" + this.f3485d.b, "" + obj);
        }
        DebugLogUtil.a(2, "" + obj + " |LogFile-" + this.f3485d.b);
        if (obj instanceof String) {
            write(((String) obj).getBytes(), null, j);
        }
    }
}
