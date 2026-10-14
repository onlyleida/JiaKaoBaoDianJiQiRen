package kotlin.reflect.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.q0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\b\b\u0000\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KTypeImpl;", "kotlin.jvm.PlatformType", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke"}, k = 3, mv = {1, 5, 1})
final class KClassImpl$Data$supertypes$2 extends Lambda implements Function0<List<? extends KTypeImpl>> {
    final /* synthetic */ KClassImpl.Data this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    KClassImpl$Data$supertypes$2(KClassImpl.Data data) {
        super(0);
        this.this$0 = data;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends KTypeImpl> invoke() {
        ClassKind classKindG;
        q0 q0VarI = this.this$0.k().i();
        kotlin.jvm.internal.r.d(q0VarI, "descriptor.typeConstructor");
        Collection<a0> collectionA = q0VarI.a();
        kotlin.jvm.internal.r.d(collectionA, "descriptor.typeConstructor.supertypes");
        ArrayList arrayList = new ArrayList(collectionA.size());
        for (final a0 kotlinType : collectionA) {
            kotlin.jvm.internal.r.d(kotlinType, "kotlinType");
            arrayList.add(new KTypeImpl(kotlinType, new Function0<Type>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$supertypes$2$$special$$inlined$mapTo$lambda$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Type invoke() {
                    kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = kotlinType.I0().u();
                    if (!(fVarU instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
                        throw new KotlinReflectionInternalError("Supertype not a class: " + fVarU);
                    }
                    Class<?> clsP = q.p((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarU);
                    if (clsP == null) {
                        throw new KotlinReflectionInternalError("Unsupported superclass of " + this.this$0 + ": " + fVarU);
                    }
                    if (kotlin.jvm.internal.r.a(KClassImpl.this.d().getSuperclass(), clsP)) {
                        Type genericSuperclass = KClassImpl.this.d().getGenericSuperclass();
                        kotlin.jvm.internal.r.d(genericSuperclass, "jClass.genericSuperclass");
                        return genericSuperclass;
                    }
                    Class<?>[] interfaces = KClassImpl.this.d().getInterfaces();
                    kotlin.jvm.internal.r.d(interfaces, "jClass.interfaces");
                    int iD = ArraysKt___ArraysKt.D(interfaces, clsP);
                    if (iD >= 0) {
                        Type type = KClassImpl.this.d().getGenericInterfaces()[iD];
                        kotlin.jvm.internal.r.d(type, "jClass.genericInterfaces[index]");
                        return type;
                    }
                    throw new KotlinReflectionInternalError("No superclass of " + this.this$0 + " in Java reflection for " + fVarU);
                }
            }));
        }
        if (!kotlin.reflect.jvm.internal.impl.builtins.g.s0(this.this$0.k())) {
            boolean z = false;
            if (arrayList.isEmpty()) {
                z = true;
                break;
            }
            Iterator it = arrayList.iterator();
            do {
                if (!it.hasNext()) {
                    z = true;
                    break;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.d dVarE = kotlin.reflect.jvm.internal.impl.resolve.c.e(((KTypeImpl) it.next()).getF14730d());
                kotlin.jvm.internal.r.d(dVarE, "DescriptorUtils.getClassDescriptorForType(it.type)");
                classKindG = dVarE.g();
                kotlin.jvm.internal.r.d(classKindG, "DescriptorUtils.getClass…ptorForType(it.type).kind");
            } while (classKindG == ClassKind.INTERFACE || classKindG == ClassKind.ANNOTATION_CLASS);
            if (z) {
                f0 f0VarI = DescriptorUtilsKt.g(this.this$0.k()).i();
                kotlin.jvm.internal.r.d(f0VarI, "descriptor.builtIns.anyType");
                arrayList.add(new KTypeImpl(f0VarI, new Function0<Type>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$supertypes$2.3
                    @Override // kotlin.jvm.functions.Function0
                    public final Type invoke() {
                        return Object.class;
                    }
                }));
            }
        }
        return kotlin.reflect.jvm.internal.impl.utils.a.c(arrayList);
    }
}
