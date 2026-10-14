package androidx.loader.a;

import androidx.lifecycle.o0;
import androidx.lifecycle.r;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static <T extends r & o0> a b(T t) {
        return new b(t, t.getViewModelStore());
    }

    @Deprecated
    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract void c();
}
