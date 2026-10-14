package androidx.core.app;

import android.app.ActivityOptions;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class b {

    private static class a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ActivityOptions f969a;

        a(ActivityOptions activityOptions) {
            this.f969a = activityOptions;
        }

        @Override // androidx.core.app.b
        public Bundle b() {
            return this.f969a.toBundle();
        }
    }

    protected b() {
    }

    public static b a(Context context, int i, int i2) {
        return Build.VERSION.SDK_INT >= 16 ? new a(ActivityOptions.makeCustomAnimation(context, i, i2)) : new b();
    }

    public Bundle b() {
        return null;
    }
}
