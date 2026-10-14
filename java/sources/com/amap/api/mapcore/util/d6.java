package com.amap.api.mapcore.util;

import cn.mucang.android.core.api.upload.FileUploadApi;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.common.net.HttpHeaders;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class d6 extends j5 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f10682d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f10683e;

    public d6(byte[] bArr, String str) {
        this.f10683e = "1";
        this.f10682d = (byte[]) bArr.clone();
        this.f10683e = str;
    }

    private String e() {
        byte[] bArrO = n5.o(y5.b);
        byte[] bArr = new byte[bArrO.length + 50];
        System.arraycopy(this.f10682d, 0, bArr, 0, 50);
        System.arraycopy(bArrO, 0, bArr, 50, bArrO.length);
        return k5.b(bArr);
    }

    @Override // com.amap.api.mapcore.util.k7
    public byte[] getEntityBytes() {
        return this.f10682d;
    }

    @Override // com.amap.api.mapcore.util.k7
    public Map<String, String> getParams() {
        return null;
    }

    @Override // com.amap.api.mapcore.util.k7
    public Map<String, String> getRequestHead() {
        HashMap map = new HashMap();
        map.put(HttpHeaders.CONTENT_TYPE, FileUploadApi.TYPE_APPLICATION_ZIP);
        map.put(HttpHeaders.CONTENT_LENGTH, String.valueOf(this.f10682d.length));
        return map;
    }

    @Override // com.amap.api.mapcore.util.k7
    public String getURL() {
        return String.format(n5.t(y5.c), "1", this.f10683e, "1", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, e());
    }
}
