package com.amap.api.mapcore.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.autonavi.amap.mapcore.Inner_3dMap_location;

/* JADX INFO: loaded from: classes5.dex */
public final class m9 extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    k9 f11013a;

    public m9(Looper looper, k9 k9Var) {
        super(looper);
        this.f11013a = null;
        this.f11013a = k9Var;
    }

    public m9(k9 k9Var) {
        this.f11013a = null;
        this.f11013a = k9Var;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what != 1) {
            return;
        }
        try {
            k9 k9Var = this.f11013a;
            if (k9Var != null) {
                k9Var.e((Inner_3dMap_location) message.obj);
            }
        } catch (Throwable th) {
            b9.b(th, "ClientResultHandler", "RESULT_LOCATION_FINISH");
        }
    }
}
