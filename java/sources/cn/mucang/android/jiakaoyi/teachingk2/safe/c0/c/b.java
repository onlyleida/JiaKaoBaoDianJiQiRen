package cn.mucang.android.jiakaoyi.teachingk2.safe.c0.c;

import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes4.dex */
public class b implements cn.mucang.android.jiakaoyi.teachingk2.safe.c0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f7629a = 0;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.c0.a
    public boolean a(e eVar) {
        long j = eVar.d().L;
        if (!eVar.getCurrentPosition().c()) {
            this.f7629a = j;
            return false;
        }
        long j2 = this.f7629a;
        if (j2 > 0 && j - j2 < 10000) {
            return false;
        }
        this.f7629a = 0L;
        return true;
    }
}
