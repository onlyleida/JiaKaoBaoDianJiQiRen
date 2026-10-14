package com.unity3d.splash.services.core.connectivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.serenegiant.net.NetworkChangedReceiver;

/* JADX INFO: loaded from: classes6.dex */
public class a extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f14395a;

    public static void a() {
        if (f14395a == null) {
            f14395a = new a();
            com.unity3d.splash.services.c.b.a.b().registerReceiver(f14395a, new IntentFilter(NetworkChangedReceiver.ACTION_GLOBAL_CONNECTIVITY_CHANGE));
        }
    }

    public static void b() {
        if (f14395a != null) {
            com.unity3d.splash.services.c.b.a.b().unregisterReceiver(f14395a);
            f14395a = null;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        NetworkInfo activeNetworkInfo;
        if (intent.getBooleanExtra("noConnectivity", false)) {
            b.d();
            return;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
            return;
        }
        b.b();
    }
}
