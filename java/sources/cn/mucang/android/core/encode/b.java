package cn.mucang.android.core.encode;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static RuntimeException a(Throwable th) {
        return th instanceof RuntimeException ? (RuntimeException) th : new RuntimeException(th);
    }
}
