package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;

/* JADX INFO: loaded from: classes.dex */
public final class InputContentInfoCompat {
    private final c mImpl;

    private static final class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f1213a;
        private final ClipDescription b;
        private final Uri c;

        b(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f1213a = uri;
            this.b = clipDescription;
            this.c = uri2;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public ClipDescription a() {
            return this.b;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public Object b() {
            return null;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public Uri c() {
            return this.f1213a;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public void d() {
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public Uri e() {
            return this.c;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public void f() {
        }
    }

    private interface c {
        ClipDescription a();

        Object b();

        Uri c();

        void d();

        Uri e();

        void f();
    }

    public InputContentInfoCompat(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.mImpl = new a(uri, clipDescription, uri2);
        } else {
            this.mImpl = new b(uri, clipDescription, uri2);
        }
    }

    public static InputContentInfoCompat wrap(Object obj) {
        if (obj != null && Build.VERSION.SDK_INT >= 25) {
            return new InputContentInfoCompat(new a(obj));
        }
        return null;
    }

    public Uri getContentUri() {
        return this.mImpl.c();
    }

    public ClipDescription getDescription() {
        return this.mImpl.a();
    }

    public Uri getLinkUri() {
        return this.mImpl.e();
    }

    public void releasePermission() {
        this.mImpl.f();
    }

    public void requestPermission() {
        this.mImpl.d();
    }

    public Object unwrap() {
        return this.mImpl.b();
    }

    private static final class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final InputContentInfo f1212a;

        a(Object obj) {
            this.f1212a = (InputContentInfo) obj;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public ClipDescription a() {
            return this.f1212a.getDescription();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public Object b() {
            return this.f1212a;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public Uri c() {
            return this.f1212a.getContentUri();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public void d() {
            this.f1212a.requestPermission();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public Uri e() {
            return this.f1212a.getLinkUri();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public void f() {
            this.f1212a.releasePermission();
        }

        a(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f1212a = new InputContentInfo(uri, clipDescription, uri2);
        }
    }

    private InputContentInfoCompat(c cVar) {
        this.mImpl = cVar;
    }
}
