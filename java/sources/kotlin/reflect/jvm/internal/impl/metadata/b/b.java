package kotlin.reflect.jvm.internal.impl.metadata.b;

import java.util.List;
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
import kotlin.reflect.jvm.internal.impl.protobuf.WireFormat;
import kotlin.reflect.jvm.internal.impl.protobuf.f;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GeneratedMessageLite.e<ProtoBuf$Package, Integer> f15324a = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Package.getDefaultInstance(), 0, null, null, 151, WireFormat.FieldType.INT32, Integer.class);
    public static final GeneratedMessageLite.e<ProtoBuf$Class, List<ProtoBuf$Annotation>> b;
    public static final GeneratedMessageLite.e<ProtoBuf$Constructor, List<ProtoBuf$Annotation>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final GeneratedMessageLite.e<ProtoBuf$Function, List<ProtoBuf$Annotation>> f15325d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final GeneratedMessageLite.e<ProtoBuf$Property, List<ProtoBuf$Annotation>> f15326e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final GeneratedMessageLite.e<ProtoBuf$Property, List<ProtoBuf$Annotation>> f15327f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final GeneratedMessageLite.e<ProtoBuf$Property, List<ProtoBuf$Annotation>> f15328g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final GeneratedMessageLite.e<ProtoBuf$Property, ProtoBuf$Annotation.Argument.Value> f15329h;
    public static final GeneratedMessageLite.e<ProtoBuf$EnumEntry, List<ProtoBuf$Annotation>> i;
    public static final GeneratedMessageLite.e<ProtoBuf$ValueParameter, List<ProtoBuf$Annotation>> j;
    public static final GeneratedMessageLite.e<ProtoBuf$Type, List<ProtoBuf$Annotation>> k;
    public static final GeneratedMessageLite.e<ProtoBuf$TypeParameter, List<ProtoBuf$Annotation>> l;

    static {
        ProtoBuf$Class defaultInstance = ProtoBuf$Class.getDefaultInstance();
        ProtoBuf$Annotation defaultInstance2 = ProtoBuf$Annotation.getDefaultInstance();
        WireFormat.FieldType fieldType = WireFormat.FieldType.MESSAGE;
        b = GeneratedMessageLite.newRepeatedGeneratedExtension(defaultInstance, defaultInstance2, null, 150, fieldType, false, ProtoBuf$Annotation.class);
        c = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Constructor.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 150, fieldType, false, ProtoBuf$Annotation.class);
        f15325d = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Function.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 150, fieldType, false, ProtoBuf$Annotation.class);
        f15326e = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Property.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 150, fieldType, false, ProtoBuf$Annotation.class);
        f15327f = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Property.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 152, fieldType, false, ProtoBuf$Annotation.class);
        f15328g = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Property.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 153, fieldType, false, ProtoBuf$Annotation.class);
        f15329h = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Property.getDefaultInstance(), ProtoBuf$Annotation.Argument.Value.getDefaultInstance(), ProtoBuf$Annotation.Argument.Value.getDefaultInstance(), null, 151, fieldType, ProtoBuf$Annotation.Argument.Value.class);
        i = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$EnumEntry.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 150, fieldType, false, ProtoBuf$Annotation.class);
        j = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$ValueParameter.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 150, fieldType, false, ProtoBuf$Annotation.class);
        k = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Type.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 150, fieldType, false, ProtoBuf$Annotation.class);
        l = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$TypeParameter.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 150, fieldType, false, ProtoBuf$Annotation.class);
    }

    public static void a(f fVar) {
        fVar.a(f15324a);
        fVar.a(b);
        fVar.a(c);
        fVar.a(f15325d);
        fVar.a(f15326e);
        fVar.a(f15327f);
        fVar.a(f15328g);
        fVar.a(f15329h);
        fVar.a(i);
        fVar.a(j);
        fVar.a(k);
        fVar.a(l);
    }
}
