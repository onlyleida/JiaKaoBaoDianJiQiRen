package kotlin.reflect.jvm.internal.impl.types;

import java.io.IOException;
import java.util.Iterator;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;

/* JADX INFO: loaded from: classes6.dex */
public abstract class f0 extends c1 implements kotlin.reflect.jvm.internal.impl.types.model.h, kotlin.reflect.jvm.internal.impl.types.model.i {
    public f0() {
        super(null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: P0, reason: merged with bridge method [inline-methods] */
    public abstract f0 M0(boolean z);

    public abstract f0 Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar);

    public String toString() throws IOException {
        StringBuilder sb = new StringBuilder();
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> it = getAnnotations().iterator();
        while (it.hasNext()) {
            kotlin.text.l.g(sb, "[", DescriptorRenderer.s(DescriptorRenderer.c, it.next(), null, 2, null), "] ");
        }
        sb.append(I0());
        if (!H0().isEmpty()) {
            kotlin.collections.s.k0(H0(), sb, ", ", "<", ">", 0, null, null, 112, null);
        }
        if (J0()) {
            sb.append("?");
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
