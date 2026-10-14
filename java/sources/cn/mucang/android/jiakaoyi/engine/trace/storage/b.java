package cn.mucang.android.jiakaoyi.engine.trace.storage;

import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3190a;
    private FileWriter b;
    private boolean c;

    public b(String str, int i) {
        String str2 = str + File.separator + i + ".txt";
        this.f3190a = str2;
        try {
            this.b = new FileWriter(str2);
            this.c = true;
        } catch (IOException e2) {
            this.b = null;
            t.d("TraceFileTag", e2.getMessage());
        }
    }

    public void a() {
        FileWriter fileWriter = this.b;
        if (fileWriter == null) {
            return;
        }
        try {
            if (!this.c) {
                fileWriter.write("]");
            }
            this.b.flush();
        } catch (Throwable th) {
            try {
                t.d("TraceFileTag", th.getMessage());
            } finally {
                o.a(this.b);
                this.b = null;
            }
        }
    }

    public void b(String str) {
        FileWriter fileWriter = this.b;
        if (fileWriter == null) {
            return;
        }
        try {
            if (this.c) {
                fileWriter.write("[");
            } else {
                fileWriter.write(",");
            }
            this.b.write(str);
            this.b.flush();
            this.c = false;
        } catch (Throwable th) {
            t.d("TraceFileTag", th.getMessage());
        }
    }
}
