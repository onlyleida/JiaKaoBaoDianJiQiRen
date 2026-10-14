package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f15432a;
    private f b;
    private volatile boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected volatile n f15433d;

    protected void a(n nVar) {
        if (this.f15433d != null) {
            return;
        }
        synchronized (this) {
            if (this.f15433d != null) {
                return;
            }
            try {
                if (this.f15432a != null) {
                    this.f15433d = nVar.getParserForType().b(this.f15432a, this.b);
                } else {
                    this.f15433d = nVar;
                }
            } catch (IOException unused) {
            }
        }
    }

    public int b() {
        return this.c ? this.f15433d.getSerializedSize() : this.f15432a.size();
    }

    public n c(n nVar) {
        a(nVar);
        return this.f15433d;
    }

    public n d(n nVar) {
        n nVar2 = this.f15433d;
        this.f15433d = nVar;
        this.f15432a = null;
        this.c = true;
        return nVar2;
    }
}
