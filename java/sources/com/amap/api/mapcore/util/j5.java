package com.amap.api.mapcore.util;

import android.net.Uri;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public abstract class j5 extends k7 {
    @Override // com.amap.api.mapcore.util.k7
    public String getIPV6URL() {
        if (TextUtils.isEmpty(getURL())) {
            return getURL();
        }
        String url = getURL();
        Uri uri = Uri.parse(url);
        if (uri.getAuthority().startsWith("dualstack-")) {
            return url;
        }
        return uri.buildUpon().authority("dualstack-" + uri.getAuthority()).build().toString();
    }

    @Override // com.amap.api.mapcore.util.k7
    public boolean isSupportIPV6() {
        return true;
    }
}
