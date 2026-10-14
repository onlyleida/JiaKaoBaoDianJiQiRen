package com.mobile.auth.aa;

import android.net.Network;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f13072a = Executors.newFixedThreadPool(5);

    /* JADX INFO: renamed from: com.mobile.auth.aa.a$a, reason: collision with other inner class name */
    public interface InterfaceC0248a {
        void a(String str);
    }

    public void a(final String str, final HashMap<String, String> map, final Network network, final InterfaceC0248a interfaceC0248a) {
        try {
            this.f13072a.submit(new Runnable() { // from class: com.mobile.auth.aa.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        try {
                            interfaceC0248a.a(new d().a(str, map, network));
                        } catch (Exception e2) {
                            com.mobile.auth.ab.d.b(e2.getMessage());
                        }
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
