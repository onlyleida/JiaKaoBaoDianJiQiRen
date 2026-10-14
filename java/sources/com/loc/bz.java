package com.loc;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class bz {
    bz c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    byte[] f12654d = null;

    bz() {
    }

    bz(bz bzVar) {
        this.c = bzVar;
    }

    public final byte[] a() throws BadPaddingException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException {
        byte[] bArrA = a(this.f12654d);
        bz bzVar = this.c;
        if (bzVar == null) {
            return bArrA;
        }
        bzVar.f12654d = bArrA;
        return bzVar.a();
    }

    protected abstract byte[] a(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException;

    public void b(byte[] bArr) {
    }
}
