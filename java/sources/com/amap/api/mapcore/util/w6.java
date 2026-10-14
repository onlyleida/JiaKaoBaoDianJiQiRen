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
public abstract class w6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    w6 f11315a;

    w6() {
    }

    private byte[] c(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException {
        w6 w6Var = this.f11315a;
        return w6Var != null ? w6Var.b(bArr) : bArr;
    }

    protected abstract byte[] a(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException;

    public byte[] b(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException {
        return a(c(bArr));
    }

    w6(w6 w6Var) {
        this.f11315a = w6Var;
    }
}
