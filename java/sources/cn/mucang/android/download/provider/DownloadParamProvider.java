package cn.mucang.android.download.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DownloadParamProvider extends ContentProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SharedPreferences f2968a;

    private void a(String str) {
        String string = this.f2968a.getString("EXCLUDE_GROUP_WHEN_RESTART", "");
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(str)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        String[] strArrSplit = string.split(",");
        for (int i = 0; i < strArrSplit.length; i++) {
            if (!strArrSplit[i].equals(str)) {
                sb.append(strArrSplit[i]);
                if (i < strArrSplit.length - 1) {
                    sb.append(",");
                }
            }
        }
        this.f2968a.edit().putString("EXCLUDE_GROUP_WHEN_RESTART", sb.toString()).commit();
    }

    private void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String string = this.f2968a.getString("EXCLUDE_GROUP_WHEN_RESTART", "");
        if (TextUtils.isEmpty(string)) {
            this.f2968a.edit().putString("EXCLUDE_GROUP_WHEN_RESTART", str).commit();
            return;
        }
        for (String str2 : string.split(",")) {
            if (TextUtils.equals(str2, str)) {
                return;
            }
        }
        this.f2968a.edit().putString("EXCLUDE_GROUP_WHEN_RESTART", string.concat(",").concat(str)).commit();
    }

    private void c(int i) {
        this.f2968a.edit().putInt("PREFS_THREAD_COUNT", i).commit();
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments != null && pathSegments.size() != 0) {
            String str2 = pathSegments.get(0);
            str2.hashCode();
            if (str2.equals("EXCLUDE_GROUP_WHEN_RESTART")) {
                a(str);
            }
        }
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f2968a = PreferenceManager.getDefaultSharedPreferences(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments != null && pathSegments.size() != 0) {
            String str2 = pathSegments.get(0);
            str2.hashCode();
            if (str2.equals("EXCLUDE_GROUP_WHEN_RESTART")) {
                b(contentValues.getAsString("EXCLUDE_GROUP_WHEN_RESTART"));
            } else if (str2.equals("PREFS_THREAD_COUNT")) {
                c(contentValues.getAsInteger("PREFS_THREAD_COUNT").intValue());
            }
        }
        return 0;
    }
}
