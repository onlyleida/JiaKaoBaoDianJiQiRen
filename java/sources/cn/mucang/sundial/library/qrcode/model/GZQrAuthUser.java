package cn.mucang.sundial.library.qrcode.model;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;", "Ljava/io/Serializable;", "", "idCard", "Ljava/lang/String;", "getIdCard", "()Ljava/lang/String;", "setIdCard", "(Ljava/lang/String;)V", "checkStatus", "getCheckStatus", "setCheckStatus", "", "scanLoginStatus", "I", "getScanLoginStatus", "()I", "setScanLoginStatus", "(I)V", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class GZQrAuthUser implements Serializable {
    private String checkStatus = "";
    private String idCard = "";
    private int scanLoginStatus;

    public final String getCheckStatus() {
        return this.checkStatus;
    }

    public final String getIdCard() {
        return this.idCard;
    }

    public final int getScanLoginStatus() {
        return this.scanLoginStatus;
    }

    public final void setCheckStatus(String str) {
        this.checkStatus = str;
    }

    public final void setIdCard(String str) {
        this.idCard = str;
    }

    public final void setScanLoginStatus(int i) {
        this.scanLoginStatus = i;
    }
}
