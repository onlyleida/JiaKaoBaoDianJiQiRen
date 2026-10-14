package cn.mucang.android.account.api.data;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.o;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\f"}, d2 = {"Lcn/mucang/android/account/api/data/NumAuthResponse;", "Ljava/io/Serializable;", "verifyId", "", "verifyResult", "(Ljava/lang/String;Ljava/lang/String;)V", "getVerifyId", "()Ljava/lang/String;", "setVerifyId", "(Ljava/lang/String;)V", "getVerifyResult", "setVerifyResult", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NumAuthResponse implements Serializable {
    private String verifyId;
    private String verifyResult;

    /* JADX WARN: Multi-variable type inference failed */
    public NumAuthResponse() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public NumAuthResponse(String str, String str2) {
        this.verifyId = str;
        this.verifyResult = str2;
    }

    public final String getVerifyId() {
        return this.verifyId;
    }

    public final String getVerifyResult() {
        return this.verifyResult;
    }

    public final void setVerifyId(String str) {
        this.verifyId = str;
    }

    public final void setVerifyResult(String str) {
        this.verifyResult = str;
    }

    public /* synthetic */ NumAuthResponse(String str, String str2, int i, o oVar) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2);
    }
}
