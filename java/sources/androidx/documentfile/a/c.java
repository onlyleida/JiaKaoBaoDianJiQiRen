package androidx.documentfile.a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class c extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f1257a;
    private Uri b;

    c(a aVar, Context context, Uri uri) {
        super(aVar);
        this.f1257a = context;
        this.b = uri;
    }

    private static void k(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    private static Uri l(Context context, Uri uri, String str, String str2) {
        try {
            return DocumentsContract.createDocument(context.getContentResolver(), uri, str, str2);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // androidx.documentfile.a.a
    public boolean a() {
        return b.a(this.f1257a, this.b);
    }

    @Override // androidx.documentfile.a.a
    public a b(String str) {
        Uri uriL = l(this.f1257a, this.b, "vnd.android.document/directory", str);
        if (uriL != null) {
            return new c(this, this.f1257a, uriL);
        }
        return null;
    }

    @Override // androidx.documentfile.a.a
    public a c(String str, String str2) {
        Uri uriL = l(this.f1257a, this.b, str, str2);
        if (uriL != null) {
            return new c(this, this.f1257a, uriL);
        }
        return null;
    }

    @Override // androidx.documentfile.a.a
    public String f() {
        return b.c(this.f1257a, this.b);
    }

    @Override // androidx.documentfile.a.a
    public Uri g() {
        return this.b;
    }

    @Override // androidx.documentfile.a.a
    public boolean h() {
        return b.e(this.f1257a, this.b);
    }

    @Override // androidx.documentfile.a.a
    public boolean i() {
        return b.f(this.f1257a, this.b);
    }

    @Override // androidx.documentfile.a.a
    public a[] j() {
        ContentResolver contentResolver = this.f1257a.getContentResolver();
        Uri uri = this.b;
        Uri uriBuildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri));
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = contentResolver.query(uriBuildChildDocumentsUriUsingTree, new String[]{"document_id"}, null, null, null);
                while (cursorQuery.moveToNext()) {
                    arrayList.add(DocumentsContract.buildDocumentUriUsingTree(this.b, cursorQuery.getString(0)));
                }
            } catch (Exception e2) {
                Log.w("DocumentFile", "Failed query: " + e2);
            }
            k(cursorQuery);
            Uri[] uriArr = (Uri[]) arrayList.toArray(new Uri[arrayList.size()]);
            a[] aVarArr = new a[uriArr.length];
            for (int i = 0; i < uriArr.length; i++) {
                aVarArr[i] = new c(this, this.f1257a, uriArr[i]);
            }
            return aVarArr;
        } catch (Throwable th) {
            k(cursorQuery);
            throw th;
        }
    }
}
