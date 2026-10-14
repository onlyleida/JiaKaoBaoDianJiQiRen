package com.amap.api.mapcore.util;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class e8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    e8 f10753a;
    byte[] b = null;

    e8() {
    }

    public byte[] a() throws BadPaddingException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException {
        byte[] bArrB = b(this.b);
        e8 e8Var = this.f10753a;
        if (e8Var == null) {
            return bArrB;
        }
        e8Var.d(bArrB);
        return this.f10753a.a();
    }

    protected abstract byte[] b(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException;

    public void c(byte[] bArr) {
    }

    void d(byte[] bArr) {
        this.b = bArr;
    }

    e8(e8 e8Var) {
        this.f10753a = e8Var;
    }
}
