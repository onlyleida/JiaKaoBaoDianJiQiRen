package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.t.a;
import cn.mucang.android.jiakaoyi.signal.com.u.b.d;
import cn.mucang.android.jiakaoyi.signal.com.v.b;
import cn.mucang.android.jiakaoyi.signal.com.x.e.c;
import cn.mucang.android.jiakaoyi.signal.com.x.e.e;
import cn.mucang.android.jiakaoyi.signal.communicate.r;
import cn.mucang.android.jiakaoyi.signal.d.g;

/* JADX INFO: loaded from: classes3.dex */
public class h extends d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final g f5526f = new g();

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.d
    protected boolean a() {
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.d
    protected boolean c(b bVar) throws Exception {
        a aVarA = ((cn.mucang.android.jiakaoyi.signal.com.t.b) this.f5522a).a(bVar.t(), i(), bVar.o());
        if (aVarA != null && aVarA.c) {
            r rVar = new r(aVarA.b, true);
            f.s(aVarA.b, "收到 " + bVar.w() + ", 0x" + Integer.toHexString(aVarA.f5324a & 255));
            if (bVar.isRunning()) {
                this.f5526f.a(aVarA.f5324a, rVar);
            }
        }
        return aVarA != null;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.e
    public void f(b bVar, cn.mucang.android.jiakaoyi.framework.h.b<ComState> bVar2) throws Exception {
        d dVar = new d();
        this.b = new cn.mucang.android.jiakaoyi.signal.com.x.e.d(new c(new cn.mucang.android.jiakaoyi.signal.com.x.d.a(new e(bVar.m(), dVar), true, bVar.v())), dVar, bVar.o());
        this.f5522a = new cn.mucang.android.jiakaoyi.signal.com.t.c.b();
        h(bVar, bVar2);
    }
}
