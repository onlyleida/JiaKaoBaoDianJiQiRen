package cn.mucang.android.account.utils;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class d extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<c> f2254a;
    private int b;
    private int c;

    public d(c cVar) {
        this.f2254a = new WeakReference<>(cVar);
    }

    private void c() {
        sendEmptyMessageDelayed(1, 1000L);
    }

    public c a() {
        return this.f2254a.get();
    }

    public void b() {
        this.c = 0;
        removeMessages(1);
    }

    public void d(int i) {
        b();
        this.b = i;
        c cVarA = a();
        if (cVarA == null) {
            return;
        }
        cVarA.c(i);
        c();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        c cVarA = a();
        if (cVarA != null && message.what == 1) {
            int i = this.c + 1;
            this.c = i;
            int i2 = this.b - i;
            if (i2 <= 0) {
                cVarA.f();
            } else {
                cVarA.c(i2);
                c();
            }
        }
    }
}
