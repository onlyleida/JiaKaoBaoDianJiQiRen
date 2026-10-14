package kotlin.reflect;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {1, 5, 1})
public final /* synthetic */ class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f15783a;
    public static final /* synthetic */ int[] b;

    static {
        int[] iArr = new int[KVariance.values().length];
        f15783a = iArr;
        KVariance kVariance = KVariance.IN;
        iArr[kVariance.ordinal()] = 1;
        KVariance kVariance2 = KVariance.INVARIANT;
        iArr[kVariance2.ordinal()] = 2;
        KVariance kVariance3 = KVariance.OUT;
        iArr[kVariance3.ordinal()] = 3;
        int[] iArr2 = new int[KVariance.values().length];
        b = iArr2;
        iArr2[kVariance2.ordinal()] = 1;
        iArr2[kVariance.ordinal()] = 2;
        iArr2[kVariance3.ordinal()] = 3;
    }
}
