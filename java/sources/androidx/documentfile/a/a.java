package androidx.documentfile.a;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.provider.DocumentsContract;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    a(a aVar) {
    }

    public static a e(Context context, Uri uri) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new c(null, context, DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri)));
        }
        return null;
    }

    public abstract boolean a();

    public abstract a b(String str);

    public abstract a c(String str, String str2);

    public a d(String str) {
        for (a aVar : j()) {
            if (str.equals(aVar.f())) {
                return aVar;
            }
        }
        return null;
    }

    public abstract String f();

    public abstract Uri g();

    public abstract boolean h();

    public abstract boolean i();

    public abstract a[] j();
}
