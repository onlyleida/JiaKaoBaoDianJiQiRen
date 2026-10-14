package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a0 f15055a;
    private final boolean b;

    public h(a0 type, boolean z) {
        r.e(type, "type");
        this.f15055a = type;
        this.b = z;
    }

    public final boolean a() {
        return this.b;
    }

    public final a0 b() {
        return this.f15055a;
    }
}
