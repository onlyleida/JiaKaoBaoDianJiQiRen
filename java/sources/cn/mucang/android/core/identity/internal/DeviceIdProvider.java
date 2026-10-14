package cn.mucang.android.core.identity.internal;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.identity.h;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import com.nirvana.tools.crash.CustomLogInfoBuilder;

/* JADX INFO: loaded from: classes.dex */
public class DeviceIdProvider extends ContentProvider {
    public static String a() {
        Cursor cursorQuery = MucangConfig.getContext().getContentResolver().query(Uri.parse(b()), null, null, null, null);
        if (cursorQuery != null) {
            try {
                try {
                    if (cursorQuery.moveToNext()) {
                        return cursorQuery.getString(0);
                    }
                } catch (Exception e2) {
                    t.c(CustomLogInfoBuilder.LOG_TYPE, e2);
                }
            } finally {
                o.a(cursorQuery);
            }
        }
        return null;
    }

    public static String b() {
        return "content://" + MucangConfig.r() + ".deviceId/*";
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
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
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"deviceId"}, 1);
        matrixCursor.newRow().add("deviceId", h.a());
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
