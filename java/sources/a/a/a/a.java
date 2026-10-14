package a.a.a;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f19a;

    @Deprecated
    public static Context a() {
        return f19a;
    }

    public static void a(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Application context cannot be null for ContextUtils.initialize.");
        }
        f19a = context;
    }
}
