package androidx.constraintlayout.core.parser;

import com.mobile.auth.gatewayauth.Constant;

/* JADX INFO: loaded from: classes.dex */
public class CLParsingException extends Exception {
    private final String mElementClass;
    private final int mLineNumber;
    private final String mReason;

    public CLParsingException(String str, a aVar) {
        this.mReason = str;
        if (aVar != null) {
            this.mElementClass = aVar.b();
            this.mLineNumber = aVar.a();
        } else {
            this.mElementClass = Constant.VENDOR_UNKNOWN;
            this.mLineNumber = 0;
        }
    }

    public String reason() {
        return this.mReason + " (" + this.mElementClass + " at line " + this.mLineNumber + ")";
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "CLParsingException (" + hashCode() + ") : " + reason();
    }
}
