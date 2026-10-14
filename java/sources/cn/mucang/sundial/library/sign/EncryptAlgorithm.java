package cn.mucang.sundial.library.sign;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcn/mucang/sundial/library/sign/EncryptAlgorithm;", "", "", "label", "Ljava/lang/String;", "getLabel", "()Ljava/lang/String;", "value", "getValue", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "E1", "E2", "E3", "library_release"}, k = 1, mv = {1, 1, 15})
public enum EncryptAlgorithm {
    E1("e1", "SHA1"),
    E2("e2", "SHA256"),
    E3("e3", "SHA512");

    private final String label;
    private final String value;

    EncryptAlgorithm(String str, String str2) {
        this.label = str;
        this.value = str2;
    }

    public final String getLabel() {
        return this.label;
    }

    public final String getValue() {
        return this.value;
    }
}
