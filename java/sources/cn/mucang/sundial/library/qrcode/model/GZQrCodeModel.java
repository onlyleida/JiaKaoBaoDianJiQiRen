package cn.mucang.sundial.library.qrcode.model;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\f\u0010\rR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\u000e"}, d2 = {"Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;", "Ljava/io/Serializable;", "", "url", "Ljava/lang/String;", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "qrToken", "getQrToken", "setQrToken", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class GZQrCodeModel implements Serializable {
    private String qrToken;
    private String url;

    public final String getQrToken() {
        return this.qrToken;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setQrToken(String str) {
        this.qrToken = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }
}
