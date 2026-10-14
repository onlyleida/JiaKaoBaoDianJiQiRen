package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import kotlin.jvm.internal.o;

/* JADX INFO: loaded from: classes6.dex */
public enum AnnotationUseSiteTarget {
    FIELD(null, 1, null),
    FILE(null, 1, null),
    PROPERTY(null, 1, null),
    PROPERTY_GETTER("get"),
    PROPERTY_SETTER("set"),
    RECEIVER(null, 1, null),
    CONSTRUCTOR_PARAMETER("param"),
    SETTER_PARAMETER("setparam"),
    PROPERTY_DELEGATE_FIELD("delegate");

    private final String renderName;

    AnnotationUseSiteTarget(String str) {
        this.renderName = str == null ? kotlin.reflect.jvm.internal.impl.util.j.a.f(name()) : str;
    }

    public final String getRenderName() {
        return this.renderName;
    }

    /* synthetic */ AnnotationUseSiteTarget(String str, int i, o oVar) {
        this((i & 1) != 0 ? null : str);
    }
}
