package com.mobile.auth.ab;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.CountDownTimer;
import android.text.TextUtils;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile a f13084a;
    private ConnectivityManager.NetworkCallback b = null;
    private ConnectivityManager c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile CountDownTimerC0249a f13085d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ExecutorService f13086e = null;

    /* JADX INFO: renamed from: com.mobile.auth.ab.a$a, reason: collision with other inner class name */
    private class CountDownTimerC0249a extends CountDownTimer {
        private b b;

        public CountDownTimerC0249a(b bVar) {
            super(3000L, 1000L);
            this.b = bVar;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            try {
                if (this.b != null && a.a(a.this) != null) {
                    this.b.a(false, null);
                }
                a.a(a.this, (CountDownTimerC0249a) null);
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    public interface b {
        void a(boolean z, Network network);
    }

    static /* synthetic */ CountDownTimerC0249a a(a aVar) {
        try {
            return aVar.f13085d;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    static /* synthetic */ CountDownTimerC0249a a(a aVar, CountDownTimerC0249a countDownTimerC0249a) {
        try {
            aVar.f13085d = countDownTimerC0249a;
            return countDownTimerC0249a;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public static a a() {
        try {
            if (f13084a == null) {
                synchronized (a.class) {
                    if (f13084a == null) {
                        f13084a = new a();
                    }
                }
            }
            return f13084a;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    @TargetApi(21)
    private void a(Context context, final b bVar) {
        try {
            try {
                this.c = (ConnectivityManager) context.getSystemService("connectivity");
                NetworkRequest.Builder builder = new NetworkRequest.Builder();
                builder.addTransportType(0);
                builder.addCapability(12);
                NetworkRequest networkRequestBuild = builder.build();
                this.b = new ConnectivityManager.NetworkCallback() { // from class: com.mobile.auth.ab.a.2
                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public void onAvailable(Network network) {
                        try {
                            super.onAvailable(network);
                            try {
                                if (a.a(a.this) != null) {
                                    a.a(a.this).cancel();
                                    a.a(a.this, (CountDownTimerC0249a) null);
                                    b bVar2 = bVar;
                                    if (bVar2 != null) {
                                        bVar2.a(true, network);
                                    }
                                }
                            } catch (Exception unused) {
                                b bVar3 = bVar;
                                if (bVar3 != null) {
                                    bVar3.a(false, null);
                                }
                            }
                        } catch (Throwable th) {
                            try {
                                com.mobile.auth.gatewayauth.a.a(th);
                            } catch (Throwable th2) {
                                com.mobile.auth.gatewayauth.a.a(th2);
                            }
                        }
                    }
                };
                if (this.f13085d != null) {
                    this.f13085d.cancel();
                    this.f13085d = null;
                }
                this.f13085d = new CountDownTimerC0249a(bVar);
                this.f13085d.start();
                this.c.requestNetwork(networkRequestBuild, this.b);
            } catch (Exception e2) {
                e2.printStackTrace();
                if (bVar != null) {
                    bVar.a(false, null);
                }
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private boolean a(Context context, String str) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            this.c = connectivityManager;
            if (connectivityManager == null) {
                d.a("ConnectivityManager is null, cannot try to force a mobile connection");
                return false;
            }
            NetworkInfo.State state = connectivityManager.getNetworkInfo(5).getState();
            d.a("TYPE_MOBILE_HIPRI network state: " + state);
            if (state.compareTo(NetworkInfo.State.CONNECTED) != 0 && state.compareTo(NetworkInfo.State.CONNECTING) != 0) {
                int iStartUsingNetworkFeature = this.c.startUsingNetworkFeature(0, "enableHIPRI");
                d.a("startUsingNetworkFeature for enableHIPRI result: " + iStartUsingNetworkFeature);
                if (-1 == iStartUsingNetworkFeature) {
                    d.a("Wrong result of startUsingNetworkFeature, maybe problems");
                    return false;
                }
                if (iStartUsingNetworkFeature == 0) {
                    d.a("No need to perform additional network settings");
                    return true;
                }
                String strB = f.b(str);
                d.a("Source address: " + str);
                d.a("Destination host address to route: " + strB);
                if (!TextUtils.isEmpty(strB)) {
                    str = strB;
                }
                int iC = f.c(str);
                if (-1 == iC) {
                    d.a("Wrong host address transformation, result was -1");
                    return false;
                }
                for (int i = 0; i < 3; i++) {
                    try {
                        if (this.c.getNetworkInfo(5).getState().compareTo(NetworkInfo.State.CONNECTED) == 0) {
                            break;
                        }
                        Thread.sleep(1000L);
                    } catch (InterruptedException unused) {
                    }
                }
                boolean zRequestRouteToHost = this.c.requestRouteToHost(5, iC);
                d.a("requestRouteToHost result: " + zRequestRouteToHost);
                if (!zRequestRouteToHost) {
                    d.a("Wrong requestRouteToHost result: expected true, but was false");
                }
                d.a("TYPE_MOBILE_HIPRI network state after routing: " + this.c.getNetworkInfo(5).getState());
                return zRequestRouteToHost;
            }
            return true;
        } catch (Exception unused2) {
            return false;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return false;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return false;
            }
        }
    }

    static /* synthetic */ boolean a(a aVar, Context context, String str) {
        try {
            return aVar.a(context, str);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return false;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return false;
            }
        }
    }

    public void a(final Context context, final String str, final b bVar) {
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                a(context, bVar);
                return;
            }
            ExecutorService executorService = this.f13086e;
            if (executorService != null) {
                executorService.shutdownNow();
            }
            ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
            this.f13086e = executorServiceNewSingleThreadExecutor;
            executorServiceNewSingleThreadExecutor.submit(new Runnable() { // from class: com.mobile.auth.ab.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        boolean zA = a.a(a.this, context, str);
                        d.a("forceMobileConnectionForAddress = " + zA);
                        b bVar2 = bVar;
                        if (bVar2 != null) {
                            bVar2.a(zA, null);
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

    public void b() {
        try {
            try {
                if (Build.VERSION.SDK_INT >= 21) {
                    ConnectivityManager connectivityManager = this.c;
                    if (connectivityManager != null) {
                        ConnectivityManager.NetworkCallback networkCallback = this.b;
                        if (networkCallback != null) {
                            connectivityManager.unregisterNetworkCallback(networkCallback);
                            this.b = null;
                        }
                        this.c = null;
                    }
                } else if (this.c != null) {
                    this.c = null;
                }
                if (this.f13085d != null) {
                    this.f13085d.cancel();
                    this.f13085d = null;
                }
                ExecutorService executorService = this.f13086e;
                if (executorService != null) {
                    executorService.shutdownNow();
                    this.f13086e = null;
                }
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        } catch (Exception e2) {
            d.a(e2);
        }
    }
}
