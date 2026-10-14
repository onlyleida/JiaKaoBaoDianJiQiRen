package cn.mucang.jiakaoyi.uilib.utils;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import cn.mucang.android.jiakaoyi.framework.log.f;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.text.Regex;
import kotlin.text.t;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.s.o, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J=\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u00052\u0010\u0010\r\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u000eH\u0002¢\u0006\u0002\u0010\u000fJ\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\u000bH\u0002R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/utils/UriConvertFile;", "", "()V", "contentUriPrefixesToTry", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "getDataColumn", "context", "Landroid/content/Context;", "uri", "Landroid/net/Uri;", "selection", "selectionArgs", "", "(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;", "getPath", "isDownloadsDocument", "", "isExternalStorageDocument", "isMediaDocument", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UriConvertFile {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UriConvertFile f9585a = new UriConvertFile();
    private static final ArrayList<String> b = u.f("content://downloads/public_downloads", "content://downloads/my_downloads", "content://downloads/all_downloads");

    private UriConvertFile() {
    }

    private final String a(Context context, Uri uri, String str, String[] strArr) throws Throwable {
        Cursor cursor = null;
        if (uri == null) {
            return null;
        }
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        cursorQuery.close();
                        return string;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private final boolean c(Uri uri) {
        return r.a("com.android.providers.downloads.documents", uri.getAuthority());
    }

    private final boolean d(Uri uri) {
        return r.a("com.android.externalstorage.documents", uri.getAuthority());
    }

    private final boolean e(Uri uri) {
        return r.a("com.android.providers.media.documents", uri.getAuthority());
    }

    /* JADX WARN: Code duplicated, block: B:62:0x013b A[Catch: Exception -> 0x0160, TryCatch #0 {Exception -> 0x0160, blocks: (B:8:0x001c, B:10:0x0022, B:13:0x002e, B:15:0x0046, B:17:0x0052, B:19:0x0071, B:20:0x0076, B:21:0x0077, B:23:0x007d, B:25:0x0083, B:27:0x008c, B:29:0x0097, B:30:0x009d, B:32:0x00a3, B:35:0x00cb, B:37:0x00d1, B:39:0x00e9, B:58:0x0125, B:46:0x0101, B:49:0x010a, B:50:0x010d, B:53:0x0116, B:54:0x0119, B:57:0x0123, B:60:0x0135, B:61:0x013a, B:62:0x013b, B:64:0x0147, B:66:0x014f, B:68:0x015b), top: B:73:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0147 A[Catch: Exception -> 0x0160, TryCatch #0 {Exception -> 0x0160, blocks: (B:8:0x001c, B:10:0x0022, B:13:0x002e, B:15:0x0046, B:17:0x0052, B:19:0x0071, B:20:0x0076, B:21:0x0077, B:23:0x007d, B:25:0x0083, B:27:0x008c, B:29:0x0097, B:30:0x009d, B:32:0x00a3, B:35:0x00cb, B:37:0x00d1, B:39:0x00e9, B:58:0x0125, B:46:0x0101, B:49:0x010a, B:50:0x010d, B:53:0x0116, B:54:0x0119, B:57:0x0123, B:60:0x0135, B:61:0x013a, B:62:0x013b, B:64:0x0147, B:66:0x014f, B:68:0x015b), top: B:73:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:66:0x014f A[Catch: Exception -> 0x0160, TryCatch #0 {Exception -> 0x0160, blocks: (B:8:0x001c, B:10:0x0022, B:13:0x002e, B:15:0x0046, B:17:0x0052, B:19:0x0071, B:20:0x0076, B:21:0x0077, B:23:0x007d, B:25:0x0083, B:27:0x008c, B:29:0x0097, B:30:0x009d, B:32:0x00a3, B:35:0x00cb, B:37:0x00d1, B:39:0x00e9, B:58:0x0125, B:46:0x0101, B:49:0x010a, B:50:0x010d, B:53:0x0116, B:54:0x0119, B:57:0x0123, B:60:0x0135, B:61:0x013a, B:62:0x013b, B:64:0x0147, B:66:0x014f, B:68:0x015b), top: B:73:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:68:0x015b A[Catch: Exception -> 0x0160, TRY_LEAVE, TryCatch #0 {Exception -> 0x0160, blocks: (B:8:0x001c, B:10:0x0022, B:13:0x002e, B:15:0x0046, B:17:0x0052, B:19:0x0071, B:20:0x0076, B:21:0x0077, B:23:0x007d, B:25:0x0083, B:27:0x008c, B:29:0x0097, B:30:0x009d, B:32:0x00a3, B:35:0x00cb, B:37:0x00d1, B:39:0x00e9, B:58:0x0125, B:46:0x0101, B:49:0x010a, B:50:0x010d, B:53:0x0116, B:54:0x0119, B:57:0x0123, B:60:0x0135, B:61:0x013a, B:62:0x013b, B:64:0x0147, B:66:0x014f, B:68:0x015b), top: B:73:0x001c }] */
    public final String b(Context context, Uri uri) throws Throwable {
        Uri uri2;
        r.e(uri, "uri");
        boolean z = Build.VERSION.SDK_INT >= 19;
        f.o(r.m("选择文件的Uri路径：", uri));
        if (z) {
            try {
                if (DocumentsContract.isDocumentUri(context, uri)) {
                    if (d(uri)) {
                        String docId = DocumentsContract.getDocumentId(uri);
                        r.d(docId, "docId");
                        Object[] array = new Regex(":").split(docId, 0).toArray(new String[0]);
                        if (array == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                        }
                        String[] strArr = (String[]) array;
                        if (t.p("primary", strArr[0], true)) {
                            return Environment.getExternalStorageDirectory().toString() + '/' + strArr[1];
                        }
                    } else if (c(uri)) {
                        String id = DocumentsContract.getDocumentId(uri);
                        if (id != null && t.B(id, "raw:", false, 2, null)) {
                            String strSubstring = id.substring(4);
                            r.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
                            return strSubstring;
                        }
                        Iterator<T> it = b.iterator();
                        while (it.hasNext()) {
                            Uri uri3 = Uri.parse((String) it.next());
                            r.d(id, "id");
                            Uri uriWithAppendedId = ContentUris.withAppendedId(uri3, Long.parseLong(id));
                            r.d(uriWithAppendedId, "withAppendedId(\n        …                        )");
                            UriConvertFile uriConvertFile = f9585a;
                            r.c(context);
                            String strA = uriConvertFile.a(context, uriWithAppendedId, null, null);
                            if (strA != null) {
                                return strA;
                            }
                        }
                    } else if (e(uri)) {
                        String docId2 = DocumentsContract.getDocumentId(uri);
                        r.d(docId2, "docId");
                        Object[] array2 = new Regex(":").split(docId2, 0).toArray(new String[0]);
                        if (array2 == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                        }
                        String[] strArr2 = (String[]) array2;
                        String str = strArr2[0];
                        int iHashCode = str.hashCode();
                        if (iHashCode != 93166550) {
                            if (iHashCode != 100313435) {
                                uri2 = (iHashCode == 112202875 && str.equals("video")) ? MediaStore.Video.Media.EXTERNAL_CONTENT_URI : null;
                            } else if (str.equals("image")) {
                                uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                            }
                        } else if (str.equals("audio")) {
                            uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                        }
                        String[] strArr3 = {strArr2[1]};
                        r.c(context);
                        return a(context, uri2, "_id=?", strArr3);
                    }
                } else {
                    if (t.p(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, uri.getScheme(), true)) {
                        r.c(context);
                        return a(context, uri, null, null);
                    }
                    if (t.p("file", uri.getScheme(), true)) {
                        return uri.getPath();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                f.o(r.m("获取文件路径异常：", e2.getLocalizedMessage()));
            }
        } else {
            if (t.p(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, uri.getScheme(), true)) {
                r.c(context);
                return a(context, uri, null, null);
            }
            if (t.p("file", uri.getScheme(), true)) {
                return uri.getPath();
            }
        }
        return null;
    }
}
