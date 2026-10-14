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
public final class bu extends bz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ay f12647a;

    public bu() {
        this.f12647a = new ba();
    }

    public bu(bz bzVar) {
        super(bzVar);
        this.f12647a = new ba();
    }

    @Override // com.loc.bz
    protected final byte[] a(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException {
        return this.f12647a.b(bArr);
    }
}
