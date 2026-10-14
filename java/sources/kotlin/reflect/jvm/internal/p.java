package kotlin.reflect.jvm.internal;

import kotlin.Metadata;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {1, 5, 1})
public final /* synthetic */ class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f15760a;

    static {
        int[] iArr = new int[PrimitiveType.values().length];
        f15760a = iArr;
        iArr[PrimitiveType.BOOLEAN.ordinal()] = 1;
        iArr[PrimitiveType.CHAR.ordinal()] = 2;
        iArr[PrimitiveType.BYTE.ordinal()] = 3;
        iArr[PrimitiveType.SHORT.ordinal()] = 4;
        iArr[PrimitiveType.INT.ordinal()] = 5;
        iArr[PrimitiveType.FLOAT.ordinal()] = 6;
        iArr[PrimitiveType.LONG.ordinal()] = 7;
        iArr[PrimitiveType.DOUBLE.ordinal()] = 8;
    }
}
