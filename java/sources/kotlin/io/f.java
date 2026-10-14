package kotlin.io;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {1, 5, 1})
public final /* synthetic */ class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f14646a;

    static {
        int[] iArr = new int[FileWalkDirection.values().length];
        f14646a = iArr;
        iArr[FileWalkDirection.TOP_DOWN.ordinal()] = 1;
        iArr[FileWalkDirection.BOTTOM_UP.ordinal()] = 2;
    }
}
