package com.unity3d.splash.services.core.connectivity;

import android.annotation.TargetApi;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(21)
public class c extends ConnectivityManager.NetworkCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f14401a;

    public static void a() {
        if (f14401a == null) {
            f14401a = new c();
            ((ConnectivityManager) com.unity3d.splash.services.c.b.a.b().getSystemService("connectivity")).registerNetworkCallback(new NetworkRequest.Builder().build(), f14401a);
        }
    }

    public static void b() {
        if (f14401a != null) {
            ((ConnectivityManager) com.unity3d.splash.services.c.b.a.b().getSystemService("connectivity")).unregisterNetworkCallback(f14401a);
            f14401a = null;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        b.b();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        b.c();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
        b.c();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        b.d();
    }
}
