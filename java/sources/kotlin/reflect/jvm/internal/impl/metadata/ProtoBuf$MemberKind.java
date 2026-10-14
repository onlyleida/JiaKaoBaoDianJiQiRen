package kotlin.reflect.jvm.internal.impl.metadata;

import kotlin.reflect.jvm.internal.impl.protobuf.h;

/* JADX INFO: loaded from: classes6.dex */
public enum ProtoBuf$MemberKind implements h.a {
    DECLARATION(0, 0),
    FAKE_OVERRIDE(1, 1),
    DELEGATION(2, 2),
    SYNTHESIZED(3, 3);

    private static h.b<ProtoBuf$MemberKind> internalValueMap = new h.b<ProtoBuf$MemberKind>() { // from class: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind.a
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$MemberKind a(int i) {
            return ProtoBuf$MemberKind.valueOf(i);
        }
    };
    private final int value;

    ProtoBuf$MemberKind(int i, int i2) {
        this.value = i2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
    public final int getNumber() {
        return this.value;
    }

    public static ProtoBuf$MemberKind valueOf(int i) {
        if (i == 0) {
            return DECLARATION;
        }
        if (i == 1) {
            return FAKE_OVERRIDE;
        }
        if (i == 2) {
            return DELEGATION;
        }
        if (i != 3) {
            return null;
        }
        return SYNTHESIZED;
    }
}
