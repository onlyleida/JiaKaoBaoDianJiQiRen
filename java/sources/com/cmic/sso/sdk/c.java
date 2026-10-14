package com.cmic.sso.sdk;

import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.KeyStore;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private X509Certificate f11649a;
    private SSLContext b;

    public c(String str) throws Throwable {
        a(str);
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            keyStore.setCertificateEntry("cert", this.f11649a);
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init(keyStore);
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            this.b = sSLContext;
            sSLContext.init(null, trustManagerFactory.getTrustManagers(), null);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(String str) throws Throwable {
        if (this.f11649a != null) {
            return;
        }
        ByteArrayInputStream byteArrayInputStream = null;
        try {
            try {
                try {
                    ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(Base64.decode(str, 0));
                    try {
                        this.f11649a = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(byteArrayInputStream2);
                        byteArrayInputStream2.close();
                    } catch (CertificateException e2) {
                        e = e2;
                        byteArrayInputStream = byteArrayInputStream2;
                        e.printStackTrace();
                        if (byteArrayInputStream == null) {
                        } else {
                            byteArrayInputStream.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        byteArrayInputStream = byteArrayInputStream2;
                        if (byteArrayInputStream != null) {
                            try {
                                byteArrayInputStream.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (CertificateException e4) {
                    e = e4;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e5) {
            e5.printStackTrace();
        }
    }

    public SSLContext a() {
        return this.b;
    }
}
