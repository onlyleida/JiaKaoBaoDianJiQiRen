package com.amap.api.mapcore.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public class d8 extends e8 {
    public d8(e8 e8Var) {
        super(e8Var);
    }

    @Override // com.amap.api.mapcore.util.e8
    protected byte[] b(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(new SimpleDateFormat("yyyyMMdd HHmmss").format(new Date()));
        stringBuffer.append(" ");
        stringBuffer.append(UUID.randomUUID().toString());
        stringBuffer.append(" ");
        if (stringBuffer.length() != 53) {
            return new byte[0];
        }
        byte[] bArrO = n5.o(stringBuffer.toString());
        byte[] bArr2 = new byte[bArrO.length + bArr.length];
        System.arraycopy(bArrO, 0, bArr2, 0, bArrO.length);
        System.arraycopy(bArr, 0, bArr2, bArrO.length, bArr.length);
        return bArr2;
    }
}
