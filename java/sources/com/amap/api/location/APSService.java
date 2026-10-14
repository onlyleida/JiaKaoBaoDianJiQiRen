package com.amap.api.location;

import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.loc.ak;
import com.loc.f;
import com.loc.fi;

/* JADX INFO: loaded from: classes5.dex */
public class APSService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    f f10413a;
    int b = 0;
    boolean c = false;

    private void a(Context context) {
        try {
            if (this.f10413a == null) {
                this.f10413a = new f(context);
            }
            this.f10413a.a();
        } catch (Throwable th) {
            fi.a(th, "APSService", "onCreate");
        }
        super.onCreate();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        try {
            return this.f10413a.a(intent);
        } catch (Throwable th) {
            fi.a(th, "APSService", "onBind");
            return null;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        a(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        try {
            this.f10413a.b();
            if (this.c) {
                stopForeground(true);
            }
        } catch (Throwable th) {
            fi.a(th, "APSService", "onDestroy");
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        int i3;
        if (intent != null) {
            try {
                int intExtra = intent.getIntExtra(ak.f12507f, 0);
                if (intExtra == 1) {
                    int intExtra2 = intent.getIntExtra("i", 0);
                    Notification notification = (Notification) intent.getParcelableExtra(ak.f12508g);
                    if (intExtra2 != 0 && notification != null) {
                        startForeground(intExtra2, notification);
                        this.c = true;
                        this.b++;
                    }
                } else if (intExtra == 2) {
                    if (intent.getBooleanExtra(ak.j, true) && (i3 = this.b) > 0) {
                        this.b = i3 - 1;
                    }
                    if (this.b <= 0) {
                        stopForeground(true);
                        this.c = false;
                    } else {
                        stopForeground(false);
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return 0;
    }
}
