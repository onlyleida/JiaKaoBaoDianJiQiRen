package kotlinx.coroutines.selects;

import kotlinx.coroutines.internal.y;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f16109a = new y("NOT_SELECTED");
    private static final Object b = new y("ALREADY_SELECTED");
    private static final Object c = new y("UNDECIDED");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f16110d = new y("RESUMED");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final h f16111e = new h();

    public static final Object d() {
        return b;
    }

    public static final Object e() {
        return f16109a;
    }
}
