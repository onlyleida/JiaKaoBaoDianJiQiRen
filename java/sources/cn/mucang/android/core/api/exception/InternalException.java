package cn.mucang.android.core.api.exception;

/* JADX INFO: loaded from: classes.dex */
public class InternalException extends FallbackException {
    public InternalException() {
    }

    public InternalException(String str) {
        super(str);
    }

    public InternalException(String str, Throwable th) {
        super(str, th);
    }

    public InternalException(Throwable th) {
        super(th);
    }
}
