package kotlin.reflect.jvm.internal;

import kotlin.Metadata;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {1, 5, 1})
public final /* synthetic */ class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f14771a;

    static {
        int[] iArr = new int[Variance.values().length];
        f14771a = iArr;
        iArr[Variance.INVARIANT.ordinal()] = 1;
        iArr[Variance.IN_VARIANCE.ordinal()] = 2;
        iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
    }
}
