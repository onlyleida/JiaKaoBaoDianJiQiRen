package com.loc;

import android.content.Context;
import android.net.SSLSessionCache;
import android.os.Build;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSessionContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes4.dex */
public final class bj extends SSLSocketFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SSLSocketFactory f12599a;
    private Context b;
    private SSLContext c;

    public bj(Context context, SSLContext sSLContext) {
        SSLSocketFactory sSLSocketFactory;
        int i = Build.VERSION.SDK_INT;
        if (context != null) {
            try {
                this.b = context.getApplicationContext();
            } catch (Throwable th) {
                try {
                    am.b(th, "myssl", "<init>");
                    try {
                        if (sSLSocketFactory == null) {
                            return;
                        } else {
                            return;
                        }
                    } catch (Throwable th2) {
                        return;
                    }
                } finally {
                    try {
                        if (this.c == null && i >= 9) {
                            this.c = SSLContext.getDefault();
                        }
                    } catch (Throwable th3) {
                        am.b(th3, "myssl", "<init2>");
                    }
                    try {
                        if (this.f12599a == null) {
                            this.f12599a = (SSLSocketFactory) SSLSocketFactory.getDefault();
                        }
                    } catch (Throwable th4) {
                        am.b(th4, "myssl", "<init3>");
                    }
                }
            }
        }
        this.c = sSLContext;
        if (sSLContext != null) {
            this.f12599a = sSLContext.getSocketFactory();
        }
        try {
            if (this.c == null && i >= 9) {
                this.c = SSLContext.getDefault();
            }
        } catch (Throwable th5) {
            am.b(th5, "myssl", "<init2>");
        }
        try {
            if (this.f12599a == null) {
                this.f12599a = (SSLSocketFactory) SSLSocketFactory.getDefault();
            }
        } catch (Throwable th6) {
            am.b(th6, "myssl", "<init3>");
        }
    }

    private static Socket a(Socket socket) {
        try {
            if (Build.VERSION.SDK_INT >= 21 && l.f.b && (socket instanceof SSLSocket)) {
                ((SSLSocket) socket).setEnabledProtocols(new String[]{"TLSv1.2"});
            }
        } catch (Throwable th) {
            am.b(th, "myssl", "stlv2");
        }
        return socket;
    }

    private void a(SSLSessionCache sSLSessionCache) {
        SSLContext sSLContext = this.c;
        if (sSLContext == null) {
            return;
        }
        try {
            SSLSessionContext clientSessionContext = sSLContext.getClientSessionContext();
            Field declaredField = sSLSessionCache.getClass().getDeclaredField(w.c("UbVNlc3Npb25DYWNoZQ"));
            declaredField.setAccessible(true);
            Object obj = declaredField.get(sSLSessionCache);
            Method[] methods = clientSessionContext.getClass().getMethods();
            String strC = w.c("Yc2V0UGVyc2lzdGVudENhY2hl");
            for (Method method : methods) {
                if (method.getName().equals(strC)) {
                    method.invoke(clientSessionContext, obj);
                    return;
                }
            }
        } catch (Throwable th) {
            am.b(th, "myssl", "isc2");
        }
    }

    private static void b(Socket socket) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 17 && l.f.c && l.f.f12990e && (socket instanceof SSLSocket)) {
            int i2 = l.f.f12991f;
            int i3 = l.f.f12989d;
            if (i2 <= i3) {
                i3 = l.f.f12991f;
            }
            if (i3 <= 17 || i <= i3) {
                try {
                    socket.getClass().getMethod(w.c("Cc2V0VXNlU2Vzc2lvblRpY2tldHM"), Boolean.TYPE).invoke(socket, Boolean.TRUE);
                } catch (Throwable th) {
                    am.b(th, "myssl", "sust");
                }
            }
        }
    }

    public final void a() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 17 && l.f.c && this.b != null && this.c != null) {
            int i2 = l.f.f12989d;
            if (i2 <= 17 || i <= i2) {
                SSLSessionCache sSLSessionCache = new SSLSessionCache(this.b);
                if (i <= 20 || i >= 28) {
                    a(sSLSessionCache);
                    return;
                }
                try {
                    sSLSessionCache.getClass().getMethod(w.c("MaW5zdGFsbA"), SSLSessionCache.class, SSLContext.class).invoke(sSLSessionCache, sSLSessionCache, this.c);
                } catch (Throwable th) {
                    am.b(th, "myssl", "isc1");
                    a(sSLSessionCache);
                }
            }
        }
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() throws IOException {
        try {
            SSLSocketFactory sSLSocketFactory = this.f12599a;
            if (sSLSocketFactory == null) {
                return null;
            }
            Socket socketA = a(sSLSocketFactory.createSocket());
            b(socketA);
            return socketA;
        } catch (Throwable th) {
            am.b(th, "myssl", "cs1");
            if (th instanceof IOException) {
                throw th;
            }
            return null;
        }
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) throws IOException {
        try {
            SSLSocketFactory sSLSocketFactory = this.f12599a;
            if (sSLSocketFactory == null) {
                return null;
            }
            Socket socketA = a(sSLSocketFactory.createSocket(str, i));
            b(socketA);
            return socketA;
        } catch (Throwable th) {
            am.b(th, "myssl", "cs3");
            if (th instanceof UnknownHostException) {
                throw th;
            }
            if (th instanceof IOException) {
                throw th;
            }
            return null;
        }
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        try {
            SSLSocketFactory sSLSocketFactory = this.f12599a;
            if (sSLSocketFactory == null) {
                return null;
            }
            Socket socketA = a(sSLSocketFactory.createSocket(str, i, inetAddress, i2));
            b(socketA);
            return socketA;
        } catch (Throwable th) {
            am.b(th, "myssl", "cs4");
            if (th instanceof UnknownHostException) {
                throw th;
            }
            if (th instanceof IOException) {
                throw th;
            }
            return null;
        }
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        try {
            SSLSocketFactory sSLSocketFactory = this.f12599a;
            if (sSLSocketFactory == null) {
                return null;
            }
            Socket socketA = a(sSLSocketFactory.createSocket(inetAddress, i));
            b(socketA);
            return socketA;
        } catch (Throwable th) {
            am.b(th, "myssl", "cs5");
            if (th instanceof IOException) {
                throw th;
            }
            return null;
        }
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        try {
            SSLSocketFactory sSLSocketFactory = this.f12599a;
            if (sSLSocketFactory == null) {
                return null;
            }
            Socket socketA = a(sSLSocketFactory.createSocket(inetAddress, i, inetAddress2, i2));
            b(socketA);
            return socketA;
        } catch (Throwable th) {
            am.b(th, "myssl", "cs6");
            if (th instanceof IOException) {
                throw th;
            }
            return null;
        }
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        try {
            SSLSocketFactory sSLSocketFactory = this.f12599a;
            if (sSLSocketFactory == null) {
                return null;
            }
            Socket socketA = a(sSLSocketFactory.createSocket(socket, str, i, z));
            b(socketA);
            return socketA;
        } catch (Throwable th) {
            am.b(th, "myssl", "cs2");
            if (th instanceof IOException) {
                throw th;
            }
            return null;
        }
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        try {
            SSLSocketFactory sSLSocketFactory = this.f12599a;
            if (sSLSocketFactory != null) {
                return sSLSocketFactory.getDefaultCipherSuites();
            }
        } catch (Throwable th) {
            am.b(th, "myssl", "gdcs");
        }
        return new String[0];
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        try {
            SSLSocketFactory sSLSocketFactory = this.f12599a;
            if (sSLSocketFactory != null) {
                return sSLSocketFactory.getSupportedCipherSuites();
            }
        } catch (Throwable th) {
            am.b(th, "myssl", "gscs");
        }
        return new String[0];
    }
}
