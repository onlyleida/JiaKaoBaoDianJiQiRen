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
public abstract class ay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ay f12532a;

    ay() {
    }

    ay(ay ayVar) {
        this.f12532a = ayVar;
    }

    protected abstract byte[] a(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException;

    public final byte[] b(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException {
        ay ayVar = this.f12532a;
        if (ayVar != null) {
            bArr = ayVar.b(bArr);
        }
        return a(bArr);
    }
}
