package com.mobile.auth.k;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import com.google.common.primitives.UnsignedBytes;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes5.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static ConnectivityManager f13514a;
    private static z b;
    private Network c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ConnectivityManager.NetworkCallback f13515d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f13516e;

    class a extends ConnectivityManager.NetworkCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f13517a;

        a(b bVar) {
            this.f13517a = bVar;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            z.this.c = network;
            this.f13517a.a(network);
            z.this.f13516e = false;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            z.this.f13516e = true;
        }
    }

    public interface b {
        void a(Network network);
    }

    private z(Context context) {
        f13514a = (ConnectivityManager) context.getSystemService("connectivity");
    }

    static int a(String str) {
        try {
            byte[] address = InetAddress.getByName(str).getAddress();
            return (address[0] & UnsignedBytes.MAX_VALUE) | ((address[3] & UnsignedBytes.MAX_VALUE) << 24) | ((address[2] & UnsignedBytes.MAX_VALUE) << 16) | ((address[1] & UnsignedBytes.MAX_VALUE) << 8);
        } catch (UnknownHostException unused) {
            return -1;
        }
    }

    public static z a(Context context) {
        if (b == null) {
            synchronized (z.class) {
                if (b == null) {
                    b = new z(context);
                }
            }
        }
        return b;
    }

    static String b(String str) {
        int iIndexOf = str.indexOf("://");
        if (iIndexOf > 0) {
            str = str.substring(iIndexOf + 3);
        }
        int iIndexOf2 = str.indexOf(58);
        if (iIndexOf2 >= 0) {
            str = str.substring(0, iIndexOf2);
        }
        int iIndexOf3 = str.indexOf(47);
        if (iIndexOf3 >= 0) {
            str = str.substring(0, iIndexOf3);
        }
        int iIndexOf4 = str.indexOf(63);
        return iIndexOf4 >= 0 ? str.substring(0, iIndexOf4) : str;
    }

    public void a() {
        ConnectivityManager connectivityManager;
        ConnectivityManager.NetworkCallback networkCallback;
        try {
            if (Build.VERSION.SDK_INT >= 21 && (connectivityManager = f13514a) != null && (networkCallback = this.f13515d) != null) {
                connectivityManager.unregisterNetworkCallback(networkCallback);
                this.f13515d = null;
                this.c = null;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    void a(b bVar) {
        NetworkInfo networkInfo;
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        Network network = this.c;
        if (network != null && !this.f13516e && (networkInfo = f13514a.getNetworkInfo(network)) != null && networkInfo.isAvailable()) {
            bVar.a(this.c);
            return;
        }
        ConnectivityManager.NetworkCallback networkCallback = this.f13515d;
        if (networkCallback != null) {
            try {
                f13514a.unregisterNetworkCallback(networkCallback);
            } catch (Exception e2) {
                e2.printStackTrace();
                this.f13515d = null;
            }
            f.a("HttpUtils", "clear: ");
        }
        NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addCapability(12).addTransportType(0).build();
        a aVar = new a(bVar);
        this.f13515d = aVar;
        f13514a.requestNetwork(networkRequestBuild, aVar);
    }
}
