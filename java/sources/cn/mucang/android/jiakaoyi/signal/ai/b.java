package cn.mucang.android.jiakaoyi.signal.ai;

import cn.mucang.android.jiakaoyi.signal.communicate.r;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.m;

/* JADX INFO: loaded from: classes3.dex */
public class b extends m {
    public final boolean b;

    public b(int i, r rVar) {
        super(i, rVar);
        boolean z = rVar.o() == 0;
        this.f5428a = z;
        if (z) {
            this.b = rVar.e() == 1;
        } else {
            this.b = false;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.receive.l
    protected boolean hasRequestPackIndex(int i) {
        return false;
    }
}
