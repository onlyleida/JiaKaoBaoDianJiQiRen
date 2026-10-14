package androidx.fragment.app;

import android.util.Log;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
final class z extends Writer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1447a;
    private StringBuilder b = new StringBuilder(128);

    z(String str) {
        this.f1447a = str;
    }

    private void a() {
        if (this.b.length() > 0) {
            Log.d(this.f1447a, this.b.toString());
            StringBuilder sb = this.b;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                a();
            } else {
                this.b.append(c);
            }
        }
    }
}
