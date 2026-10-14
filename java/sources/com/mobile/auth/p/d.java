package com.mobile.auth.p;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.text.TextUtils;
import com.nirvana.tools.requestqueue.TimeoutCallable;

/* JADX INFO: loaded from: classes5.dex */
public class d implements TimeoutCallable<com.mobile.auth.u.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f13546a;
    private com.mobile.auth.o.a b;

    @TargetApi(21)
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static volatile a f13547a;
        private volatile String b = null;

        public a(Context context) {
            b(context);
        }

        public static a a(Context context) {
            try {
                if (f13547a == null) {
                    synchronized (a.class) {
                        if (f13547a == null) {
                            f13547a = new a(context);
                        }
                    }
                }
                return f13547a;
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

        static /* synthetic */ String a(a aVar, String str) {
            try {
                aVar.b = str;
                return str;
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

        public String a() {
            try {
                return this.b;
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

        public void b(Context context) {
            try {
                try {
                    this.b = com.mobile.auth.gatewayauth.utils.c.b();
                    if (TextUtils.isEmpty(this.b)) {
                        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                        NetworkRequest.Builder builder = new NetworkRequest.Builder();
                        builder.addTransportType(0);
                        builder.addCapability(12);
                        connectivityManager.requestNetwork(builder.build(), new ConnectivityManager.NetworkCallback() { // from class: com.mobile.auth.p.d.a.1
                            @Override // android.net.ConnectivityManager.NetworkCallback
                            public void onAvailable(Network network) {
                                try {
                                    super.onAvailable(network);
                                    a.a(a.this, com.mobile.auth.gatewayauth.utils.c.b());
                                } catch (Throwable th) {
                                    try {
                                        com.mobile.auth.gatewayauth.a.a(th);
                                    } catch (Throwable th2) {
                                        com.mobile.auth.gatewayauth.a.a(th2);
                                    }
                                }
                            }
                        });
                    }
                } catch (Throwable th) {
                    try {
                        com.mobile.auth.gatewayauth.a.a(th);
                    } catch (Throwable th2) {
                        com.mobile.auth.gatewayauth.a.a(th2);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public d(Context context, com.mobile.auth.o.a aVar) {
        this.f13546a = context;
        this.b = aVar;
    }

    @TargetApi(21)
    private void a(Context context, com.mobile.auth.u.d dVar) {
        try {
            String strA = a.a(context).a();
            if (TextUtils.isEmpty(strA)) {
                dVar.a(false);
            } else {
                dVar.a(true);
                dVar.a(strA);
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
            Class<?> cls = Class.forName("android.net.ConnectivityManager");
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                this.b.a("ConnectivityManager is null, cannot try to force a mobile connection");
                return false;
            }
            NetworkInfo.State state = connectivityManager.getNetworkInfo(5).getState();
            this.b.a("TYPE_MOBILE_HIPRI network state: ", String.valueOf(state));
            if (state.compareTo(NetworkInfo.State.CONNECTED) != 0 && state.compareTo(NetworkInfo.State.CONNECTING) != 0) {
                int iIntValue = ((Integer) cls.getMethod("startUsingNetworkFeature", Integer.TYPE, String.class).invoke(connectivityManager, 0, "enableHIPRI")).intValue();
                this.b.a("startUsingNetworkFeature for enableHIPRI result: ", String.valueOf(iIntValue));
                if (-1 == iIntValue) {
                    this.b.a("Wrong result of startUsingNetworkFeature, maybe problems");
                    return false;
                }
                if (iIntValue == 0) {
                    this.b.a("No need to perform additional network settings");
                    return true;
                }
                String strB = com.mobile.auth.ab.f.b(str);
                this.b.a("Source address: " + str);
                this.b.a("Destination host address to route: " + strB);
                if (!TextUtils.isEmpty(strB)) {
                    str = strB;
                }
                int iC = com.mobile.auth.ab.f.c(str);
                if (-1 == iC) {
                    this.b.a("Wrong host address transformation, result was -1");
                    return false;
                }
                for (int i = 0; i < 3; i++) {
                    try {
                        if (connectivityManager.getNetworkInfo(5).getState().compareTo(NetworkInfo.State.CONNECTED) == 0) {
                            break;
                        }
                        Thread.sleep(1000L);
                    } catch (InterruptedException unused) {
                    }
                }
                Class<?> cls2 = Integer.TYPE;
                boolean zBooleanValue = ((Boolean) cls.getMethod("requestRouteToHost", cls2, cls2).invoke(connectivityManager, 5, Integer.valueOf(iC))).booleanValue();
                this.b.b("requestRouteToHost result: " + zBooleanValue);
                if (!zBooleanValue) {
                    this.b.b("Wrong requestRouteToHost result: expected true, but was false");
                }
                this.b.a("TYPE_MOBILE_HIPRI network state after routing: ", String.valueOf(connectivityManager.getNetworkInfo(5).getState()));
                return zBooleanValue;
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

    public com.mobile.auth.u.d a() {
        try {
            return new com.mobile.auth.u.d(true, false);
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

    public com.mobile.auth.u.d b() throws Exception {
        try {
            com.mobile.auth.u.d dVar = new com.mobile.auth.u.d(false, false);
            if (Build.VERSION.SDK_INT >= 21) {
                a(this.f13546a, dVar);
            } else if (a(this.f13546a, "https://id6.me/auth/preauth.do")) {
                com.mobile.auth.d.d.a(this.f13546a, "https://id6.me/auth/preauth.do", null, null, "");
                dVar.a(true);
                dVar.a(com.mobile.auth.gatewayauth.utils.c.b());
            } else {
                dVar.a(false);
            }
            return dVar;
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

    @Override // java.util.concurrent.Callable
    public /* synthetic */ Object call() throws Exception {
        try {
            return b();
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

    @Override // com.nirvana.tools.requestqueue.TimeoutCallable
    public /* synthetic */ com.mobile.auth.u.d onTimeout() {
        try {
            return a();
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
}
