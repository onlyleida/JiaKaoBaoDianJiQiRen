package com.loc;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ey {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Hashtable<String, ArrayList<a>> f12866a = new Hashtable<>();
    private long i = 0;
    private boolean j = false;
    private String k = "2.0.201501131131".replace(".", "");
    private String l = null;
    boolean b = true;
    long c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f12867d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    er f12868e = null;
    private String m = null;
    private long n = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f12869f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f12870g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f12871h = String.valueOf(AMapLocationClientOption.GeoLanguage.DEFAULT);

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private en f12872a = null;
        private String b = null;

        protected a() {
        }

        public final en a() {
            return this.f12872a;
        }

        public final void a(en enVar) {
            this.f12872a = enVar;
        }

        public final void a(String str) {
            this.b = TextUtils.isEmpty(str) ? null : str.replace("##", "#");
        }

        public final String b() {
            return this.b;
        }
    }

    private en a(String str, StringBuilder sb, boolean z) {
        a aVarA;
        try {
            if (str.contains("cgiwifi") || str.contains("wifi")) {
                aVarA = a(sb, str);
            } else {
                aVarA = (str.contains("cgi") && this.f12866a.containsKey(str) && this.f12866a.get(str).size() > 0) ? this.f12866a.get(str).get(0) : null;
            }
            if (aVarA != null && fp.a(aVarA.a())) {
                en enVarA = aVarA.a();
                enVarA.e("mem");
                enVarA.h(aVarA.b());
                if (!z && !fh.a(enVarA.getTime())) {
                    Hashtable<String, ArrayList<a>> hashtable = this.f12866a;
                    if (hashtable != null && hashtable.containsKey(str)) {
                        this.f12866a.get(str).remove(aVarA);
                    }
                }
                if (fp.a(enVarA)) {
                    this.c = 0L;
                }
                enVarA.setLocationType(4);
                return enVarA;
            }
        } catch (Throwable th) {
            fi.a(th, "Cache", "get1");
        }
        return null;
    }

    private a a(StringBuilder sb, String str) {
        a aVar;
        boolean z;
        a aVar2;
        if (this.f12866a.isEmpty() || TextUtils.isEmpty(sb)) {
            return null;
        }
        if (!this.f12866a.containsKey(str)) {
            return null;
        }
        Hashtable hashtable = new Hashtable();
        Hashtable hashtable2 = new Hashtable();
        Hashtable hashtable3 = new Hashtable();
        ArrayList<a> arrayList = this.f12866a.get(str);
        char c = 1;
        int size = arrayList.size() - 1;
        while (true) {
            if (size >= 0) {
                a aVar3 = arrayList.get(size);
                if (!TextUtils.isEmpty(aVar3.b())) {
                    if (a(aVar3.b(), sb)) {
                        if (!fp.a(aVar3.b(), sb.toString())) {
                            z = true;
                        }
                        aVar2 = aVar3;
                        break;
                    }
                    z = false;
                    a(aVar3.b(), (Hashtable<String, String>) hashtable);
                    a(sb.toString(), (Hashtable<String, String>) hashtable2);
                    hashtable3.clear();
                    Iterator it = hashtable.keySet().iterator();
                    while (it.hasNext()) {
                        hashtable3.put((String) it.next(), "");
                    }
                    Iterator it2 = hashtable2.keySet().iterator();
                    while (it2.hasNext()) {
                        hashtable3.put((String) it2.next(), "");
                    }
                    Set setKeySet = hashtable3.keySet();
                    double[] dArr = new double[setKeySet.size()];
                    double[] dArr2 = new double[setKeySet.size()];
                    Iterator it3 = setKeySet.iterator();
                    int i = 0;
                    while (it3 != null && it3.hasNext()) {
                        String str2 = (String) it3.next();
                        double d2 = 1.0d;
                        dArr[i] = hashtable.containsKey(str2) ? 1.0d : 0.0d;
                        if (!hashtable2.containsKey(str2)) {
                            d2 = 0.0d;
                        }
                        dArr2[i] = d2;
                        i++;
                    }
                    setKeySet.clear();
                    double[] dArrA = a(dArr, dArr2);
                    if (dArrA[0] < 0.800000011920929d) {
                        aVar2 = aVar3;
                        if (dArrA[c] >= Math.min(fh.g(), 0.618d) || (z && dArrA[0] >= Math.min(fh.g(), 0.618d))) {
                            break;
                        }
                    } else {
                        aVar2 = aVar3;
                        break;
                    }
                }
                size--;
                c = 1;
            } else {
                aVar = null;
            }
            hashtable.clear();
            hashtable2.clear();
            hashtable3.clear();
            return aVar;
        }
        aVar = aVar2;
        hashtable.clear();
        hashtable2.clear();
        hashtable3.clear();
        return aVar;
    }

    private String a(String str, StringBuilder sb, Context context) {
        if (context == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            this.l = fp.m(context);
            if (str.contains("&")) {
                str = str.substring(0, str.indexOf("&"));
            }
            String strSubstring = str.substring(str.lastIndexOf("#") + 1);
            if (strSubstring.equals("cgi")) {
                jSONObject.put("cgi", str.substring(0, str.length() - 12));
            } else if (!TextUtils.isEmpty(sb) && sb.indexOf(",access") != -1) {
                jSONObject.put("cgi", str.substring(0, str.length() - (strSubstring.length() + 9)));
                String[] strArrSplit = sb.toString().split(",access");
                jSONObject.put("mmac", strArrSplit[0].contains("#") ? strArrSplit[0].substring(strArrSplit[0].lastIndexOf("#") + 1) : strArrSplit[0]);
            }
            return o.b(ex.a(jSONObject.toString().getBytes("UTF-8"), this.l));
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:113:0x029d A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:115:0x02a2 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:117:0x02a8 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:140:0x0261 A[EDGE_INSN: B:140:0x0261->B:91:0x0261 BREAK  A[LOOP:0: B:42:0x00cf->B:93:0x0271], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:145:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:146:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x0129 A[Catch: all -> 0x00c4, TRY_LEAVE, TryCatch #1 {all -> 0x00c4, blocks: (B:35:0x00bd, B:45:0x00e6, B:47:0x0100, B:48:0x0104, B:52:0x0119, B:54:0x0129, B:73:0x01b8, B:75:0x01be, B:77:0x01ea, B:78:0x01f7, B:79:0x01fc, B:49:0x0108, B:51:0x010e, B:58:0x0159, B:59:0x016c, B:68:0x01a0, B:63:0x0176), top: B:129:0x00bd }] */
    /* JADX WARN: Code duplicated, block: B:68:0x01a0 A[Catch: all -> 0x00c4, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00c4, blocks: (B:35:0x00bd, B:45:0x00e6, B:47:0x0100, B:48:0x0104, B:52:0x0119, B:54:0x0129, B:73:0x01b8, B:75:0x01be, B:77:0x01ea, B:78:0x01f7, B:79:0x01fc, B:49:0x0108, B:51:0x010e, B:58:0x0159, B:59:0x016c, B:68:0x01a0, B:63:0x0176), top: B:129:0x00bd }] */
    /* JADX WARN: Code duplicated, block: B:93:0x0271 A[LOOP:0: B:42:0x00cf->B:93:0x0271, LOOP_END] */
    private void a(Context context, String str, boolean z) throws Exception {
        Cursor cursorQuery;
        SQLiteDatabase sQLiteDatabase;
        String str2;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        String string;
        StringBuilder sb;
        if (fh.e() && context != null) {
            SQLiteDatabase sQLiteDatabase2 = null;
            try {
                int i = 0;
                SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase = context.openOrCreateDatabase("hmdb", 0, null);
                try {
                    try {
                        if (!fp.a(sQLiteDatabaseOpenOrCreateDatabase, "hist")) {
                            if (sQLiteDatabaseOpenOrCreateDatabase == null || !sQLiteDatabaseOpenOrCreateDatabase.isOpen()) {
                                return;
                            }
                            sQLiteDatabaseOpenOrCreateDatabase.close();
                            return;
                        }
                        StringBuilder sb2 = new StringBuilder();
                        if (z) {
                            long jA = fp.a() - 172800000;
                            sb2.append("time >");
                            sb2.append(jA);
                            if (str != null) {
                                sb2.append(" and feature = '");
                                str2 = str + "'";
                                sb2.append(str2);
                            }
                        } else {
                            long jA2 = fp.a() - fh.d();
                            sb2.append("time >");
                            sb2.append(jA2);
                            if (str != null) {
                                sb2.append(" and feature = '");
                                str2 = str + "'";
                                sb2.append(str2);
                            }
                        }
                        cursorQuery = sQLiteDatabaseOpenOrCreateDatabase.query("hist" + this.k, new String[]{"feature", " nb", "loc"}, sb2.toString(), null, null, null, "time ASC", null);
                        try {
                            StringBuilder sb3 = new StringBuilder();
                            if (this.l == null) {
                                try {
                                    this.l = fp.m(context);
                                } catch (Throwable th) {
                                    th = th;
                                    sQLiteDatabase2 = sQLiteDatabaseOpenOrCreateDatabase;
                                    fi.a(th, "DB", "fetchHist p2");
                                }
                            }
                            if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                                sQLiteDatabase = sQLiteDatabaseOpenOrCreateDatabase;
                            } else {
                                while (true) {
                                    String str3 = ",access";
                                    if (cursorQuery.getString(i).startsWith(VectorFormat.DEFAULT_PREFIX)) {
                                        jSONObject2 = new JSONObject(cursorQuery.getString(i));
                                        sb3.delete(i, sb3.length());
                                        if (!TextUtils.isEmpty(cursorQuery.getString(1))) {
                                            str3 = cursorQuery.getString(1);
                                        } else if (fp.a(jSONObject2, "mmac")) {
                                            sb3.append("#");
                                            sb3.append(jSONObject2.getString("mmac"));
                                        } else {
                                            jSONObject = new JSONObject(cursorQuery.getString(2));
                                            if (fp.a(jSONObject, "type")) {
                                                jSONObject.put("type", "new");
                                            }
                                        }
                                        sb3.append(str3);
                                        jSONObject = new JSONObject(cursorQuery.getString(2));
                                        if (fp.a(jSONObject, "type")) {
                                            jSONObject.put("type", "new");
                                        }
                                    } else {
                                        JSONObject jSONObject3 = new JSONObject(new String(ex.b(o.b(cursorQuery.getString(i)), this.l), "UTF-8"));
                                        sb3.delete(0, sb3.length());
                                        if (TextUtils.isEmpty(cursorQuery.getString(1))) {
                                            if (fp.a(jSONObject3, "mmac")) {
                                                sb3.append("#");
                                                sb3.append(jSONObject3.getString("mmac"));
                                            }
                                            jSONObject = new JSONObject(new String(ex.b(o.b(cursorQuery.getString(2)), this.l), "UTF-8"));
                                            if (fp.a(jSONObject, "type")) {
                                                jSONObject.put("type", "new");
                                            }
                                            jSONObject2 = jSONObject3;
                                        } else {
                                            str3 = new String(ex.b(o.b(cursorQuery.getString(1)), this.l), "UTF-8");
                                        }
                                        sb3.append(str3);
                                        jSONObject = new JSONObject(new String(ex.b(o.b(cursorQuery.getString(2)), this.l), "UTF-8"));
                                        if (fp.a(jSONObject, "type")) {
                                            jSONObject.put("type", "new");
                                        }
                                        jSONObject2 = jSONObject3;
                                    }
                                    en enVar = new en("");
                                    enVar.b(jSONObject);
                                    try {
                                        if (fp.a(jSONObject2, "mmac") && fp.a(jSONObject2, "cgi")) {
                                            String str4 = (jSONObject2.getString("cgi") + "#") + "network#";
                                            if (jSONObject2.getString("cgi").contains("#")) {
                                                sb = new StringBuilder();
                                                sb.append(str4);
                                                sb.append("cgiwifi");
                                            } else {
                                                sb = new StringBuilder();
                                                sb.append(str4);
                                                sb.append("wifi");
                                            }
                                            string = sb.toString();
                                        } else {
                                            if (fp.a(jSONObject2, "cgi")) {
                                                String str5 = (jSONObject2.getString("cgi") + "#") + "network#";
                                                if (jSONObject2.getString("cgi").contains("#")) {
                                                    string = str5 + "cgi";
                                                }
                                                if (!cursorQuery.moveToNext()) {
                                                    break;
                                                }
                                                sb2 = sb2;
                                                sQLiteDatabaseOpenOrCreateDatabase = sQLiteDatabase;
                                                i = 0;
                                            }
                                            sQLiteDatabase = sQLiteDatabaseOpenOrCreateDatabase;
                                            if (!cursorQuery.moveToNext()) {
                                                break;
                                                break;
                                            } else {
                                                sb2 = sb2;
                                                sQLiteDatabaseOpenOrCreateDatabase = sQLiteDatabase;
                                                i = 0;
                                            }
                                        }
                                        a(string, sb3, enVar, context, false);
                                        if (!cursorQuery.moveToNext()) {
                                            break;
                                            break;
                                        } else {
                                            sb2 = sb2;
                                            sQLiteDatabaseOpenOrCreateDatabase = sQLiteDatabase;
                                            i = 0;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                    sQLiteDatabase = sQLiteDatabaseOpenOrCreateDatabase;
                                }
                                sb3.delete(0, sb3.length());
                                sb2.delete(0, sb2.length());
                            }
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                                return;
                            }
                            sQLiteDatabase.close();
                            return;
                        } catch (Throwable th3) {
                            th = th3;
                            sQLiteDatabase = sQLiteDatabaseOpenOrCreateDatabase;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        cursorQuery = null;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    sQLiteDatabase = sQLiteDatabaseOpenOrCreateDatabase;
                    cursorQuery = null;
                }
                sQLiteDatabase2 = sQLiteDatabase;
            } catch (Throwable th6) {
                th = th6;
                cursorQuery = null;
            }
            try {
                fi.a(th, "DB", "fetchHist p2");
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                if (sQLiteDatabase2 != null && sQLiteDatabase2.isOpen()) {
                    sQLiteDatabase2.close();
                }
            }
        }
    }

    private void a(String str, AMapLocation aMapLocation, StringBuilder sb, Context context) throws Exception {
        if (context == null) {
            return;
        }
        if (this.l == null) {
            this.l = fp.m(context);
        }
        String strA = a(str, sb, context);
        StringBuilder sb2 = new StringBuilder();
        SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase = null;
        try {
            sQLiteDatabaseOpenOrCreateDatabase = context.openOrCreateDatabase("hmdb", 0, null);
            sb2.append("CREATE TABLE IF NOT EXISTS hist");
            sb2.append(this.k);
            sb2.append(" (feature VARCHAR PRIMARY KEY, nb VARCHAR, loc VARCHAR, time VARCHAR);");
            sQLiteDatabaseOpenOrCreateDatabase.execSQL(sb2.toString());
            sb2.delete(0, sb2.length());
            sb2.append("REPLACE INTO ");
            sb2.append("hist");
            sb2.append(this.k);
            sb2.append(" VALUES (?, ?, ?, ?)");
            Object[] objArr = new Object[4];
            objArr[0] = strA;
            byte[] bArrA = ex.a(sb.toString().getBytes("UTF-8"), this.l);
            objArr[1] = bArrA;
            objArr[2] = ex.a(aMapLocation.toStr().getBytes("UTF-8"), this.l);
            objArr[3] = Long.valueOf(aMapLocation.getTime());
            for (int i = 1; i < 3; i++) {
                objArr[i] = o.b((byte[]) objArr[i]);
            }
            sQLiteDatabaseOpenOrCreateDatabase.execSQL(sb2.toString(), objArr);
            sb2.delete(0, sb2.length());
            sb2.delete(0, sb2.length());
            if (sQLiteDatabaseOpenOrCreateDatabase == null || !sQLiteDatabaseOpenOrCreateDatabase.isOpen()) {
                return;
            }
            sQLiteDatabaseOpenOrCreateDatabase.close();
        } catch (Throwable th) {
            try {
                fi.a(th, "DB", "updateHist");
            } finally {
                sb2.delete(0, sb2.length());
                if (sQLiteDatabaseOpenOrCreateDatabase != null && sQLiteDatabaseOpenOrCreateDatabase.isOpen()) {
                    sQLiteDatabaseOpenOrCreateDatabase.close();
                }
            }
        }
    }

    private static void a(String str, Hashtable<String, String> hashtable) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        hashtable.clear();
        for (String str2 : str.split("#")) {
            if (!TextUtils.isEmpty(str2) && !str2.contains("|")) {
                hashtable.put(str2, "");
            }
        }
    }

    private boolean a(en enVar, boolean z) {
        if (a(z)) {
            return enVar == null || fh.a(enVar.getTime()) || z;
        }
        return false;
    }

    private static boolean a(String str, en enVar) {
        if (TextUtils.isEmpty(str) || !fp.a(enVar) || str.startsWith("#")) {
            return false;
        }
        return str.contains("network");
    }

    private static boolean a(String str, StringBuilder sb) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(sb) || !str.contains(",access") || sb.indexOf(",access") == -1) {
            return false;
        }
        String[] strArrSplit = str.split(",access");
        String strSubstring = strArrSplit[0].contains("#") ? strArrSplit[0].substring(strArrSplit[0].lastIndexOf("#") + 1) : strArrSplit[0];
        if (TextUtils.isEmpty(strSubstring)) {
            return false;
        }
        return sb.toString().contains(strSubstring + ",access");
    }

    private boolean a(boolean z) {
        if (fh.e() || z) {
            return this.b || fh.f() || z;
        }
        return false;
    }

    private static double[] a(double[] dArr, double[] dArr2) {
        double[] dArr3 = new double[3];
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < dArr.length; i3++) {
            d3 += dArr[i3] * dArr[i3];
            d4 += dArr2[i3] * dArr2[i3];
            d2 += dArr[i3] * dArr2[i3];
            if (dArr2[i3] == 1.0d) {
                i2++;
                if (dArr[i3] == 1.0d) {
                    i++;
                }
            }
        }
        dArr3[0] = d2 / (Math.sqrt(d3) * Math.sqrt(d4));
        double d5 = i;
        dArr3[1] = (d5 * 1.0d) / ((double) i2);
        dArr3[2] = d5;
        for (int i4 = 0; i4 < 2; i4++) {
            if (dArr3[i4] > 1.0d) {
                dArr3[i4] = 1.0d;
            }
        }
        return dArr3;
    }

    private boolean b() {
        long jB = fp.b();
        long j = this.i;
        long j2 = jB - j;
        if (j == 0) {
            return false;
        }
        return this.f12866a.size() > 360 || j2 > 172800000;
    }

    private void c() {
        this.i = 0L;
        if (!this.f12866a.isEmpty()) {
            this.f12866a.clear();
        }
        this.j = false;
    }

    private void c(Context context) throws Exception {
        if (context == null) {
            return;
        }
        SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase = null;
        try {
            sQLiteDatabaseOpenOrCreateDatabase = context.openOrCreateDatabase("hmdb", 0, null);
            if (!fp.a(sQLiteDatabaseOpenOrCreateDatabase, "hist")) {
                if (sQLiteDatabaseOpenOrCreateDatabase == null || !sQLiteDatabaseOpenOrCreateDatabase.isOpen()) {
                    return;
                }
                sQLiteDatabaseOpenOrCreateDatabase.close();
                return;
            }
            try {
                sQLiteDatabaseOpenOrCreateDatabase.delete("hist" + this.k, "time<?", new String[]{String.valueOf(fp.a() - 172800000)});
            } catch (Throwable th) {
                fi.a(th, "DB", "clearHist");
                String message = th.getMessage();
                if (!TextUtils.isEmpty(message)) {
                    message.contains("no such table");
                }
            }
            if (sQLiteDatabaseOpenOrCreateDatabase == null || !sQLiteDatabaseOpenOrCreateDatabase.isOpen()) {
                return;
            }
            sQLiteDatabaseOpenOrCreateDatabase.close();
        } catch (Throwable th2) {
            try {
                fi.a(th2, "DB", "clearHist p2");
            } finally {
                if (sQLiteDatabaseOpenOrCreateDatabase != null && sQLiteDatabaseOpenOrCreateDatabase.isOpen()) {
                    sQLiteDatabaseOpenOrCreateDatabase.close();
                }
            }
        }
    }

    public final en a(Context context, String str, StringBuilder sb, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str) || !fh.e()) {
            return null;
        }
        String str2 = str + "&" + this.f12869f + "&" + this.f12870g + "&" + this.f12871h;
        if (str2.contains("gps") || !fh.e() || sb == null) {
            return null;
        }
        if (b()) {
            c();
            return null;
        }
        if (z && !this.j) {
            try {
                String strA = a(str2, sb, context);
                c();
                a(context, strA, z2);
            } catch (Throwable unused) {
            }
        }
        if (this.f12866a.isEmpty()) {
            return null;
        }
        return a(str2, sb, z2);
    }

    /* JADX WARN: Code duplicated, block: B:62:0x00c3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:64:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:66:0x00d4 A[Catch: all -> 0x00ec, TryCatch #0 {all -> 0x00ec, blocks: (B:5:0x000f, B:7:0x0015, B:17:0x0029, B:27:0x004b, B:31:0x0053, B:33:0x0061, B:45:0x0086, B:47:0x008f, B:49:0x0093, B:51:0x0099, B:53:0x00a4, B:63:0x00c5, B:66:0x00d4, B:75:0x00e5, B:54:0x00a8, B:55:0x00ac, B:56:0x00b1, B:58:0x00b5, B:59:0x00ba, B:46:0x008d, B:39:0x0073, B:41:0x0079, B:9:0x0019, B:11:0x001d), top: B:79:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:69:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:71:0x00df A[ADDED_TO_REGION] */
    public final en a(es esVar, boolean z, en enVar, ew ewVar, StringBuilder sb, String str, Context context, boolean z2) {
        er erVar;
        boolean z3;
        boolean zA;
        long jA;
        String str2;
        en enVarA;
        boolean z4;
        String str3;
        if (!a(enVar, z2)) {
            return null;
        }
        try {
            er erVarD = esVar.d();
            boolean z5 = !(erVarD == null && this.f12868e == null) && ((erVar = this.f12868e) == null || !erVar.equals(erVarD));
            if (enVar != null) {
                z3 = enVar.getAccuracy() > 299.0f && ewVar.e().size() > 5;
            } else {
                z3 = false;
            }
            if (enVar == null || (str3 = this.f12867d) == null || z3 || z5) {
                zA = false;
            } else {
                zA = fp.a(str3, sb.toString());
                boolean z6 = this.c != 0 && fp.b() - this.c < 3000;
                if ((zA || z6) && fp.a(enVar)) {
                    enVar.e("mem");
                    enVar.setLocationType(2);
                    return enVar;
                }
            }
            if (zA) {
                this.c = 0L;
            } else {
                this.c = fp.b();
            }
            String str4 = this.m;
            if (str4 != null && !str.equals(str4)) {
                if (fp.a() - this.n < 3000) {
                    str2 = this.m;
                } else {
                    jA = fp.a();
                }
                if (z3) {
                    enVarA = null;
                } else {
                    enVarA = null;
                }
                if (z) {
                    z4 = false;
                } else {
                    z4 = false;
                }
                if (z4) {
                }
                return null;
            }
            if (this.m == null) {
                jA = fp.a();
            } else {
                this.n = fp.a();
            }
            str2 = str;
            if (z3 || z) {
                enVarA = null;
            } else {
                enVarA = a(context, str2, sb, false, false);
            }
            if (z || fp.a(enVarA)) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (!z4 || z3 || z) {
                return null;
            }
            this.c = 0L;
            enVarA.setLocationType(4);
            return enVarA;
            this.n = jA;
            this.m = str;
            str2 = str;
            if (z3) {
                enVarA = null;
            } else {
                enVarA = null;
            }
            if (z) {
                z4 = false;
            } else {
                z4 = false;
            }
            if (z4) {
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public final void a() {
        this.c = 0L;
        this.f12867d = null;
    }

    public final void a(Context context) {
        if (this.j) {
            return;
        }
        try {
            c();
            a(context, (String) null, false);
        } catch (Throwable th) {
            fi.a(th, "Cache", "loadDB");
        }
        this.j = true;
    }

    public final void a(AMapLocationClientOption aMapLocationClientOption) {
        this.f12870g = aMapLocationClientOption.isNeedAddress();
        this.f12869f = aMapLocationClientOption.isOffset();
        this.b = aMapLocationClientOption.isLocationCacheEnable();
        this.f12871h = String.valueOf(aMapLocationClientOption.getGeoLanguage());
    }

    public final void a(er erVar) {
        this.f12868e = erVar;
    }

    public final void a(String str) {
        this.f12867d = str;
    }

    public final void a(String str, StringBuilder sb, en enVar, Context context, boolean z) {
        try {
            if (fp.a(enVar)) {
                String str2 = str + "&" + enVar.isOffset() + "&" + enVar.i() + "&" + enVar.j();
                if (!a(str2, enVar) || enVar.e().equals("mem") || enVar.e().equals("file") || enVar.e().equals("wifioff") || "-3".equals(enVar.d())) {
                    return;
                }
                if (b()) {
                    c();
                }
                JSONObject jSONObjectF = enVar.f();
                if (fp.a(jSONObjectF, "offpct")) {
                    jSONObjectF.remove("offpct");
                    enVar.a(jSONObjectF);
                }
                if (str2.contains("wifi")) {
                    if (TextUtils.isEmpty(sb)) {
                        return;
                    }
                    if (enVar.getAccuracy() >= 300.0f) {
                        int i = 0;
                        for (String str3 : sb.toString().split("#")) {
                            if (str3.contains(",")) {
                                i++;
                            }
                        }
                        if (i >= 8) {
                            return;
                        }
                    } else if (enVar.getAccuracy() <= 3.0f) {
                        return;
                    }
                    if (str2.contains("cgiwifi") && !TextUtils.isEmpty(enVar.g())) {
                        String strReplace = str2.replace("cgiwifi", "cgi");
                        en enVarH = enVar.h();
                        if (fp.a(enVarH)) {
                            a(strReplace, new StringBuilder(), enVarH, context, true);
                        }
                    }
                } else if (str2.contains("cgi") && ((sb != null && sb.indexOf(",") != -1) || Constants.VIA_TO_TYPE_QZONE.equals(enVar.d()))) {
                    return;
                }
                en enVarA = a(str2, sb, false);
                if (fp.a(enVarA) && enVarA.toStr().equals(enVar.toStr(3))) {
                    return;
                }
                this.i = fp.b();
                a aVar = new a();
                aVar.a(enVar);
                aVar.a(TextUtils.isEmpty(sb) ? null : sb.toString());
                if (this.f12866a.containsKey(str2)) {
                    this.f12866a.get(str2).add(aVar);
                } else {
                    ArrayList<a> arrayList = new ArrayList<>();
                    arrayList.add(aVar);
                    this.f12866a.put(str2, arrayList);
                }
                if (z) {
                    try {
                        a(str2, enVar, sb, context);
                    } catch (Throwable th) {
                        fi.a(th, "Cache", "add");
                    }
                }
            }
        } catch (Throwable th2) {
            fi.a(th2, "Cache", "add");
        }
    }

    public final void b(Context context) {
        try {
            c();
            c(context);
            this.j = false;
            this.f12867d = null;
            this.n = 0L;
        } catch (Throwable th) {
            fi.a(th, "Cache", "destroy part");
        }
    }
}
