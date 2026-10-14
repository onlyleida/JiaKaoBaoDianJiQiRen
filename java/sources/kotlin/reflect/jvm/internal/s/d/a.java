package kotlin.reflect.jvm.internal.s.d;

import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.f;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f15773a;
    private final GeneratedMessageLite.e<ProtoBuf$Constructor, List<ProtoBuf$Annotation>> b;
    private final GeneratedMessageLite.e<ProtoBuf$Class, List<ProtoBuf$Annotation>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final GeneratedMessageLite.e<ProtoBuf$Function, List<ProtoBuf$Annotation>> f15774d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final GeneratedMessageLite.e<ProtoBuf$Property, List<ProtoBuf$Annotation>> f15775e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final GeneratedMessageLite.e<ProtoBuf$Property, List<ProtoBuf$Annotation>> f15776f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final GeneratedMessageLite.e<ProtoBuf$Property, List<ProtoBuf$Annotation>> f15777g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final GeneratedMessageLite.e<ProtoBuf$EnumEntry, List<ProtoBuf$Annotation>> f15778h;
    private final GeneratedMessageLite.e<ProtoBuf$Property, ProtoBuf$Annotation.Argument.Value> i;
    private final GeneratedMessageLite.e<ProtoBuf$ValueParameter, List<ProtoBuf$Annotation>> j;
    private final GeneratedMessageLite.e<ProtoBuf$Type, List<ProtoBuf$Annotation>> k;
    private final GeneratedMessageLite.e<ProtoBuf$TypeParameter, List<ProtoBuf$Annotation>> l;

    public a(f extensionRegistry, GeneratedMessageLite.e<ProtoBuf$Package, Integer> packageFqName, GeneratedMessageLite.e<ProtoBuf$Constructor, List<ProtoBuf$Annotation>> constructorAnnotation, GeneratedMessageLite.e<ProtoBuf$Class, List<ProtoBuf$Annotation>> classAnnotation, GeneratedMessageLite.e<ProtoBuf$Function, List<ProtoBuf$Annotation>> functionAnnotation, GeneratedMessageLite.e<ProtoBuf$Property, List<ProtoBuf$Annotation>> propertyAnnotation, GeneratedMessageLite.e<ProtoBuf$Property, List<ProtoBuf$Annotation>> propertyGetterAnnotation, GeneratedMessageLite.e<ProtoBuf$Property, List<ProtoBuf$Annotation>> propertySetterAnnotation, GeneratedMessageLite.e<ProtoBuf$EnumEntry, List<ProtoBuf$Annotation>> enumEntryAnnotation, GeneratedMessageLite.e<ProtoBuf$Property, ProtoBuf$Annotation.Argument.Value> compileTimeValue, GeneratedMessageLite.e<ProtoBuf$ValueParameter, List<ProtoBuf$Annotation>> parameterAnnotation, GeneratedMessageLite.e<ProtoBuf$Type, List<ProtoBuf$Annotation>> typeAnnotation, GeneratedMessageLite.e<ProtoBuf$TypeParameter, List<ProtoBuf$Annotation>> typeParameterAnnotation) {
        r.e(extensionRegistry, "extensionRegistry");
        r.e(packageFqName, "packageFqName");
        r.e(constructorAnnotation, "constructorAnnotation");
        r.e(classAnnotation, "classAnnotation");
        r.e(functionAnnotation, "functionAnnotation");
        r.e(propertyAnnotation, "propertyAnnotation");
        r.e(propertyGetterAnnotation, "propertyGetterAnnotation");
        r.e(propertySetterAnnotation, "propertySetterAnnotation");
        r.e(enumEntryAnnotation, "enumEntryAnnotation");
        r.e(compileTimeValue, "compileTimeValue");
        r.e(parameterAnnotation, "parameterAnnotation");
        r.e(typeAnnotation, "typeAnnotation");
        r.e(typeParameterAnnotation, "typeParameterAnnotation");
        this.f15773a = extensionRegistry;
        this.b = constructorAnnotation;
        this.c = classAnnotation;
        this.f15774d = functionAnnotation;
        this.f15775e = propertyAnnotation;
        this.f15776f = propertyGetterAnnotation;
        this.f15777g = propertySetterAnnotation;
        this.f15778h = enumEntryAnnotation;
        this.i = compileTimeValue;
        this.j = parameterAnnotation;
        this.k = typeAnnotation;
        this.l = typeParameterAnnotation;
    }

    public final GeneratedMessageLite.e<ProtoBuf$Class, List<ProtoBuf$Annotation>> a() {
        return this.c;
    }

    public final GeneratedMessageLite.e<ProtoBuf$Property, ProtoBuf$Annotation.Argument.Value> b() {
        return this.i;
    }

    public final GeneratedMessageLite.e<ProtoBuf$Constructor, List<ProtoBuf$Annotation>> c() {
        return this.b;
    }

    public final GeneratedMessageLite.e<ProtoBuf$EnumEntry, List<ProtoBuf$Annotation>> d() {
        return this.f15778h;
    }

    public final f e() {
        return this.f15773a;
    }

    public final GeneratedMessageLite.e<ProtoBuf$Function, List<ProtoBuf$Annotation>> f() {
        return this.f15774d;
    }

    public final GeneratedMessageLite.e<ProtoBuf$ValueParameter, List<ProtoBuf$Annotation>> g() {
        return this.j;
    }

    public final GeneratedMessageLite.e<ProtoBuf$Property, List<ProtoBuf$Annotation>> h() {
        return this.f15775e;
    }

    public final GeneratedMessageLite.e<ProtoBuf$Property, List<ProtoBuf$Annotation>> i() {
        return this.f15776f;
    }

    public final GeneratedMessageLite.e<ProtoBuf$Property, List<ProtoBuf$Annotation>> j() {
        return this.f15777g;
    }

    public final GeneratedMessageLite.e<ProtoBuf$Type, List<ProtoBuf$Annotation>> k() {
        return this.k;
    }

    public final GeneratedMessageLite.e<ProtoBuf$TypeParameter, List<ProtoBuf$Annotation>> l() {
        return this.l;
    }
}
