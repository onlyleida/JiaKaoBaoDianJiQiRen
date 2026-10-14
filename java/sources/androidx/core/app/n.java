package androidx.core.app;

import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1052a;
    private final CharSequence b;
    private final CharSequence[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f1053d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f1054e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Bundle f1055f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Set<String> f1056g;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f1057a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CharSequence f1058d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CharSequence[] f1059e;
        private final Set<String> b = new HashSet();
        private final Bundle c = new Bundle();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f1060f = true;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f1061g = 0;

        public a(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Result key can't be null");
            }
            this.f1057a = str;
        }

        public a a(Bundle bundle) {
            if (bundle != null) {
                this.c.putAll(bundle);
            }
            return this;
        }

        public n b() {
            return new n(this.f1057a, this.f1058d, this.f1059e, this.f1060f, this.f1061g, this.c, this.b);
        }

        public a c(String str, boolean z) {
            if (z) {
                this.b.add(str);
            } else {
                this.b.remove(str);
            }
            return this;
        }

        public a d(boolean z) {
            this.f1060f = z;
            return this;
        }

        public a e(CharSequence[] charSequenceArr) {
            this.f1059e = charSequenceArr;
            return this;
        }

        public a f(int i) {
            this.f1061g = i;
            return this;
        }

        public a g(CharSequence charSequence) {
            this.f1058d = charSequence;
            return this;
        }
    }

    n(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, int i, Bundle bundle, Set<String> set) {
        this.f1052a = str;
        this.b = charSequence;
        this.c = charSequenceArr;
        this.f1053d = z;
        this.f1054e = i;
        this.f1055f = bundle;
        this.f1056g = set;
        if (g() == 2 && !d()) {
            throw new IllegalArgumentException("setEditChoicesBeforeSending requires setAllowFreeFormInput");
        }
    }

    static RemoteInput a(n nVar) {
        Set<String> setE;
        int i = Build.VERSION.SDK_INT;
        RemoteInput.Builder builderAddExtras = new RemoteInput.Builder(nVar.j()).setLabel(nVar.i()).setChoices(nVar.f()).setAllowFreeFormInput(nVar.d()).addExtras(nVar.h());
        if (i >= 26 && (setE = nVar.e()) != null) {
            Iterator<String> it = setE.iterator();
            while (it.hasNext()) {
                builderAddExtras.setAllowDataType(it.next(), true);
            }
        }
        if (i >= 29) {
            builderAddExtras.setEditChoicesBeforeSending(nVar.g());
        }
        return builderAddExtras.build();
    }

    static RemoteInput[] b(n[] nVarArr) {
        if (nVarArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[nVarArr.length];
        for (int i = 0; i < nVarArr.length; i++) {
            remoteInputArr[i] = a(nVarArr[i]);
        }
        return remoteInputArr;
    }

    static n c(RemoteInput remoteInput) {
        Set<String> allowedDataTypes;
        int i = Build.VERSION.SDK_INT;
        a aVar = new a(remoteInput.getResultKey());
        aVar.g(remoteInput.getLabel());
        aVar.e(remoteInput.getChoices());
        aVar.d(remoteInput.getAllowFreeFormInput());
        aVar.a(remoteInput.getExtras());
        if (i >= 26 && (allowedDataTypes = remoteInput.getAllowedDataTypes()) != null) {
            Iterator<String> it = allowedDataTypes.iterator();
            while (it.hasNext()) {
                aVar.c(it.next(), true);
            }
        }
        if (i >= 29) {
            aVar.f(remoteInput.getEditChoicesBeforeSending());
        }
        return aVar.b();
    }

    public boolean d() {
        return this.f1053d;
    }

    public Set<String> e() {
        return this.f1056g;
    }

    public CharSequence[] f() {
        return this.c;
    }

    public int g() {
        return this.f1054e;
    }

    public Bundle h() {
        return this.f1055f;
    }

    public CharSequence i() {
        return this.b;
    }

    public String j() {
        return this.f1052a;
    }

    public boolean k() {
        return (d() || (f() != null && f().length != 0) || e() == null || e().isEmpty()) ? false : true;
    }
}
