package kotlin.reflect.jvm.internal;

import kotlin.Metadata;
import kotlin.reflect.KParameter;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {1, 5, 1})
public final /* synthetic */ class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f15758a;

    static {
        int[] iArr = new int[KParameter.Kind.values().length];
        f15758a = iArr;
        iArr[KParameter.Kind.EXTENSION_RECEIVER.ordinal()] = 1;
        iArr[KParameter.Kind.INSTANCE.ordinal()] = 2;
        iArr[KParameter.Kind.VALUE.ordinal()] = 3;
    }
}
