package XI.xo.XI.XI;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class CA {
    public static volatile CA J9;
    public BroadcastReceiver vs;

    /* JADX INFO: renamed from: XI, reason: collision with root package name */
    public XI f15XI = new XI("udid");
    public XI K0 = new XI("oaid");
    public XI xo = new XI("vaid");
    public XI kM = new XI("aaid");
    public K0 CA = new K0();

    public static final CA XI() {
        if (J9 == null) {
            synchronized (CA.class) {
                if (J9 == null) {
                    J9 = new CA();
                }
            }
        }
        return J9;
    }

    public static kM XI(Cursor cursor) {
        kM kMVar = new kM(null, 0);
        if (cursor.isClosed()) {
            return kMVar;
        }
        cursor.moveToFirst();
        int columnIndex = cursor.getColumnIndex("value");
        if (columnIndex >= 0) {
            kMVar.f18XI = cursor.getString(columnIndex);
        }
        int columnIndex2 = cursor.getColumnIndex("code");
        if (columnIndex2 >= 0) {
            kMVar.K0 = cursor.getInt(columnIndex2);
        }
        int columnIndex3 = cursor.getColumnIndex("expired");
        if (columnIndex3 >= 0) {
            kMVar.kM = cursor.getLong(columnIndex3);
        }
        return kMVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    public final String XI(Context context, XI xi) throws Throwable {
        String str;
        boolean zXI;
        StringBuilder sb;
        String str2;
        String str3;
        ?? r0 = 0;
        str = null;
        r0 = 0;
        String str4 = null;
        Cursor cursor = null;
        if (xi == null) {
            return null;
        }
        if (xi.f17XI > System.currentTimeMillis()) {
            return xi.K0;
        }
        if (!XI(context, true)) {
            return null;
        }
        String str5 = "queryId : " + xi.kM;
        try {
            try {
                Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{xi.kM}, null);
                try {
                    if (cursorQuery == null) {
                        if (XI(context, false)) {
                            zXI = XI(context, true);
                            sb = new StringBuilder();
                            str2 = "forceQuery isSupported : ";
                            sb.append(str2);
                            sb.append(zXI);
                            sb.toString();
                            r0 = str4;
                        }
                        return r0;
                    }
                    kM kMVarXI = XI(cursorQuery);
                    str3 = kMVarXI.f18XI;
                    xi.K0 = str3;
                    xi.f17XI = kMVarXI.kM;
                    xi.xo = kMVarXI.K0;
                    String str6 = xi.kM + " errorCode : " + xi.xo;
                    if (kMVarXI.K0 != 1000) {
                        XI(context);
                        if (!XI(context, false)) {
                            r0 = str3;
                            r0 = str3;
                            zXI = XI(context, true);
                            sb = new StringBuilder();
                            str2 = "not support, forceQuery isSupported: ";
                            str4 = str3;
                            sb.append(str2);
                            sb.append(zXI);
                            sb.toString();
                            r0 = str4;
                        }
                        return r0;
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Exception e2) {
                    e = e2;
                    str = str4;
                    cursor = cursorQuery;
                    String str7 = "queryId, Exception : " + e.getMessage();
                    if (cursor != null) {
                        cursorQuery = cursor;
                        r0 = str;
                    } else {
                        r0 = str;
                    }
                    return r0;
                } catch (Throwable th) {
                    th = th;
                    r0 = cursorQuery;
                    if (r0 != 0) {
                        r0.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
            str = null;
        }
        return r0;
    }

    public final synchronized void XI(Context context) {
        if (this.vs != null) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.meizu.flyme.openid.ACTION_OPEN_ID_CHANGE");
        xo xoVar = new xo();
        this.vs = xoVar;
        context.registerReceiver(xoVar, intentFilter, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE", null);
    }

    /* JADX WARN: Code duplicated, block: B:65:0x00ea A[PHI: r1
      0x00ea: PHI (r1v5 android.database.Cursor) = (r1v3 android.database.Cursor), (r1v6 android.database.Cursor) binds: [B:64:0x00e8, B:58:0x00ce] A[DONT_GENERATE, DONT_INLINE]] */
    public final boolean XI(Context context, boolean z) {
        String str;
        Boolean bool = this.CA.K0;
        boolean z2 = true;
        boolean z3 = false;
        if ((bool != null) && !z) {
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Cursor cursorQuery = null;
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo("com.meizu.safe", 0);
            str = packageInfo != null ? packageInfo.versionName : null;
        } catch (Exception e2) {
            e2.printStackTrace();
            String str2 = "getAppVersion, Exception : " + e2.getMessage();
        }
        K0 k0 = this.CA;
        if (k0.K0 != null) {
            if (TextUtils.isEmpty(str) ? false : TextUtils.equals(k0.f16XI, str)) {
                String str3 = "use same version cache, safeVersion : " + str;
                Boolean bool2 = this.CA.K0;
                if (bool2 != null) {
                    return bool2.booleanValue();
                }
                return false;
            }
        }
        this.CA.f16XI = str;
        ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider("com.meizu.flyme.openidsdk", 0);
        if ((providerInfoResolveContentProvider == null || (providerInfoResolveContentProvider.applicationInfo.flags & 1) == 0 || !TextUtils.equals("com.meizu.safe", providerInfoResolveContentProvider.packageName)) ? false : true) {
            try {
                try {
                    cursorQuery = context.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"supported"}, null);
                    if (cursorQuery != null) {
                        kM kMVarXI = XI(cursorQuery);
                        if (1000 == kMVarXI.K0 && !"0".equals(kMVarXI.f18XI)) {
                            z2 = false;
                        }
                        cursorQuery.close();
                        z3 = z2;
                    } else if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Throwable th) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            } catch (Exception e3) {
                String str4 = "querySupport, Exception : " + e3.getMessage();
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
            String str5 = "query support, result : " + z3;
            this.CA.K0 = Boolean.valueOf(z3);
            return z3;
        }
        this.CA.K0 = Boolean.FALSE;
        return false;
    }
}
