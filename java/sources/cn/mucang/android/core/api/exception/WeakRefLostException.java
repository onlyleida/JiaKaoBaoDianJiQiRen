package cn.mucang.android.core.api.exception;

/* JADX INFO: loaded from: classes.dex */
public class WeakRefLostException extends RuntimeException {
    public WeakRefLostException() {
    }

    public WeakRefLostException(String str) {
        super(str);
    }

    public WeakRefLostException(String str, Throwable th) {
        super(str, th);
    }

    public WeakRefLostException(Throwable th) {
        super(th);
    }
}
