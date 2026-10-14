package cn.mucang.android.jiakaoyi.framework.log.l;

import android.util.Log;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
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

    public g(String r3, i r4, long r5) throws IOException {
        if (MucangConfig.v() == false) goto L5;
        Log.e("LogTag", "创建 " + r3);
    L5:
        this.f3484a = r3;
        this.b = new FileOutputStream(r3);
        this.f3486e = r5;
        this.f3485d = r4;
        LogEntity r6 = cn.mucang.android.jiakaoyi.framework.log.db.a.a(r4, r3);
        this.f3487f = r6;
        if (r6 == null) goto L9;
        return;
    L9:
        throw new RuntimeException("log开始失败");
    }

    private void d(File r3, long r4) {
        this.f3487f.setFile(r3.getAbsolutePath());
        this.f3487f.setEndTime(r4);
        this.f3487f.setSize(r3.length());
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
        long r0 = System.currentTimeMillis();
        int r2 = this.c;
        i r3 = this.f3485d;
        if (r2 >= r3.f3468d) goto L10;
        if ((r0 - this.f3486e) > r3.c) goto L10;
        return false;
    L10:
        if (MucangConfig.v() == false) goto L14;
        Log.e("LogTag", this.c + " , " + this.f3485d.f3468d + " , " + r0 + " , " + this.f3486e + " , " + (r0 - this.f3486e) + " , " + this.f3485d.c);
        return true;
    L14:
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public long entityId() {
        return this.f3487f.getId().longValue();
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public void stop() {
        FileOutputStream r4 = this.b;
        this.b = null;
        if (r4 != null) goto L40;
        return;
    L40:
        r4.flush();     // Catch: Throwable -> L16
        o.a(r4);
        File r5 = new File(this.f3484a);
        if (cn.mucang.android.jiakaoyi.framework.log.g.h(r5) == false) goto L12;
        File r0 = r5.getParentFile();
        long r6 = System.currentTimeMillis();
        File r1 = new File(r0, cn.mucang.android.jiakaoyi.framework.log.g.g(this.f3487f.getStartTime()) + "-" + cn.mucang.android.jiakaoyi.framework.log.g.g(r6) + ".zip");
        if (cn.mucang.android.jiakaoyi.framework.log.g.b(this.f3484a, r1.getAbsolutePath()) == false) goto L11;
    L10:
        r5.delete();
        d(r1, r6);
        return;
    L11:
        d(r5, r6);
        return;
    L12:
        cn.mucang.android.jiakaoyi.framework.log.db.a.b(this.f3487f);
        r5.delete();
        if (MucangConfig.v() == false) goto L43;
        StringBuilder r2 = new StringBuilder();
    L15:
        r2.append("删除只有一行的文件:");
        r2.append(this.f3484a);
        Log.e("LogTag", r2.toString());
        return;
    L43:
        return;
    L16:
        th = move-exception;
        t.d("LogFileTag", th.getMessage());     // Catch: Throwable -> L27
        o.a(r4);
        r5 = new File(this.f3484a);
        if (cn.mucang.android.jiakaoyi.framework.log.g.h(r5) == false) goto L23;
        File r3 = r5.getParentFile();
        r6 = System.currentTimeMillis();
        r1 = new File(r3, cn.mucang.android.jiakaoyi.framework.log.g.g(this.f3487f.getStartTime()) + "-" + cn.mucang.android.jiakaoyi.framework.log.g.g(r6) + ".zip");
        if (cn.mucang.android.jiakaoyi.framework.log.g.b(this.f3484a, r1.getAbsolutePath()) == false) goto L11;
    L23:
        cn.mucang.android.jiakaoyi.framework.log.db.a.b(this.f3487f);
        r5.delete();
        if (MucangConfig.v() == false) goto L45;
        r2 = new StringBuilder();
        goto L15
    L45:
        return;
    L27:
        th = move-exception;
        o.a(r4);
        File r7 = new File(this.f3484a);
        if (cn.mucang.android.jiakaoyi.framework.log.g.h(r7) == false) goto L34;
        File r8 = r7.getParentFile();
        long r9 = System.currentTimeMillis();
        File r10 = new File(r8, cn.mucang.android.jiakaoyi.framework.log.g.g(this.f3487f.getStartTime()) + "-" + cn.mucang.android.jiakaoyi.framework.log.g.g(r9) + ".zip");
        if (cn.mucang.android.jiakaoyi.framework.log.g.b(this.f3484a, r10.getAbsolutePath()) == false) goto L33;
        r7.delete();
        d(r10, r9);
    L37:
        throw th;
    L33:
        d(r7, r9);
        goto L37
    L34:
        cn.mucang.android.jiakaoyi.framework.log.db.a.b(this.f3487f);
        r7.delete();
        if (MucangConfig.v() == false) goto L37;
        Log.e("LogTag", "删除只有一行的文件:" + this.f3484a);
        goto L37
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public void write(byte[] r1, String r2, long r3) throws Throwable {
        this.b.write(r1, 0, r1.length);
        this.b.flush();
        this.c += r1.length;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public void write(Object r4, long r5) throws Throwable {
        if (MucangConfig.v() == false) goto L13;
        i r0 = this.f3485d;
        if (r0 == i.l) goto L13;
        if (r0 == i.n) goto L13;
        if (r0 == i.j) goto L13;
        if (r0 == i.k) goto L13;
        t.h("LogFile-" + this.f3485d.b, "" + r4);
    L13:
        cn.mucang.android.jiakaoyi.framework.log.e.a(2, "" + r4 + " |LogFile-" + this.f3485d.b);
        if ((r4 instanceof String) == false) goto L17;
        write(((String) r4).getBytes(), null, r5);
        return;
    }
}
