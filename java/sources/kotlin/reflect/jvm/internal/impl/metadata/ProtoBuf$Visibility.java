package kotlin.reflect.jvm.internal.impl.metadata;

import kotlin.reflect.jvm.internal.impl.protobuf.h;

/* JADX INFO: loaded from: classes6.dex */
public enum ProtoBuf$Visibility implements h.a {
    INTERNAL(0, 0),
    PRIVATE(1, 1),
    PROTECTED(2, 2),
    PUBLIC(3, 3),
    PRIVATE_TO_THIS(4, 4),
    LOCAL(5, 5);

    private static h.b<ProtoBuf$Visibility> internalValueMap = new h.b<ProtoBuf$Visibility>() { // from class: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility.a
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Visibility a(int i) {
            return ProtoBuf$Visibility.valueOf(i);
        }
    };
    private final int value;

    ProtoBuf$Visibility(int i, int i2) {
        this.value = i2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
    public final int getNumber() {
        return this.value;
    }

    public static ProtoBuf$Visibility valueOf(int i) {
        if (i == 0) {
            return INTERNAL;
        }
        if (i == 1) {
            return PRIVATE;
        }
        if (i == 2) {
            return PROTECTED;
        }
        if (i == 3) {
            return PUBLIC;
        }
        if (i == 4) {
            return PRIVATE_TO_THIS;
        }
        if (i != 5) {
            return null;
        }
        return LOCAL;
    }
}
