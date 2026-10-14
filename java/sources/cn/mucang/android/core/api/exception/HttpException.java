package cn.mucang.android.core.api.exception;

/* JADX INFO: loaded from: classes.dex */
public class HttpException extends FallbackException {
    public static final int INVALID_CODE = -1;
    private int httpStatusCode;

    public HttpException() {
        this.httpStatusCode = -1;
    }

    public int getHttpStatusCode() {
        return this.httpStatusCode;
    }

    public HttpException(String str, int i) {
        super(str);
        this.httpStatusCode = -1;
        this.httpStatusCode = i;
    }

    public HttpException(String str) {
        super(str);
        this.httpStatusCode = -1;
        this.httpStatusCode = -1;
    }

    public HttpException(String str, Throwable th) {
        super(str, th);
        this.httpStatusCode = -1;
        this.httpStatusCode = -1;
    }

    public HttpException(Throwable th) {
        super(th);
        this.httpStatusCode = -1;
        this.httpStatusCode = -1;
    }
}
