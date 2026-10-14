package com.amap.api.mapcore.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.autonavi.amap.mapcore.Inner_3dMap_locationListener;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption;

/* JADX INFO: loaded from: classes5.dex */
public final class l9 extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    k9 f10987a;

    public l9(Looper looper, k9 k9Var) {
        super(looper);
        this.f10987a = null;
        this.f10987a = k9Var;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        String str;
        switch (message.what) {
            case 1001:
                try {
                    this.f10987a.g((Inner_3dMap_locationOption) message.obj);
                    return;
                } catch (Throwable th) {
                    th = th;
                    str = "ACTION_SET_OPTION";
                }
                break;
            case 1002:
                try {
                    this.f10987a.f((Inner_3dMap_locationListener) message.obj);
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    str = "ACTION_SET_LISTENER";
                }
                break;
            case 1003:
                try {
                    this.f10987a.i((Inner_3dMap_locationListener) message.obj);
                    return;
                } catch (Throwable th3) {
                    th = th3;
                    str = "ACTION_REMOVE_LISTENER";
                }
                break;
            case 1004:
                try {
                    this.f10987a.b();
                    return;
                } catch (Throwable th4) {
                    th = th4;
                    str = "ACTION_START_LOCATION";
                }
                break;
            case 1005:
                try {
                    this.f10987a.h();
                    return;
                } catch (Throwable th5) {
                    th = th5;
                    str = "ACTION_GET_LOCATION";
                }
                break;
            case 1006:
                try {
                    this.f10987a.j();
                    return;
                } catch (Throwable th6) {
                    th = th6;
                    str = "ACTION_STOP_LOCATION";
                }
                break;
            case 1007:
                try {
                    this.f10987a.k();
                    return;
                } catch (Throwable th7) {
                    b9.b(th7, "ClientActionHandler", "ACTION_DESTROY");
                    return;
                }
            default:
                return;
        }
        b9.b(th, "ClientActionHandler", str);
    }
}
