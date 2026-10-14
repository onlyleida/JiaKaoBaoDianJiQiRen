package kotlin.reflect.jvm.internal.impl.metadata;

import kotlin.reflect.jvm.internal.impl.protobuf.h;

/* JADX INFO: loaded from: classes6.dex */
public enum ProtoBuf$Modality implements h.a {
    FINAL(0, 0),
    OPEN(1, 1),
    ABSTRACT(2, 2),
    SEALED(3, 3);

    private static h.b<ProtoBuf$Modality> internalValueMap = new h.b<ProtoBuf$Modality>() { // from class: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality.a
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Modality a(int i) {
            return ProtoBuf$Modality.valueOf(i);
        }
    };
    private final int value;

    ProtoBuf$Modality(int i, int i2) {
        this.value = i2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
    public final int getNumber() {
        return this.value;
    }

    public static ProtoBuf$Modality valueOf(int i) {
        if (i == 0) {
            return FINAL;
        }
        if (i == 1) {
            return OPEN;
        }
        if (i == 2) {
            return ABSTRACT;
        }
        if (i != 3) {
            return null;
        }
        return SEALED;
    }
}
