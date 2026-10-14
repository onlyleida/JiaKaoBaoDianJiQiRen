package kotlin.reflect.jvm.internal;

import kotlin.Metadata;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {1, 5, 1})
public final /* synthetic */ class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f14770a;

    static {
        int[] iArr = new int[KotlinClassHeader.Kind.values().length];
        f14770a = iArr;
        iArr[KotlinClassHeader.Kind.FILE_FACADE.ordinal()] = 1;
        iArr[KotlinClassHeader.Kind.MULTIFILE_CLASS.ordinal()] = 2;
        iArr[KotlinClassHeader.Kind.MULTIFILE_CLASS_PART.ordinal()] = 3;
        iArr[KotlinClassHeader.Kind.SYNTHETIC_CLASS.ordinal()] = 4;
        iArr[KotlinClassHeader.Kind.UNKNOWN.ordinal()] = 5;
        iArr[KotlinClassHeader.Kind.CLASS.ordinal()] = 6;
    }
}
