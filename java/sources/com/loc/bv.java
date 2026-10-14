package com.loc;

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

/* JADX INFO: loaded from: classes4.dex */
public final class bv extends bz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f12648a;
    private String b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ay f12649e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Object[] f12650f;

    public bv(Context context, bz bzVar, ay ayVar, String str, Object... objArr) {
        super(bzVar);
        this.f12648a = context;
        this.b = str;
        this.f12649e = ayVar;
        this.f12650f = objArr;
    }

    private String b() {
        try {
            return String.format(w.c(this.b), this.f12650f);
        } catch (Throwable th) {
            th.printStackTrace();
            am.b(th, "ofm", "gpj");
            return "";
        }
    }

    @Override // com.loc.bz
    protected final byte[] a(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException {
        String strA = w.a(bArr);
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return w.a("{\"pinfo\":\"" + w.a(this.f12649e.b(w.a(b()))) + "\",\"els\":[" + strA + "]}");
    }
}
