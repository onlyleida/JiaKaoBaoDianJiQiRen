package com.mobile.auth.k;

import android.os.Build;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes5.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f13503a = "m";
    private static m b;
    private PublicKey c = null;

    private m() {
        try {
            b();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static m a() {
        if (b == null) {
            b = new m();
        }
        return b;
    }

    private void b() throws Exception {
        try {
            this.c = (Build.VERSION.SDK_INT >= 28 ? KeyFactory.getInstance("RSA") : KeyFactory.getInstance("RSA", "BC")).generatePublic(new X509EncodedKeySpec(new com.mobile.auth.l.a().a("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/YHP9utFGOhGk7Xf5L7jOgQz5\nv2JKxdrIE3yzYsHoZJwzKC7Ttx380UZmBFzr5I1k6FFMn/YGXd4ts6UHT/nzsCIc\ngZlTTem7Pjdm1V9bJgQ6iQvFHsvT+vNgJ3wAIRd+iCMXm8y96yZhD2+SH5odBYS2\nZzwTYXBQDvB/rTfdjwIDAQAB")));
        } catch (IOException unused) {
            throw new Exception("公钥数据流读取错误");
        } catch (NullPointerException unused2) {
            throw new Exception("公钥输入流为空");
        }
    }

    public String a(String str) {
        if (this.c == null) {
            f.a(f13503a, "mServerPublicKey == null");
            return null;
        }
        try {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, this.c);
            return r.a(cipher.doFinal(str.getBytes("UTF-8")));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
