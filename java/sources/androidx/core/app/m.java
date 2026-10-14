package androidx.core.app;

import android.app.Person;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import com.mobile.auth.gatewayauth.Constant;

/* JADX INFO: loaded from: classes.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    CharSequence f1044a;
    IconCompat b;
    String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f1045d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f1046e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f1047f;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        CharSequence f1048a;
        IconCompat b;
        String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f1049d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f1050e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f1051f;

        public m a() {
            return new m(this);
        }

        public a b(boolean z) {
            this.f1050e = z;
            return this;
        }

        public a c(IconCompat iconCompat) {
            this.b = iconCompat;
            return this;
        }

        public a d(boolean z) {
            this.f1051f = z;
            return this;
        }

        public a e(String str) {
            this.f1049d = str;
            return this;
        }

        public a f(CharSequence charSequence) {
            this.f1048a = charSequence;
            return this;
        }

        public a g(String str) {
            this.c = str;
            return this;
        }
    }

    m(a aVar) {
        this.f1044a = aVar.f1048a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.f1045d = aVar.f1049d;
        this.f1046e = aVar.f1050e;
        this.f1047f = aVar.f1051f;
    }

    public static m a(Person person) {
        a aVar = new a();
        aVar.f(person.getName());
        aVar.c(person.getIcon() != null ? IconCompat.d(person.getIcon()) : null);
        aVar.g(person.getUri());
        aVar.e(person.getKey());
        aVar.b(person.isBot());
        aVar.d(person.isImportant());
        return aVar.a();
    }

    public static m b(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("icon");
        a aVar = new a();
        aVar.f(bundle.getCharSequence(Constant.PROTOCOL_WEBVIEW_NAME));
        aVar.c(bundle2 != null ? IconCompat.c(bundle2) : null);
        aVar.g(bundle.getString("uri"));
        aVar.e(bundle.getString("key"));
        aVar.b(bundle.getBoolean("isBot"));
        aVar.d(bundle.getBoolean("isImportant"));
        return aVar.a();
    }

    public IconCompat c() {
        return this.b;
    }

    public String d() {
        return this.f1045d;
    }

    public CharSequence e() {
        return this.f1044a;
    }

    public String f() {
        return this.c;
    }

    public boolean g() {
        return this.f1046e;
    }

    public boolean h() {
        return this.f1047f;
    }

    public String i() {
        String str = this.c;
        if (str != null) {
            return str;
        }
        if (this.f1044a == null) {
            return "";
        }
        return "name:" + ((Object) this.f1044a);
    }

    public Person j() {
        return new Person.Builder().setName(e()).setIcon(c() != null ? c().C() : null).setUri(f()).setKey(d()).setBot(g()).setImportant(h()).build();
    }

    public Bundle k() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(Constant.PROTOCOL_WEBVIEW_NAME, this.f1044a);
        IconCompat iconCompat = this.b;
        bundle.putBundle("icon", iconCompat != null ? iconCompat.B() : null);
        bundle.putString("uri", this.c);
        bundle.putString("key", this.f1045d);
        bundle.putBoolean("isBot", this.f1046e);
        bundle.putBoolean("isImportant", this.f1047f);
        return bundle;
    }
}
