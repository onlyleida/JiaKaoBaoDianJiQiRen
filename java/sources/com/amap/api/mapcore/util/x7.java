package com.amap.api.mapcore.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class x7 extends e8 {
    ByteArrayOutputStream c;

    public x7(e8 e8Var) {
        super(e8Var);
        this.c = new ByteArrayOutputStream();
    }

    @Override // com.amap.api.mapcore.util.e8
    protected byte[] b(byte[] bArr) {
        byte[] byteArray = this.c.toByteArray();
        try {
            this.c.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        this.c = new ByteArrayOutputStream();
        return byteArray;
    }

    @Override // com.amap.api.mapcore.util.e8
    public void c(byte[] bArr) {
        try {
            this.c.write(bArr);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
