package kotlin.reflect.jvm.internal.impl.load.java.components;

import com.mobile.auth.gatewayauth.Constant;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.f;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.l;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.components.a$a, reason: collision with other inner class name */
    static class C0329a extends f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ l f15042a;
        final /* synthetic */ Set b;
        final /* synthetic */ boolean c;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.components.a$a$a, reason: collision with other inner class name */
        class C0330a implements Function1<CallableMemberDescriptor, v> {
            C0330a() {
            }

            private static /* synthetic */ void a(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "descriptor", "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1", "invoke"));
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public v invoke(CallableMemberDescriptor callableMemberDescriptor) {
                if (callableMemberDescriptor != null) {
                    C0329a.this.f15042a.a(callableMemberDescriptor);
                    return v.f15822a;
                }
                a(0);
                throw null;
            }
        }

        C0329a(l lVar, Set set, boolean z) {
            this.f15042a = lVar;
            this.b = set;
            this.c = z;
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "fromSuper";
            } else if (i == 2) {
                objArr[0] = "fromCurrent";
            } else if (i == 3) {
                objArr[0] = "member";
            } else if (i != 4) {
                objArr[0] = "fakeOverride";
            } else {
                objArr[0] = "overridden";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1";
            if (i == 1 || i == 2) {
                objArr[2] = "conflict";
            } else if (i == 3 || i == 4) {
                objArr[2] = "setOverriddenDescriptors";
            } else {
                objArr[2] = "addFakeOverride";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.g
        public void a(CallableMemberDescriptor callableMemberDescriptor) {
            if (callableMemberDescriptor == null) {
                f(0);
                throw null;
            }
            OverridingUtil.L(callableMemberDescriptor, new C0330a());
            this.b.add(callableMemberDescriptor);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.g
        public void d(CallableMemberDescriptor callableMemberDescriptor, Collection<? extends CallableMemberDescriptor> collection) {
            if (callableMemberDescriptor == null) {
                f(3);
                throw null;
            }
            if (collection == null) {
                f(4);
                throw null;
            }
            if (!this.c || callableMemberDescriptor.g() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                super.d(callableMemberDescriptor, collection);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.f
        public void e(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2) {
            if (callableMemberDescriptor == null) {
                f(1);
                throw null;
            }
            if (callableMemberDescriptor2 != null) {
                return;
            }
            f(2);
            throw null;
        }
    }

    private static /* synthetic */ void a(int i) {
        String str = i != 18 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 18 ? 3 : 2];
        switch (i) {
            case 1:
            case 7:
            case 13:
                objArr[0] = "membersFromSupertypes";
                break;
            case 2:
            case 8:
            case 14:
                objArr[0] = "membersFromCurrent";
                break;
            case 3:
            case 9:
            case 15:
                objArr[0] = "classDescriptor";
                break;
            case 4:
            case 10:
            case 16:
                objArr[0] = "errorReporter";
                break;
            case 5:
            case 11:
            case 17:
                objArr[0] = "overridingUtil";
                break;
            case 6:
            case 12:
            case 19:
            default:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 18:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils";
                break;
            case 20:
                objArr[0] = "annotationClass";
                break;
        }
        if (i != 18) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils";
        } else {
            objArr[1] = "resolveOverrides";
        }
        switch (i) {
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[2] = "resolveOverridesForStaticMembers";
                break;
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
                objArr[2] = "resolveOverrides";
                break;
            case 18:
                break;
            case 19:
            case 20:
                objArr[2] = "getAnnotationParameterByName";
                break;
            default:
                objArr[2] = "resolveOverridesForNonStaticMembers";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i == 18) {
            throw new IllegalStateException(str2);
        }
    }

    public static v0 b(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (fVar == null) {
            a(19);
            throw null;
        }
        if (dVar == null) {
            a(20);
            throw null;
        }
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> collectionJ = dVar.j();
        if (collectionJ.size() != 1) {
            return null;
        }
        for (v0 v0Var : collectionJ.iterator().next().f()) {
            if (v0Var.getName().equals(fVar)) {
                return v0Var;
            }
        }
        return null;
    }

    private static <D extends CallableMemberDescriptor> Collection<D> c(kotlin.reflect.jvm.internal.impl.name.f fVar, Collection<D> collection, Collection<D> collection2, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, l lVar, OverridingUtil overridingUtil, boolean z) {
        if (fVar == null) {
            a(12);
            throw null;
        }
        if (collection == null) {
            a(13);
            throw null;
        }
        if (collection2 == null) {
            a(14);
            throw null;
        }
        if (dVar == null) {
            a(15);
            throw null;
        }
        if (lVar == null) {
            a(16);
            throw null;
        }
        if (overridingUtil == null) {
            a(17);
            throw null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        overridingUtil.w(fVar, collection, collection2, dVar, new C0329a(lVar, linkedHashSet, z));
        return linkedHashSet;
    }

    public static <D extends CallableMemberDescriptor> Collection<D> d(kotlin.reflect.jvm.internal.impl.name.f fVar, Collection<D> collection, Collection<D> collection2, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, l lVar, OverridingUtil overridingUtil) {
        if (fVar == null) {
            a(0);
            throw null;
        }
        if (collection == null) {
            a(1);
            throw null;
        }
        if (collection2 == null) {
            a(2);
            throw null;
        }
        if (dVar == null) {
            a(3);
            throw null;
        }
        if (lVar == null) {
            a(4);
            throw null;
        }
        if (overridingUtil != null) {
            return c(fVar, collection, collection2, dVar, lVar, overridingUtil, false);
        }
        a(5);
        throw null;
    }

    public static <D extends CallableMemberDescriptor> Collection<D> e(kotlin.reflect.jvm.internal.impl.name.f fVar, Collection<D> collection, Collection<D> collection2, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, l lVar, OverridingUtil overridingUtil) {
        if (fVar == null) {
            a(6);
            throw null;
        }
        if (collection == null) {
            a(7);
            throw null;
        }
        if (collection2 == null) {
            a(8);
            throw null;
        }
        if (dVar == null) {
            a(9);
            throw null;
        }
        if (lVar == null) {
            a(10);
            throw null;
        }
        if (overridingUtil != null) {
            return c(fVar, collection, collection2, dVar, lVar, overridingUtil, true);
        }
        a(11);
        throw null;
    }
}
