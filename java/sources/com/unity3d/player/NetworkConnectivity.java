package com.unity3d.player;

import android.app.Activity;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;

/* JADX INFO: loaded from: classes6.dex */
public class NetworkConnectivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f14208a = 0;
    private final int b = 1;
    private final int c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f14209d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ConnectivityManager f14210e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ConnectivityManager.NetworkCallback f14211f;

    public NetworkConnectivity(Context context) {
        this.f14209d = 0;
        ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.unity3d.player.NetworkConnectivity.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onAvailable(Network network) {
                super.onAvailable(network);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                NetworkConnectivity networkConnectivity;
                int i;
                super.onCapabilitiesChanged(network, networkCapabilities);
                if (networkCapabilities.hasTransport(0)) {
                    networkConnectivity = NetworkConnectivity.this;
                    i = 1;
                } else {
                    networkConnectivity = NetworkConnectivity.this;
                    i = 2;
                }
                networkConnectivity.f14209d = i;
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onLost(Network network) {
                super.onLost(network);
                NetworkConnectivity.this.f14209d = 0;
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onUnavailable() {
                super.onUnavailable();
                NetworkConnectivity.this.f14209d = 0;
            }
        };
        this.f14211f = networkCallback;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        this.f14210e = connectivityManager;
        connectivityManager.registerDefaultNetworkCallback(networkCallback);
        NetworkInfo activeNetworkInfo = this.f14210e.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return;
        }
        this.f14209d = activeNetworkInfo.getType() != 0 ? 2 : 1;
    }

    public final int a() {
        return this.f14209d;
    }

    public final void b() {
        this.f14210e.unregisterNetworkCallback(this.f14211f);
    }
}
