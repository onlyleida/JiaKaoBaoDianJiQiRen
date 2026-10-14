package kotlin.reflect.jvm.internal;

import com.tencent.open.SocialConstants;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014J\u001a\u0010\u0015\u001a\u00020\u0016*\u00060\u0017j\u0002`\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u0018\u0010\u001b\u001a\u00020\u0016*\u00060\u0017j\u0002`\u00182\u0006\u0010\u001c\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;", "", "()V", "renderer", "Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;", "renderCallable", "", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;", "renderFunction", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "renderLambda", "invoke", "renderParameter", "parameter", "Lkotlin/reflect/jvm/internal/KParameterImpl;", "renderProperty", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "renderType", "type", "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;", "appendReceiverType", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", SocialConstants.PARAM_RECEIVER, "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;", "appendReceivers", "callable", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public final class ReflectionObjectRenderer {
    public static final ReflectionObjectRenderer b = new ReflectionObjectRenderer();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final DescriptorRenderer f14733a = DescriptorRenderer.b;

    private ReflectionObjectRenderer() {
    }

    private final void a(StringBuilder sb, m0 m0Var) {
        if (m0Var != null) {
            a0 type = m0Var.getType();
            kotlin.jvm.internal.r.d(type, "receiver.type");
            sb.append(h(type));
            sb.append(".");
        }
    }

    private final void b(StringBuilder sb, kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        m0 m0VarI = q.i(aVar);
        m0 m0VarO = aVar.O();
        a(sb, m0VarI);
        boolean z = (m0VarI == null || m0VarO == null) ? false : true;
        if (z) {
            sb.append("(");
        }
        a(sb, m0VarO);
        if (z) {
            sb.append(")");
        }
    }

    private final String c(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        if (aVar instanceof j0) {
            return g((j0) aVar);
        }
        if (aVar instanceof u) {
            return d((u) aVar);
        }
        throw new IllegalStateException(("Illegal callable: " + aVar).toString());
    }

    public final String d(u descriptor) throws IOException {
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        StringBuilder sb = new StringBuilder();
        sb.append("fun ");
        ReflectionObjectRenderer reflectionObjectRenderer = b;
        reflectionObjectRenderer.b(sb, descriptor);
        DescriptorRenderer descriptorRenderer = f14733a;
        kotlin.reflect.jvm.internal.impl.name.f name = descriptor.getName();
        kotlin.jvm.internal.r.d(name, "descriptor.name");
        sb.append(descriptorRenderer.v(name, true));
        List<v0> listF = descriptor.f();
        kotlin.jvm.internal.r.d(listF, "descriptor.valueParameters");
        s.k0(listF, sb, ", ", "(", ")", 0, null, new Function1<v0, CharSequence>() { // from class: kotlin.reflect.jvm.internal.ReflectionObjectRenderer$renderFunction$1$1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(v0 it) {
                ReflectionObjectRenderer reflectionObjectRenderer2 = ReflectionObjectRenderer.b;
                kotlin.jvm.internal.r.d(it, "it");
                a0 type = it.getType();
                kotlin.jvm.internal.r.d(type, "it.type");
                return reflectionObjectRenderer2.h(type);
            }
        }, 48, null);
        sb.append(": ");
        a0 returnType = descriptor.getReturnType();
        kotlin.jvm.internal.r.c(returnType);
        kotlin.jvm.internal.r.d(returnType, "descriptor.returnType!!");
        sb.append(reflectionObjectRenderer.h(returnType));
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String e(u invoke) throws IOException {
        kotlin.jvm.internal.r.e(invoke, "invoke");
        StringBuilder sb = new StringBuilder();
        ReflectionObjectRenderer reflectionObjectRenderer = b;
        reflectionObjectRenderer.b(sb, invoke);
        List<v0> listF = invoke.f();
        kotlin.jvm.internal.r.d(listF, "invoke.valueParameters");
        s.k0(listF, sb, ", ", "(", ")", 0, null, new Function1<v0, CharSequence>() { // from class: kotlin.reflect.jvm.internal.ReflectionObjectRenderer$renderLambda$1$1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(v0 it) {
                ReflectionObjectRenderer reflectionObjectRenderer2 = ReflectionObjectRenderer.b;
                kotlin.jvm.internal.r.d(it, "it");
                a0 type = it.getType();
                kotlin.jvm.internal.r.d(type, "it.type");
                return reflectionObjectRenderer2.h(type);
            }
        }, 48, null);
        sb.append(" -> ");
        a0 returnType = invoke.getReturnType();
        kotlin.jvm.internal.r.c(returnType);
        kotlin.jvm.internal.r.d(returnType, "invoke.returnType!!");
        sb.append(reflectionObjectRenderer.h(returnType));
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String f(KParameterImpl parameter) {
        kotlin.jvm.internal.r.e(parameter, "parameter");
        StringBuilder sb = new StringBuilder();
        int i = m.f15758a[parameter.getF14714d().ordinal()];
        if (i == 1) {
            sb.append("extension receiver parameter");
        } else if (i == 2) {
            sb.append("instance parameter");
        } else if (i == 3) {
            sb.append("parameter #" + parameter.getC() + ' ' + parameter.getName());
        }
        sb.append(" of ");
        sb.append(b.c(parameter.f().w()));
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String g(j0 descriptor) {
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        StringBuilder sb = new StringBuilder();
        sb.append(descriptor.M() ? "var " : "val ");
        ReflectionObjectRenderer reflectionObjectRenderer = b;
        reflectionObjectRenderer.b(sb, descriptor);
        DescriptorRenderer descriptorRenderer = f14733a;
        kotlin.reflect.jvm.internal.impl.name.f name = descriptor.getName();
        kotlin.jvm.internal.r.d(name, "descriptor.name");
        sb.append(descriptorRenderer.v(name, true));
        sb.append(": ");
        a0 type = descriptor.getType();
        kotlin.jvm.internal.r.d(type, "descriptor.type");
        sb.append(reflectionObjectRenderer.h(type));
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String h(a0 type) {
        kotlin.jvm.internal.r.e(type, "type");
        return f14733a.w(type);
    }
}
