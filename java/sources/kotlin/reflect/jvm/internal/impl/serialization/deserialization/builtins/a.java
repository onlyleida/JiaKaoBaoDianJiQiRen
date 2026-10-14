package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

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
import kotlin.text.t;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends kotlin.reflect.jvm.internal.s.d.a {
    public static final a m = new a();

    /* JADX WARN: Illegal instructions before constructor call */
    private a() {
        f fVarD = f.d();
        kotlin.reflect.jvm.internal.impl.metadata.b.b.a(fVarD);
        v vVar = v.f15822a;
        r.d(fVarD, "newInstance().apply(Buil…f::registerAllExtensions)");
        GeneratedMessageLite.e<ProtoBuf$Package, Integer> packageFqName = kotlin.reflect.jvm.internal.impl.metadata.b.b.f15324a;
        r.d(packageFqName, "packageFqName");
        GeneratedMessageLite.e<ProtoBuf$Constructor, List<ProtoBuf$Annotation>> constructorAnnotation = kotlin.reflect.jvm.internal.impl.metadata.b.b.c;
        r.d(constructorAnnotation, "constructorAnnotation");
        GeneratedMessageLite.e<ProtoBuf$Class, List<ProtoBuf$Annotation>> classAnnotation = kotlin.reflect.jvm.internal.impl.metadata.b.b.b;
        r.d(classAnnotation, "classAnnotation");
        GeneratedMessageLite.e<ProtoBuf$Function, List<ProtoBuf$Annotation>> functionAnnotation = kotlin.reflect.jvm.internal.impl.metadata.b.b.f15325d;
        r.d(functionAnnotation, "functionAnnotation");
        GeneratedMessageLite.e<ProtoBuf$Property, List<ProtoBuf$Annotation>> propertyAnnotation = kotlin.reflect.jvm.internal.impl.metadata.b.b.f15326e;
        r.d(propertyAnnotation, "propertyAnnotation");
        GeneratedMessageLite.e<ProtoBuf$Property, List<ProtoBuf$Annotation>> propertyGetterAnnotation = kotlin.reflect.jvm.internal.impl.metadata.b.b.f15327f;
        r.d(propertyGetterAnnotation, "propertyGetterAnnotation");
        GeneratedMessageLite.e<ProtoBuf$Property, List<ProtoBuf$Annotation>> propertySetterAnnotation = kotlin.reflect.jvm.internal.impl.metadata.b.b.f15328g;
        r.d(propertySetterAnnotation, "propertySetterAnnotation");
        GeneratedMessageLite.e<ProtoBuf$EnumEntry, List<ProtoBuf$Annotation>> enumEntryAnnotation = kotlin.reflect.jvm.internal.impl.metadata.b.b.i;
        r.d(enumEntryAnnotation, "enumEntryAnnotation");
        GeneratedMessageLite.e<ProtoBuf$Property, ProtoBuf$Annotation.Argument.Value> compileTimeValue = kotlin.reflect.jvm.internal.impl.metadata.b.b.f15329h;
        r.d(compileTimeValue, "compileTimeValue");
        GeneratedMessageLite.e<ProtoBuf$ValueParameter, List<ProtoBuf$Annotation>> parameterAnnotation = kotlin.reflect.jvm.internal.impl.metadata.b.b.j;
        r.d(parameterAnnotation, "parameterAnnotation");
        GeneratedMessageLite.e<ProtoBuf$Type, List<ProtoBuf$Annotation>> typeAnnotation = kotlin.reflect.jvm.internal.impl.metadata.b.b.k;
        r.d(typeAnnotation, "typeAnnotation");
        GeneratedMessageLite.e<ProtoBuf$TypeParameter, List<ProtoBuf$Annotation>> typeParameterAnnotation = kotlin.reflect.jvm.internal.impl.metadata.b.b.l;
        r.d(typeParameterAnnotation, "typeParameterAnnotation");
        super(fVarD, packageFqName, constructorAnnotation, classAnnotation, functionAnnotation, propertyAnnotation, propertyGetterAnnotation, propertySetterAnnotation, enumEntryAnnotation, compileTimeValue, parameterAnnotation, typeAnnotation, typeParameterAnnotation);
    }

    private final String o(kotlin.reflect.jvm.internal.impl.name.c cVar) {
        if (cVar.d()) {
            return "default-package";
        }
        String strB = cVar.g().b();
        r.d(strB, "fqName.shortName().asString()");
        return strB;
    }

    public final String m(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        r.e(fqName, "fqName");
        return r.m(o(fqName), ".kotlin_builtins");
    }

    public final String n(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        r.e(fqName, "fqName");
        StringBuilder sb = new StringBuilder();
        String strB = fqName.b();
        r.d(strB, "fqName.asString()");
        sb.append(t.w(strB, '.', '/', false, 4, null));
        sb.append('/');
        sb.append(m(fqName));
        return sb.toString();
    }
}
