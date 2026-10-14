package cn.mucang.android.jiakaoyi.framework.log.l;

import android.util.Log;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.log.i;
import com.alibaba.fastjson.JSON;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class e implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile g f3481a;
    private final i b;
    private final cn.mucang.android.jiakaoyi.framework.log.l.i.c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final cn.mucang.android.jiakaoyi.framework.log.j.b f3482d;

    public e(i iVar, cn.mucang.android.jiakaoyi.framework.log.l.i.c cVar, cn.mucang.android.jiakaoyi.framework.log.j.b bVar) {
        this.b = iVar;
        this.c = cVar;
        this.f3482d = bVar;
    }

    private void c(String str, long j) throws Throwable {
        this.f3481a.write(str, j);
        a();
    }

    private String d(long j) {
        String strD = cn.mucang.android.jiakaoyi.framework.log.g.d(this.b);
        File file = new File(strD);
        if (!file.exists()) {
            file.mkdirs();
        }
        return strD + "/" + cn.mucang.android.jiakaoyi.framework.log.g.g(j) + "." + this.b.f3471g;
    }

    private void e(long j, String str) throws Throwable {
        if (this.f3481a == null) {
            this.f3481a = new g(d(j), this.b, j);
            this.f3481a.write(this.f3482d.b(this.b, cn.mucang.android.jiakaoyi.framework.log.g.e(), j, str), j);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public void a() {
        g gVar = this.f3481a;
        if (gVar == null || !gVar.c()) {
            return;
        }
        this.f3481a = null;
        if (MucangConfig.v()) {
            Log.e("LogTag", "时间或者容量是否达到要求，开始上传:" + this.b.f3467a + " , ");
        }
        gVar.stop();
        this.c.a(gVar.f3487f, this.b);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public String b() {
        g gVar = this.f3481a;
        if (gVar != null) {
            return gVar.b();
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public long entityId() {
        g gVar = this.f3481a;
        if (gVar == null) {
            return 0L;
        }
        return gVar.entityId();
    }

    public void f(Object obj, long j, String str) throws Throwable {
        e(j, str);
        c(this.f3482d.b(this.b, obj instanceof String ? (String) obj : JSON.toJSONString(obj), j, str), j);
    }

    public void g(byte[] bArr, String str, long j, String str2) throws Throwable {
        e(j, str2);
        c(this.f3482d.a(this.b, bArr, str, j, str2), j);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public void stop() {
        g gVar = this.f3481a;
        this.f3481a = null;
        if (gVar == null) {
            return;
        }
        gVar.stop();
        this.c.a(gVar.f3487f, this.b);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    @Deprecated
    public void write(byte[] bArr, String str, long j) throws Throwable {
        g(bArr, str, j, "");
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    @Deprecated
    public void write(Object obj, long j) throws Throwable {
        f(obj, j, "");
    }
}
