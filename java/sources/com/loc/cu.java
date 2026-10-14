package com.loc;

import android.util.Base64;
import com.google.common.net.HttpHeaders;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes4.dex */
public final class cu {
    public static boolean a(byte[] bArr) {
        String str;
        if (bArr == null) {
            return false;
        }
        byte[] bArr2 = null;
        try {
            eb ebVar = new eb();
            ebVar.b.put(HttpHeaders.CONTENT_TYPE, "application/octet-stream");
            ebVar.b.put("aps_c_src", Base64.encodeToString(eb.a().getBytes(), 2));
            ebVar.b.put("aps_c_key", Base64.encodeToString(eb.b().getBytes(), 2));
            ebVar.f12764d = bArr;
            if (cl.f12683a) {
                str = "http://cgicol.amap.com/collection/collectData?src=baseCol&ver=v74&";
            } else {
                str = (cl.b ? "https://" : "http://") + "cgicol.amap.com/collection/collectData?src=baseCol&ver=v74&";
            }
            ebVar.f12763a = str;
            ec ecVarA = dp.b().a(ebVar);
            if (ecVarA != null && ecVarA.f12766a == 200) {
                bArr2 = ecVarA.c;
            }
            return bArr2 != null && "true".equals(new String(bArr2, StandardCharsets.UTF_8));
        } catch (Exception e2) {
            ea.a(e2);
            return false;
        }
    }
}
