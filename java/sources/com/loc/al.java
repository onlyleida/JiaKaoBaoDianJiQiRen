package com.loc;

import cn.mucang.android.core.api.upload.FileUploadApi;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.common.net.HttpHeaders;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class al extends q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f12511a;
    private String b;

    public al(byte[] bArr, String str) {
        this.b = "1";
        this.f12511a = (byte[]) bArr.clone();
        this.b = str;
        a(bk.a.SINGLE);
        a(bk.c.HTTP);
    }

    @Override // com.loc.bk
    public final Map<String, String> a() {
        HashMap map = new HashMap();
        map.put(HttpHeaders.CONTENT_TYPE, FileUploadApi.TYPE_APPLICATION_ZIP);
        map.put(HttpHeaders.CONTENT_LENGTH, String.valueOf(this.f12511a.length));
        return map;
    }

    @Override // com.loc.bk
    public final String b() {
        String strC = w.c(af.b);
        byte[] bArrA = w.a(af.f12489a);
        byte[] bArr = new byte[bArrA.length + 50];
        System.arraycopy(this.f12511a, 0, bArr, 0, 50);
        System.arraycopy(bArrA, 0, bArr, 50, bArrA.length);
        return String.format(strC, "1", this.b, "1", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, r.a(bArr));
    }

    @Override // com.loc.bk
    public final boolean c_() {
        return false;
    }

    @Override // com.loc.bk
    public final Map<String, String> d() {
        return null;
    }

    @Override // com.loc.bk
    public final byte[] e() {
        return this.f12511a;
    }
}
