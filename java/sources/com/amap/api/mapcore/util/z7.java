package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes5.dex */
public class z7 extends e8 {
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f11457d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private w6 f11458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Object[] f11459f;

    public z7(Context context, e8 e8Var, w6 w6Var, String str, Object... objArr) {
        super(e8Var);
        this.c = context;
        this.f11457d = str;
        this.f11458e = w6Var;
        this.f11459f = objArr;
    }

    private String e(Context context) {
        try {
            return String.format(n5.t(this.f11457d), this.f11459f);
        } catch (Throwable th) {
            th.printStackTrace();
            e6.r(th, "ofm", "gpj");
            return "";
        }
    }

    private String f(Context context) throws BadPaddingException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException {
        return n5.g(this.f11458e.b(n5.o(e(context))));
    }

    @Override // com.amap.api.mapcore.util.e8
    protected byte[] b(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException {
        String strG = n5.g(bArr);
        if (TextUtils.isEmpty(strG)) {
            return null;
        }
        return n5.o("{\"pinfo\":\"" + f(this.c) + "\",\"els\":[" + strG + "]}");
    }
}
