package cn.mucang.android.jiakaoyi.signal.ai;

import cn.mucang.android.jiakaoyi.signal.communicate.r;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.m;

/* JADX INFO: loaded from: classes3.dex */
public class c extends m {
    public final int b;
    public final int c;

    public c(int i, r rVar) {
        super(i, rVar);
        boolean z = rVar.o() == 0;
        this.f5428a = z;
        if (z) {
            this.b = rVar.j();
            this.c = rVar.o();
        } else {
            this.b = -1;
            this.c = -1;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.receive.l
    protected boolean hasRequestPackIndex(int i) {
        return false;
    }
}
