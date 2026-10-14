package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;

/* JADX INFO: loaded from: classes6.dex */
public final class u {

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15618a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[ProtoBuf$MemberKind.values().length];
            iArr[ProtoBuf$MemberKind.DECLARATION.ordinal()] = 1;
            iArr[ProtoBuf$MemberKind.FAKE_OVERRIDE.ordinal()] = 2;
            iArr[ProtoBuf$MemberKind.DELEGATION.ordinal()] = 3;
            iArr[ProtoBuf$MemberKind.SYNTHESIZED.ordinal()] = 4;
            f15618a = iArr;
            int[] iArr2 = new int[CallableMemberDescriptor.Kind.values().length];
            iArr2[CallableMemberDescriptor.Kind.DECLARATION.ordinal()] = 1;
            iArr2[CallableMemberDescriptor.Kind.FAKE_OVERRIDE.ordinal()] = 2;
            iArr2[CallableMemberDescriptor.Kind.DELEGATION.ordinal()] = 3;
            iArr2[CallableMemberDescriptor.Kind.SYNTHESIZED.ordinal()] = 4;
            int[] iArr3 = new int[ProtoBuf$Visibility.values().length];
            iArr3[ProtoBuf$Visibility.INTERNAL.ordinal()] = 1;
            iArr3[ProtoBuf$Visibility.PRIVATE.ordinal()] = 2;
            iArr3[ProtoBuf$Visibility.PRIVATE_TO_THIS.ordinal()] = 3;
            iArr3[ProtoBuf$Visibility.PROTECTED.ordinal()] = 4;
            iArr3[ProtoBuf$Visibility.PUBLIC.ordinal()] = 5;
            iArr3[ProtoBuf$Visibility.LOCAL.ordinal()] = 6;
            b = iArr3;
        }
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.s a(t tVar, ProtoBuf$Visibility protoBuf$Visibility) {
        kotlin.jvm.internal.r.e(tVar, "<this>");
        switch (protoBuf$Visibility == null ? -1 : a.b[protoBuf$Visibility.ordinal()]) {
            case 1:
                kotlin.reflect.jvm.internal.impl.descriptors.s INTERNAL = kotlin.reflect.jvm.internal.impl.descriptors.r.f14974d;
                kotlin.jvm.internal.r.d(INTERNAL, "INTERNAL");
                return INTERNAL;
            case 2:
                kotlin.reflect.jvm.internal.impl.descriptors.s PRIVATE = kotlin.reflect.jvm.internal.impl.descriptors.r.f14973a;
                kotlin.jvm.internal.r.d(PRIVATE, "PRIVATE");
                return PRIVATE;
            case 3:
                kotlin.reflect.jvm.internal.impl.descriptors.s PRIVATE_TO_THIS = kotlin.reflect.jvm.internal.impl.descriptors.r.b;
                kotlin.jvm.internal.r.d(PRIVATE_TO_THIS, "PRIVATE_TO_THIS");
                return PRIVATE_TO_THIS;
            case 4:
                kotlin.reflect.jvm.internal.impl.descriptors.s PROTECTED = kotlin.reflect.jvm.internal.impl.descriptors.r.c;
                kotlin.jvm.internal.r.d(PROTECTED, "PROTECTED");
                return PROTECTED;
            case 5:
                kotlin.reflect.jvm.internal.impl.descriptors.s PUBLIC = kotlin.reflect.jvm.internal.impl.descriptors.r.f14975e;
                kotlin.jvm.internal.r.d(PUBLIC, "PUBLIC");
                return PUBLIC;
            case 6:
                kotlin.reflect.jvm.internal.impl.descriptors.s LOCAL = kotlin.reflect.jvm.internal.impl.descriptors.r.f14976f;
                kotlin.jvm.internal.r.d(LOCAL, "LOCAL");
                return LOCAL;
            default:
                kotlin.reflect.jvm.internal.impl.descriptors.s PRIVATE2 = kotlin.reflect.jvm.internal.impl.descriptors.r.f14973a;
                kotlin.jvm.internal.r.d(PRIVATE2, "PRIVATE");
                return PRIVATE2;
        }
    }

    public static final CallableMemberDescriptor.Kind b(t tVar, ProtoBuf$MemberKind protoBuf$MemberKind) {
        kotlin.jvm.internal.r.e(tVar, "<this>");
        int i = protoBuf$MemberKind == null ? -1 : a.f15618a[protoBuf$MemberKind.ordinal()];
        if (i == 1) {
            return CallableMemberDescriptor.Kind.DECLARATION;
        }
        if (i == 2) {
            return CallableMemberDescriptor.Kind.FAKE_OVERRIDE;
        }
        if (i != 3) {
            return i != 4 ? CallableMemberDescriptor.Kind.DECLARATION : CallableMemberDescriptor.Kind.SYNTHESIZED;
        }
        return CallableMemberDescriptor.Kind.DELEGATION;
    }
}
