package cn.mucang.android.jiakaoyi.signal.ai;

import cn.mucang.android.jiakaoyi.signal.communicate.r;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.m;

/* JADX INFO: loaded from: classes3.dex */
public class f extends m {
    public f(int i, r rVar) {
        super(i, rVar);
        this.f5428a = rVar.e() == 0;
        rVar.o();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.receive.l
    protected boolean hasRequestPackIndex(int i) {
        return false;
    }
}
