package XI.CA.XI;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public class XI {

    /* JADX INFO: renamed from: XI, reason: collision with root package name */
    public Context f5XI;

    public XI(Context context) {
        this.f5XI = context;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0048 A[Catch: all -> 0x0057, Exception -> 0x005a, TryCatch #3 {Exception -> 0x005a, all -> 0x0057, blocks: (B:19:0x0042, B:21:0x0048, B:22:0x0053), top: B:41:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0042 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:? A[RETURN, SYNTHETIC] */
    public String XI(int i, String str) throws Throwable {
        String string;
        Uri uri;
        String str2;
        Cursor cursorQuery;
        StringBuilder sb;
        String str3;
        Cursor cursor = null;
        string = null;
        String string2 = null;
        Cursor cursor2 = null;
        try {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        sb = new StringBuilder();
                        str3 = "content://com.vivo.vms.IdProvider/IdentifierId/AAID_";
                    } else if (i != 4) {
                        uri = null;
                    } else {
                        string = "content://com.vivo.vms.IdProvider/IdentifierId/OAIDSTATUS";
                    }
                    cursorQuery = this.f5XI.getContentResolver().query(uri, null, null, null, null);
                    if (cursorQuery != null) {
                        try {
                            string2 = cursorQuery.moveToNext() ? cursorQuery.getString(cursorQuery.getColumnIndex("value")) : null;
                            cursorQuery.close();
                        } catch (Exception unused) {
                            String str4 = string2;
                            cursor2 = cursorQuery;
                            str2 = str4;
                            if (cursor2 == null) {
                                return str2;
                            }
                            Cursor cursor3 = cursor2;
                            string2 = str2;
                            cursorQuery = cursor3;
                        } catch (Throwable th) {
                            th = th;
                            cursor = cursorQuery;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    if (cursorQuery == null) {
                        return string2;
                    }
                    cursorQuery.close();
                    return string2;
                }
                sb = new StringBuilder();
                str3 = "content://com.vivo.vms.IdProvider/IdentifierId/VAID_";
                sb.append(str3);
                sb.append(str);
                string = sb.toString();
            } else {
                string = "content://com.vivo.vms.IdProvider/IdentifierId/OAID";
            }
            cursorQuery = this.f5XI.getContentResolver().query(uri, null, null, null, null);
            if (cursorQuery != null) {
                if (cursorQuery.moveToNext()) {
                }
                cursorQuery.close();
            }
            if (cursorQuery == null) {
                return string2;
            }
        } catch (Exception unused2) {
            str2 = null;
        } catch (Throwable th2) {
            th = th2;
        }
        uri = Uri.parse(string);
        cursorQuery.close();
        return string2;
    }
}
