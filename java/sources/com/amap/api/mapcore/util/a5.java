package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.autonavi.base.amap.api.mapcore.IGLSurfaceView;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class a5 implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<Integer, ga> f10441a = new Hashtable();
    private Handler b;
    private HandlerThread c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c1 f10442d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f10443e;

    public a5(Context context, c1 c1Var, IGLSurfaceView iGLSurfaceView) {
        this.f10443e = false;
        this.f10442d = c1Var;
        HandlerThread handlerThread = new HandlerThread("AMapMessageHandler");
        this.c = handlerThread;
        handlerThread.start();
        this.b = new Handler(this.c.getLooper(), this);
        this.f10443e = false;
    }

    public void a() {
        this.f10443e = true;
        HandlerThread handlerThread = this.c;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        Handler handler = this.b;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public void b(ga gaVar) {
        try {
            if (this.f10443e || gaVar == null) {
                return;
            }
            int i = gaVar.f10828a;
            if (i == 153) {
                Map<Integer, ga> map = this.f10441a;
                if (map == null || map.size() <= 0) {
                    return;
                }
                this.b.obtainMessage(153).sendToTarget();
                return;
            }
            synchronized (this.f10441a) {
                if (i < 33) {
                    try {
                        this.f10441a.put(Integer.valueOf(i), gaVar);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        try {
            if (this.f10443e || message == null) {
                return false;
            }
            ga gaVar = (ga) message.obj;
            int i = message.what;
            if (i == 1) {
                this.f10442d.n0(((Integer) gaVar.b).intValue());
            } else if (i == 153) {
                synchronized (this.f10441a) {
                    Set<Integer> setKeySet = this.f10441a.keySet();
                    if (setKeySet.size() > 0) {
                        Iterator<Integer> it = setKeySet.iterator();
                        while (it.hasNext()) {
                            ga gaVarRemove = this.f10441a.remove(it.next());
                            this.b.obtainMessage(gaVarRemove.f10828a, gaVarRemove).sendToTarget();
                        }
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }
}
