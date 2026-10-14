package kotlin.reflect.jvm.internal;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.s0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/KTypeProjection;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 5, 1})
final class KTypeImpl$arguments$2 extends Lambda implements Function0<List<? extends KTypeProjection>> {
    final /* synthetic */ Function0 $computeJavaType;
    final /* synthetic */ KTypeImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    KTypeImpl$arguments$2(KTypeImpl kTypeImpl, Function0 function0) {
        super(0);
        this.this$0 = kTypeImpl;
        this.$computeJavaType = function0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function0
    public final List<? extends KTypeProjection> invoke() {
        KTypeProjection kTypeProjectionD;
        List<s0> listH0 = this.this$0.getF14730d().H0();
        if (listH0.isEmpty()) {
            return u.j();
        }
        final Lazy lazyA = kotlin.i.a(LazyThreadSafetyMode.PUBLICATION, new Function0<List<? extends Type>>() { // from class: kotlin.reflect.jvm.internal.KTypeImpl$arguments$2$parameterizedTypeArguments$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends Type> invoke() {
                Type typeB = this.this$0.this$0.b();
                kotlin.jvm.internal.r.c(typeB);
                return ReflectClassUtilKt.c(typeB);
            }
        });
        ArrayList arrayList = new ArrayList(v.u(listH0, 10));
        final int i = 0;
        for (Object obj : listH0) {
            int i2 = i + 1;
            Function0<Type> function0 = null;
            Object[] objArr = 0;
            if (i < 0) {
                s.t();
                throw null;
            }
            s0 s0Var = (s0) obj;
            if (s0Var.a()) {
                kTypeProjectionD = KTypeProjection.f15779d.c();
            } else {
                a0 type = s0Var.getType();
                kotlin.jvm.internal.r.d(type, "typeProjection.type");
                if (this.$computeJavaType != null) {
                    final Object[] objArr2 = objArr == true ? 1 : 0;
                    function0 = new Function0<Type>() { // from class: kotlin.reflect.jvm.internal.KTypeImpl$arguments$2$$special$$inlined$mapIndexed$lambda$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Type invoke() {
                            Type typeB = this.this$0.b();
                            if (typeB instanceof Class) {
                                Class cls = (Class) typeB;
                                Class<?> componentType = cls.isArray() ? cls.getComponentType() : Object.class;
                                kotlin.jvm.internal.r.d(componentType, "if (javaType.isArray) ja…Type else Any::class.java");
                                return componentType;
                            }
                            if (typeB instanceof GenericArrayType) {
                                if (i == 0) {
                                    Type genericComponentType = ((GenericArrayType) typeB).getGenericComponentType();
                                    kotlin.jvm.internal.r.d(genericComponentType, "javaType.genericComponentType");
                                    return genericComponentType;
                                }
                                throw new KotlinReflectionInternalError("Array type has been queried for a non-0th argument: " + this.this$0);
                            }
                            if (!(typeB instanceof ParameterizedType)) {
                                throw new KotlinReflectionInternalError("Non-generic type has been queried for arguments: " + this.this$0);
                            }
                            Type type2 = (Type) ((List) lazyA.getValue()).get(i);
                            if (type2 instanceof WildcardType) {
                                WildcardType wildcardType = (WildcardType) type2;
                                Type[] lowerBounds = wildcardType.getLowerBounds();
                                kotlin.jvm.internal.r.d(lowerBounds, "argument.lowerBounds");
                                Type type3 = (Type) kotlin.collections.k.v(lowerBounds);
                                if (type3 != null) {
                                    type2 = type3;
                                } else {
                                    Type[] upperBounds = wildcardType.getUpperBounds();
                                    kotlin.jvm.internal.r.d(upperBounds, "argument.upperBounds");
                                    type2 = (Type) kotlin.collections.k.u(upperBounds);
                                }
                            }
                            kotlin.jvm.internal.r.d(type2, "if (argument !is Wildcar…ument.upperBounds.first()");
                            return type2;
                        }
                    };
                }
                KTypeImpl kTypeImpl = new KTypeImpl(type, function0);
                int i3 = g.f14771a[s0Var.c().ordinal()];
                if (i3 == 1) {
                    kTypeProjectionD = KTypeProjection.f15779d.d(kTypeImpl);
                } else if (i3 == 2) {
                    kTypeProjectionD = KTypeProjection.f15779d.a(kTypeImpl);
                } else {
                    if (i3 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    kTypeProjectionD = KTypeProjection.f15779d.b(kTypeImpl);
                }
            }
            arrayList.add(kTypeProjectionD);
            i = i2;
        }
        return arrayList;
    }
}
