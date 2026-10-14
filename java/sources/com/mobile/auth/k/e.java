package com.mobile.auth.k;

import android.content.Context;
import android.os.Build;
import android.security.KeyPairGeneratorSpec;
import android.security.keystore.KeyGenParameterSpec;
import android.text.TextUtils;
import android.util.Base64;
import cn.mucang.sundial.android.tcp.message.training.TrainingMessage;
import java.math.BigInteger;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.util.Calendar;
import javax.crypto.Cipher;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: classes5.dex */
public class e {
    static String a(Context context, String str) {
        byte[] bArrB = b(context);
        if (bArrB != null) {
            return a.a(bArrB, str);
        }
        return null;
    }

    private static void a(String str) {
        p.a("AES_KEY", str);
    }

    public static synchronized boolean a(Context context) {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            if (keyStore.getCertificate("CMCC_SDK") != null) {
                return true;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 23) {
                try {
                    KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
                    keyPairGenerator.initialize(new KeyGenParameterSpec.Builder("CMCC_SDK", 3).setDigests(TrainingMessage.ExtendAttribute.SHA_256, "SHA-512").setEncryptionPaddings("PKCS1Padding").build());
                    Thread.sleep(1000L);
                    keyPairGenerator.generateKeyPair();
                    return true;
                } catch (Exception e2) {
                    f.a("KeystoreUtil", e2.getMessage());
                    return false;
                }
            }
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(1, 30);
            if (i < 18) {
                return false;
            }
            try {
                KeyPairGeneratorSpec keyPairGeneratorSpecBuild = new KeyPairGeneratorSpec.Builder(context).setAlias("CMCC_SDK").setSubject(new X500Principal("CN=CMCC_SDK")).setSerialNumber(BigInteger.TEN).setStartDate(calendar.getTime()).setEndDate(calendar2.getTime()).build();
                KeyPairGenerator keyPairGenerator2 = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
                keyPairGenerator2.initialize(keyPairGeneratorSpecBuild);
                Thread.sleep(1000L);
                keyPairGenerator2.generateKeyPair();
                return true;
            } catch (Exception e3) {
                f.a("KeystoreUtil", e3.getMessage());
                return false;
            }
            throw th;
        } catch (Exception e4) {
            f.a("KeystoreUtil", e4.getMessage());
            return false;
        }
    }

    private static byte[] a() {
        byte[] bArr = new byte[16];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }

    private static String b() {
        return p.b("AES_KEY", "");
    }

    static String b(Context context, String str) {
        byte[] bArrB;
        if (TextUtils.isEmpty(str) || (bArrB = b(context)) == null) {
            return null;
        }
        return a.b(bArrB, str);
    }

    private static byte[] b(Context context) {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            if (TextUtils.isEmpty(b())) {
                if (!a(context)) {
                    return null;
                }
                byte[] bArrA = a();
                PublicKey publicKey = keyStore.getCertificate("CMCC_SDK").getPublicKey();
                Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
                cipher.init(1, publicKey);
                a(Base64.encodeToString(cipher.doFinal(bArrA), 0));
                return bArrA;
            }
            String strB = b();
            if (TextUtils.isEmpty(strB)) {
                return null;
            }
            byte[] bArrDecode = Base64.decode(strB, 0);
            PrivateKey privateKey = (PrivateKey) keyStore.getKey("CMCC_SDK", null);
            if (privateKey == null) {
                return null;
            }
            Cipher cipher2 = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher2.init(2, privateKey);
            return cipher2.doFinal(bArrDecode);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
