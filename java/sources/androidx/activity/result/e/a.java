package androidx.activity.result.e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public abstract class a<I, O> {

    /* JADX INFO: renamed from: androidx.activity.result.e.a$a, reason: collision with other inner class name */
    public static final class C0005a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @SuppressLint({"UnknownNullness"})
        private final T f59a;

        public C0005a(@SuppressLint({"UnknownNullness"}) T t) {
            this.f59a = t;
        }

        @SuppressLint({"UnknownNullness"})
        public T a() {
            return this.f59a;
        }
    }

    public abstract Intent a(Context context, @SuppressLint({"UnknownNullness"}) I i);

    public C0005a<O> b(Context context, @SuppressLint({"UnknownNullness"}) I i) {
        return null;
    }

    @SuppressLint({"UnknownNullness"})
    public abstract O c(int i, Intent intent);
}
