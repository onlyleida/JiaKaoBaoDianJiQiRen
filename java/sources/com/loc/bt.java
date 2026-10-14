package com.loc;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class bt extends bz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ByteArrayOutputStream f12646a;

    public bt() {
        this.f12646a = new ByteArrayOutputStream();
    }

    public bt(bz bzVar) {
        super(bzVar);
        this.f12646a = new ByteArrayOutputStream();
    }

    @Override // com.loc.bz
    protected final byte[] a(byte[] bArr) {
        byte[] byteArray = this.f12646a.toByteArray();
        try {
            this.f12646a.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        this.f12646a = new ByteArrayOutputStream();
        return byteArray;
    }

    @Override // com.loc.bz
    public final void b(byte[] bArr) {
        try {
            this.f12646a.write(bArr);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
