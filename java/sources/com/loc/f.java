package com.loc;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Messenger;

/* JADX INFO: loaded from: classes4.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    e f12875a;
    Context b;
    Messenger c = null;

    public f(Context context) {
        this.f12875a = null;
        this.b = null;
        this.b = context.getApplicationContext();
        this.f12875a = new e(this.b);
    }

    public final IBinder a(Intent intent) {
        this.f12875a.b(intent);
        this.f12875a.a(intent);
        Messenger messenger = new Messenger(this.f12875a.b());
        this.c = messenger;
        return messenger.getBinder();
    }

    public final void a() {
        try {
            e.f();
            this.f12875a.j = fp.b();
            this.f12875a.k = fp.a();
            this.f12875a.a();
        } catch (Throwable th) {
            fi.a(th, "ApsServiceCore", "onCreate");
        }
    }

    public final void b() {
        try {
            e eVar = this.f12875a;
            if (eVar != null) {
                eVar.b().sendEmptyMessage(11);
            }
        } catch (Throwable th) {
            fi.a(th, "ApsServiceCore", "onDestroy");
        }
    }
}
