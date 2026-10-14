package androidx.core.d;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Comparator<byte[]> f1066a = new a();

    class a implements Comparator<byte[]> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(byte[] bArr, byte[] bArr2) {
            int length;
            int length2;
            if (bArr.length == bArr2.length) {
                for (int i = 0; i < bArr.length; i++) {
                    if (bArr[i] != bArr2[i]) {
                        length = bArr[i];
                        length2 = bArr2[i];
                    }
                }
                return 0;
            }
            length = bArr.length;
            length2 = bArr2.length;
            return length - length2;
        }
    }

    private static List<byte[]> a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    private static boolean b(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static List<List<byte[]>> c(d dVar, Resources resources) {
        return dVar.b() != null ? dVar.b() : androidx.core.a.f.c.c(resources, dVar.c());
    }

    static f.a d(Context context, d dVar, CancellationSignal cancellationSignal) throws PackageManager.NameNotFoundException {
        ProviderInfo providerInfoE = e(context.getPackageManager(), dVar, context.getResources());
        return providerInfoE == null ? f.a.a(1, null) : f.a.a(0, f(context, dVar, providerInfoE.authority, cancellationSignal));
    }

    static ProviderInfo e(PackageManager packageManager, d dVar, Resources resources) throws PackageManager.NameNotFoundException {
        String strE = dVar.e();
        ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(strE, 0);
        if (providerInfoResolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + strE);
        }
        if (!providerInfoResolveContentProvider.packageName.equals(dVar.f())) {
            throw new PackageManager.NameNotFoundException("Found content provider " + strE + ", but package was not " + dVar.f());
        }
        List<byte[]> listA = a(packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures);
        Collections.sort(listA, f1066a);
        List<List<byte[]>> listC = c(dVar, resources);
        for (int i = 0; i < listC.size(); i++) {
            ArrayList arrayList = new ArrayList(listC.get(i));
            Collections.sort(arrayList, f1066a);
            if (b(listA, arrayList)) {
                return providerInfoResolveContentProvider;
            }
        }
        return null;
    }

    static f.b[] f(Context context, d dVar, String str, CancellationSignal cancellationSignal) {
        ArrayList arrayList = new ArrayList();
        Uri uriBuild = new Uri.Builder().scheme(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT).authority(str).build();
        Uri uriBuild2 = new Uri.Builder().scheme(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT).authority(str).appendPath("file").build();
        Cursor cursorQuery = null;
        try {
            String[] strArr = {"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"};
            cursorQuery = Build.VERSION.SDK_INT > 16 ? context.getContentResolver().query(uriBuild, strArr, "query = ?", new String[]{dVar.g()}, null, cancellationSignal) : context.getContentResolver().query(uriBuild, strArr, "query = ?", new String[]{dVar.g()}, null);
            if (cursorQuery != null && cursorQuery.getCount() > 0) {
                int columnIndex = cursorQuery.getColumnIndex("result_code");
                ArrayList arrayList2 = new ArrayList();
                int columnIndex2 = cursorQuery.getColumnIndex("_id");
                int columnIndex3 = cursorQuery.getColumnIndex("file_id");
                int columnIndex4 = cursorQuery.getColumnIndex("font_ttc_index");
                int columnIndex5 = cursorQuery.getColumnIndex("font_weight");
                int columnIndex6 = cursorQuery.getColumnIndex("font_italic");
                while (cursorQuery.moveToNext()) {
                    int i = columnIndex != -1 ? cursorQuery.getInt(columnIndex) : 0;
                    arrayList2.add(f.b.a(columnIndex3 == -1 ? ContentUris.withAppendedId(uriBuild, cursorQuery.getLong(columnIndex2)) : ContentUris.withAppendedId(uriBuild2, cursorQuery.getLong(columnIndex3)), columnIndex4 != -1 ? cursorQuery.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursorQuery.getInt(columnIndex5) : Videoio.CAP_PROP_XI_DOWNSAMPLING, columnIndex6 != -1 && cursorQuery.getInt(columnIndex6) == 1, i));
                }
                arrayList = arrayList2;
            }
            return (f.b[]) arrayList.toArray(new f.b[0]);
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }
}
