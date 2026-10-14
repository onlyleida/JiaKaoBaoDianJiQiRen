package cn.mucang.android.account.p001qrcode.model;

import cn.mucang.android.account.data.AuthUser;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcn/mucang/android/account/qrcode/model/QrAuthUser;", "Lcn/mucang/android/account/data/AuthUser;", "Ljava/io/Serializable;", "()V", "scanLoginStatus", "", "getScanLoginStatus", "()I", "setScanLoginStatus", "(I)V", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class QrAuthUser extends AuthUser implements Serializable {
    private int scanLoginStatus;

    public final int getScanLoginStatus() {
        return this.scanLoginStatus;
    }

    public final void setScanLoginStatus(int i) {
        this.scanLoginStatus = i;
    }
}
