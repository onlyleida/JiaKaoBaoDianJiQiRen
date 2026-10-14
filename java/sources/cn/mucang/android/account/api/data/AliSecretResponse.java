package cn.mucang.android.account.api.data;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcn/mucang/android/account/api/data/AliSecretResponse;", "Ljava/io/Serializable;", "()V", "secret", "", "getSecret", "()Ljava/lang/String;", "setSecret", "(Ljava/lang/String;)V", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AliSecretResponse implements Serializable {
    private String secret;

    public final String getSecret() {
        return this.secret;
    }

    public final void setSecret(String str) {
        this.secret = str;
    }
}
