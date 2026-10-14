package kotlin.reflect.jvm.internal.impl.name;

import kotlin.jvm.internal.r;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Regex f15393a = new Regex("[^\\p{L}\\p{Digit}]");

    public static final String a(String name) {
        r.e(name, "name");
        return f15393a.replace(name, "_");
    }
}
