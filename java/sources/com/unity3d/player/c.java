package com.unity3d.player;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
class c {
    protected f b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f14300e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected q f14298a = null;
    protected Context c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f14299d = null;

    c(String str, f fVar) {
        this.b = null;
        this.f14300e = "";
        this.f14300e = str;
        this.b = fVar;
    }

    protected void reportError(String str) {
        f fVar = this.b;
        if (fVar != null) {
            fVar.reportError(this.f14300e + " Error [" + this.f14299d + "]", str);
            return;
        }
        g.Log(6, this.f14300e + " Error [" + this.f14299d + "]: " + str);
    }

    protected void runOnUiThread(Runnable runnable) {
        Context context = this.c;
        if (context instanceof Activity) {
            ((Activity) context).runOnUiThread(runnable);
            return;
        }
        g.Log(5, "Not running " + this.f14300e + " from an Activity; Ignoring execution request...");
    }

    protected boolean runOnUiThreadWithSync(final Runnable runnable) {
        boolean z = true;
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            runnable.run();
            return true;
        }
        final Semaphore semaphore = new Semaphore(0);
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.c.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    try {
                        runnable.run();
                    } catch (Exception e2) {
                        c.this.reportError("Exception unloading Google VR on UI Thread. " + e2.getLocalizedMessage());
                    }
                } finally {
                    semaphore.release();
                }
            }
        });
        try {
            if (!semaphore.tryAcquire(4L, TimeUnit.SECONDS)) {
                reportError("Timeout waiting for vr state change!");
                z = false;
            }
            return z;
        } catch (InterruptedException e2) {
            reportError("Interrupted while trying to acquire sync lock. " + e2.getLocalizedMessage());
            return false;
        }
    }
}
