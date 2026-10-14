package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import com.tencent.open.SocialConstants;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a0 f14872a;
    private final Map<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> b;
    private final o0 c;

    public d(a0 a0Var, Map<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> map, o0 o0Var) {
        if (a0Var == null) {
            b(0);
            throw null;
        }
        if (map == null) {
            b(1);
            throw null;
        }
        if (o0Var == null) {
            b(2);
            throw null;
        }
        this.f14872a = a0Var;
        this.b = map;
        this.c = o0Var;
    }

    private static /* synthetic */ void b(int i) {
        String str = (i == 3 || i == 4 || i == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 3 || i == 4 || i == 5) ? 2 : 3];
        if (i == 1) {
            objArr[0] = "valueArguments";
        } else if (i == 2) {
            objArr[0] = SocialConstants.PARAM_SOURCE;
        } else if (i == 3 || i == 4 || i == 5) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl";
        } else {
            objArr[0] = "annotationType";
        }
        if (i == 3) {
            objArr[1] = "getType";
        } else if (i == 4) {
            objArr[1] = "getAllValueArguments";
        } else if (i != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl";
        } else {
            objArr[1] = "getSource";
        }
        if (i != 3 && i != 4 && i != 5) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i != 3 && i != 4 && i != 5) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public Map<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> a() {
        Map<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> map = this.b;
        if (map != null) {
            return map;
        }
        b(4);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public kotlin.reflect.jvm.internal.impl.name.c e() {
        return c.a.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public a0 getType() {
        a0 a0Var = this.f14872a;
        if (a0Var != null) {
            return a0Var;
        }
        b(3);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public o0 o() {
        o0 o0Var = this.c;
        if (o0Var != null) {
            return o0Var;
        }
        b(5);
        throw null;
    }

    public String toString() {
        return DescriptorRenderer.b.r(this, null);
    }
}
