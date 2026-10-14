package com.loc;

import android.net.Uri;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public abstract class q extends bk {
    @Override // com.loc.bk
    public String c() {
        Uri.Builder builderBuildUpon;
        String str;
        if (TextUtils.isEmpty(b())) {
            return b();
        }
        String strB = b();
        Uri uri = Uri.parse(strB);
        if (uri.getAuthority().startsWith("dualstack-")) {
            return strB;
        }
        if (uri.getAuthority().startsWith("restsdk.amap.com")) {
            builderBuildUpon = uri.buildUpon();
            str = "dualstack-arestapi.amap.com";
        } else {
            builderBuildUpon = uri.buildUpon();
            str = "dualstack-" + uri.getAuthority();
        }
        return builderBuildUpon.authority(str).build().toString();
    }
}
