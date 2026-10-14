package com.mobile.auth.d;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import com.google.common.primitives.UnsignedBytes;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f13137a = "e";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f13139e;
    private boolean b = false;
    private ConnectivityManager c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ConnectivityManager.NetworkCallback f13138d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f13140f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f13141g = 0;

    public interface a {
        void a();

        void a(int i, String str, long j);

        void a(Network network, long j);
    }

    public static int a(String str) {
        try {
            try {
                byte[] address = InetAddress.getByName(str).getAddress();
                return (address[0] & UnsignedBytes.MAX_VALUE) | ((address[3] & UnsignedBytes.MAX_VALUE) << 24) | ((address[2] & UnsignedBytes.MAX_VALUE) << 16) | ((address[1] & UnsignedBytes.MAX_VALUE) << 8);
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return -1;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return -1;
                }
            }
        } catch (Throwable th3) {
            com.mobile.auth.a.a.a(f13137a, "When InetAddress.getByName(),throws exception", th3);
            return -1;
        }
    }

    static /* synthetic */ long a(e eVar, long j) {
        try {
            eVar.f13140f = j;
            return j;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return -1L;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return -1L;
            }
        }
    }

    static /* synthetic */ ConnectivityManager a(e eVar, ConnectivityManager connectivityManager) {
        try {
            eVar.c = connectivityManager;
            return connectivityManager;
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

    static /* synthetic */ String a() {
        try {
            return f13137a;
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
    private void a(Context context) {
        try {
            this.f13140f = 0L;
            this.c = (ConnectivityManager) context.getSystemService("connectivity");
            this.f13141g = System.currentTimeMillis();
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addCapability(12);
            builder.addTransportType(0);
            NetworkRequest networkRequestBuild = builder.build();
            ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.mobile.auth.d.e.2
                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onAvailable(Network network) {
                    try {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        e eVar = e.this;
                        e.a(eVar, jCurrentTimeMillis - e.d(eVar));
                        e.a(e.this, true);
                        if (e.b(e.this) != null) {
                            e.b(e.this).a(network, e.e(e.this));
                        }
                        if (e.f(e.this) != null) {
                            try {
                                e.f(e.this).unregisterNetworkCallback(this);
                                e.a(e.this, (ConnectivityManager) null);
                            } catch (Throwable th) {
                                com.mobile.auth.a.a.a(e.a(), "switchToMobileForAboveL", th);
                            }
                        }
                    } catch (Throwable th2) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        } catch (Throwable th3) {
                            com.mobile.auth.gatewayauth.a.a(th3);
                        }
                    }
                }
            };
            this.f13138d = networkCallback;
            this.c.requestNetwork(networkRequestBuild, networkCallback);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ boolean a(e eVar) {
        try {
            return eVar.b;
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

    static /* synthetic */ boolean a(e eVar, boolean z) {
        try {
            eVar.b = z;
            return z;
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

    static /* synthetic */ a b(e eVar) {
        try {
            return eVar.f13139e;
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

    public static String b(String str) {
        try {
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

    private void b() {
        ConnectivityManager connectivityManager;
        ConnectivityManager.NetworkCallback networkCallback;
        try {
            if (Build.VERSION.SDK_INT < 21 || (connectivityManager = this.c) == null || (networkCallback = this.f13138d) == null) {
                return;
            }
            try {
                connectivityManager.unregisterNetworkCallback(networkCallback);
            } catch (Throwable th) {
                com.mobile.auth.a.a.a(f13137a, "unregisterNetworkCallback", th);
            }
            this.c = null;
        } catch (Throwable th2) {
            try {
                com.mobile.auth.gatewayauth.a.a(th2);
            } catch (Throwable th3) {
                com.mobile.auth.gatewayauth.a.a(th3);
            }
        }
    }

    private boolean b(Context context, String str) {
        boolean z;
        try {
            Class<?> cls = Class.forName("android.net.ConnectivityManager");
            this.f13140f = 0L;
            this.f13141g = System.currentTimeMillis();
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            this.c = connectivityManager;
            if (connectivityManager.getNetworkInfo(5).getState().compareTo(NetworkInfo.State.CONNECTED) != 0) {
                cls.getMethod("startUsingNetworkFeature", Integer.TYPE, String.class).invoke(this.c, 0, "enableHIPRI");
                for (int i = 0; i < 5; i++) {
                    try {
                        if (this.c.getNetworkInfo(5).getState().compareTo(NetworkInfo.State.CONNECTED) == 0) {
                            break;
                        }
                        Thread.sleep(500L);
                    } catch (Throwable th) {
                        com.mobile.auth.a.a.a(f13137a, "switchToMobileForUnderL", th);
                    }
                }
            }
            int iA = a(b(str));
            Class<?> cls2 = Integer.TYPE;
            boolean zBooleanValue = ((Boolean) cls.getMethod("requestRouteToHost", cls2, cls2).invoke(this.c, 5, Integer.valueOf(iA))).booleanValue();
            try {
                this.f13140f = System.currentTimeMillis() - this.f13141g;
                com.mobile.auth.a.a.a(f13137a, "Switch network result ： " + zBooleanValue + " (4.x) , expendTime ：" + this.f13140f);
                return zBooleanValue;
            } catch (Throwable th2) {
                z = zBooleanValue;
                th = th2;
                try {
                    com.mobile.auth.a.a.a(f13137a, "4.x网络切换异常", th);
                    return z;
                } catch (Throwable th3) {
                    try {
                        com.mobile.auth.gatewayauth.a.a(th3);
                        return false;
                    } catch (Throwable th4) {
                        com.mobile.auth.gatewayauth.a.a(th4);
                        return false;
                    }
                }
            }
        } catch (Throwable th5) {
            th = th5;
            z = false;
        }
    }

    static /* synthetic */ void c(e eVar) {
        try {
            eVar.b();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ long d(e eVar) {
        try {
            return eVar.f13141g;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return -1L;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return -1L;
            }
        }
    }

    static /* synthetic */ long e(e eVar) {
        try {
            return eVar.f13140f;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return -1L;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return -1L;
            }
        }
    }

    static /* synthetic */ ConnectivityManager f(e eVar) {
        try {
            return eVar.c;
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

    public void a(final int i) {
        try {
            i.a(new Runnable() { // from class: com.mobile.auth.d.e.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (i > 2500) {
                            try {
                                Thread.sleep(2500L);
                            } catch (Throwable th) {
                                com.mobile.auth.a.a.a(e.a(), "timeoutCheckRunnable exception!", th);
                            }
                            if (!e.a(e.this)) {
                                if (e.b(e.this) != null) {
                                    e.b(e.this).a(80800, "WIFI切换超时", 2500L);
                                }
                                com.mobile.auth.a.a.a(e.a(), "切换网络超时(L)");
                                e.c(e.this);
                                return;
                            }
                        }
                        try {
                            int i2 = i;
                            if (i2 > 2500) {
                                i2 -= 2500;
                            }
                            Thread.sleep(i2);
                        } catch (Throwable th2) {
                            com.mobile.auth.a.a.a(e.a(), "timeoutCheckRunnable exception!", th2);
                        }
                        if (e.b(e.this) != null) {
                            e.b(e.this).a();
                        }
                    } catch (Throwable th3) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th3);
                        } catch (Throwable th4) {
                            com.mobile.auth.gatewayauth.a.a(th4);
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

    public void a(Context context, a aVar) {
        try {
            this.f13139e = aVar;
            try {
                a(context);
            } catch (Throwable th) {
                com.mobile.auth.a.a.a(f13137a, "switchToMobileForAboveL", th);
                if (this.f13139e != null) {
                    this.f13139e.a(80801, "WIFI切换异常", -1L);
                }
            }
        } catch (Throwable th2) {
            try {
                com.mobile.auth.gatewayauth.a.a(th2);
            } catch (Throwable th3) {
                com.mobile.auth.gatewayauth.a.a(th3);
            }
        }
    }

    public boolean a(Context context, String str) {
        try {
            return b(context, str);
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
}
