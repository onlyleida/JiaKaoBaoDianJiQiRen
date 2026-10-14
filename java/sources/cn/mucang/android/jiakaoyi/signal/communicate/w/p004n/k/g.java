package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k;

import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.u.a;
import cn.mucang.android.jiakaoyi.signal.com.v.b;
import cn.mucang.android.jiakaoyi.signal.com.x.e.c;
import cn.mucang.android.jiakaoyi.signal.com.x.e.d;
import cn.mucang.android.jiakaoyi.signal.com.x.e.e;

/* JADX INFO: loaded from: classes3.dex */
public class g extends d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected a f5525f;

    public g(cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m.a<?> aVar, a aVar2) {
        this.f5522a = aVar;
        this.f5525f = aVar2;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.d
    protected boolean c(b bVar) throws Exception {
        cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m.a<?> aVar = this.f5522a;
        if (aVar == null) {
            return true;
        }
        aVar.a(bVar.t(), i(), bVar.o());
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.e
    public void f(b bVar, cn.mucang.android.jiakaoyi.framework.h.b<ComState> bVar2) throws Exception {
        this.b = new d(new c(new cn.mucang.android.jiakaoyi.signal.com.x.d.a(new e(bVar.m()), true, bVar.v())), this.f5525f, bVar.o());
        this.f5522a.c();
        h(bVar, bVar2);
    }
}
