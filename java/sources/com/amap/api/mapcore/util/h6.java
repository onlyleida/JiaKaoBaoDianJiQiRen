package com.amap.api.mapcore.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class h6 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Map<Class<? extends g6>, g6> f10873d = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private k6 f10874a;
    private SQLiteDatabase b;
    private g6 c;

    public h6(Context context, g6 g6Var) {
        try {
            this.f10874a = new k6(context.getApplicationContext(), g6Var.b(), null, g6Var.c(), g6Var);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.c = g6Var;
    }

    private ContentValues a(Object obj, i6 i6Var) {
        ContentValues contentValues = new ContentValues();
        for (Field field : r(obj.getClass(), i6Var.b())) {
            field.setAccessible(true);
            k(obj, field, contentValues);
        }
        return contentValues;
    }

    private SQLiteDatabase b(boolean z) {
        try {
            if (this.b == null) {
                this.b = this.f10874a.getReadableDatabase();
            }
        } catch (Throwable th) {
            if (z) {
                th.printStackTrace();
            } else {
                b6.e(th, "dbs", "grd");
            }
        }
        return this.b;
    }

    public static synchronized g6 c(Class<? extends g6> cls) throws IllegalAccessException, InstantiationException {
        if (f10873d.get(cls) == null) {
            f10873d.put(cls, cls.newInstance());
        }
        return f10873d.get(cls);
    }

    private <T> T d(Cursor cursor, Class<T> cls, i6 i6Var) throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        Field[] fieldArrR = r(cls, i6Var.b());
        Constructor<T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
        declaredConstructor.setAccessible(true);
        T tNewInstance = declaredConstructor.newInstance(new Object[0]);
        for (Field field : fieldArrR) {
            field.setAccessible(true);
            Annotation annotation = field.getAnnotation(j6.class);
            if (annotation != null) {
                j6 j6Var = (j6) annotation;
                int iB = j6Var.b();
                int columnIndex = cursor.getColumnIndex(j6Var.a());
                switch (iB) {
                    case 1:
                        field.set(tNewInstance, Short.valueOf(cursor.getShort(columnIndex)));
                        break;
                    case 2:
                        field.set(tNewInstance, Integer.valueOf(cursor.getInt(columnIndex)));
                        break;
                    case 3:
                        field.set(tNewInstance, Float.valueOf(cursor.getFloat(columnIndex)));
                        break;
                    case 4:
                        field.set(tNewInstance, Double.valueOf(cursor.getDouble(columnIndex)));
                        break;
                    case 5:
                        field.set(tNewInstance, Long.valueOf(cursor.getLong(columnIndex)));
                        break;
                    case 6:
                        field.set(tNewInstance, cursor.getString(columnIndex));
                        break;
                    case 7:
                        field.set(tNewInstance, cursor.getBlob(columnIndex));
                        break;
                }
            }
        }
        return tNewInstance;
    }

    private <T> String e(i6 i6Var) {
        if (i6Var == null) {
            return null;
        }
        return i6Var.a();
    }

    public static String f(Map<String, String> map) {
        if (map == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : map.keySet()) {
            if (z) {
                sb.append(str);
                sb.append(" = '");
                sb.append(map.get(str));
                sb.append("'");
                z = false;
            } else {
                sb.append(" and ");
                sb.append(str);
                sb.append(" = '");
                sb.append(map.get(str));
                sb.append("'");
            }
        }
        return sb.toString();
    }

    private <T> void h(SQLiteDatabase sQLiteDatabase, T t) {
        ContentValues contentValuesA;
        i6 i6VarT = t(t.getClass());
        String strE = e(i6VarT);
        if (TextUtils.isEmpty(strE) || t == null || sQLiteDatabase == null || (contentValuesA = a(t, i6VarT)) == null) {
            return;
        }
        sQLiteDatabase.insert(strE, null, contentValuesA);
    }

    private void k(Object obj, Field field, ContentValues contentValues) {
        Annotation annotation = field.getAnnotation(j6.class);
        if (annotation == null) {
            return;
        }
        j6 j6Var = (j6) annotation;
        try {
            switch (j6Var.b()) {
                case 1:
                    contentValues.put(j6Var.a(), Short.valueOf(field.getShort(obj)));
                    break;
                case 2:
                    contentValues.put(j6Var.a(), Integer.valueOf(field.getInt(obj)));
                    break;
                case 3:
                    contentValues.put(j6Var.a(), Float.valueOf(field.getFloat(obj)));
                    break;
                case 4:
                    contentValues.put(j6Var.a(), Double.valueOf(field.getDouble(obj)));
                    break;
                case 5:
                    contentValues.put(j6Var.a(), Long.valueOf(field.getLong(obj)));
                    break;
                case 6:
                    contentValues.put(j6Var.a(), (String) field.get(obj));
                    break;
                case 7:
                    contentValues.put(j6Var.a(), (byte[]) field.get(obj));
                    break;
                default:
                    return;
            }
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        }
    }

    private boolean q(Annotation annotation) {
        return annotation != null;
    }

    private Field[] r(Class<?> cls, boolean z) {
        if (cls == null) {
            return null;
        }
        return z ? cls.getSuperclass().getDeclaredFields() : cls.getDeclaredFields();
    }

    private SQLiteDatabase s(boolean z) {
        try {
            SQLiteDatabase sQLiteDatabase = this.b;
            if (sQLiteDatabase == null || sQLiteDatabase.isReadOnly()) {
                SQLiteDatabase sQLiteDatabase2 = this.b;
                if (sQLiteDatabase2 != null) {
                    sQLiteDatabase2.close();
                }
                this.b = this.f10874a.getWritableDatabase();
            }
        } catch (Throwable th) {
            b6.e(th, "dbs", "gwd");
        }
        return this.b;
    }

    private <T> i6 t(Class<T> cls) {
        Annotation annotation = cls.getAnnotation(i6.class);
        if (q(annotation)) {
            return (i6) annotation;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0052 A[Catch: all -> 0x0058, TRY_LEAVE, TryCatch #7 {all -> 0x0058, blocks: (B:23:0x004e, B:25:0x0052), top: B:106:0x004e, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00bb A[Catch: all -> 0x00c1, TRY_LEAVE, TryCatch #0 {all -> 0x00c1, blocks: (B:65:0x00b7, B:67:0x00bb), top: B:93:0x00b7, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x00e0 A[Catch: all -> 0x00e6, TRY_LEAVE, TryCatch #4 {all -> 0x00e6, blocks: (B:79:0x00dc, B:81:0x00e0), top: B:100:0x00dc }] */
    /* JADX WARN: Code duplicated, block: B:95:0x00ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public <T> List<T> g(String str, Class<T> cls, boolean z) {
        Cursor cursorQuery;
        SQLiteDatabase sQLiteDatabase;
        String str2;
        String str3;
        SQLiteDatabase sQLiteDatabase2;
        SQLiteDatabase sQLiteDatabase3;
        synchronized (this.c) {
            ArrayList arrayList = new ArrayList();
            i6 i6VarT = t(cls);
            String strE = e(i6VarT);
            if (this.b == null) {
                this.b = b(z);
            }
            if (this.b == null || TextUtils.isEmpty(strE) || str == null) {
                return arrayList;
            }
            try {
                cursorQuery = this.b.query(strE, null, str, null, null, null, null);
                try {
                    if (cursorQuery != null) {
                        while (cursorQuery.moveToNext()) {
                            arrayList.add(d(cursorQuery, cls, i6VarT));
                        }
                        if (cursorQuery != null) {
                            try {
                                cursorQuery.close();
                            } catch (Throwable th) {
                                if (!z) {
                                    b6.e(th, "dbs", "sld");
                                }
                            }
                        }
                        try {
                            SQLiteDatabase sQLiteDatabase4 = this.b;
                            if (sQLiteDatabase4 != null) {
                                sQLiteDatabase4.close();
                                this.b = null;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (!z) {
                                str2 = "dbs";
                                str3 = "sld";
                                b6.e(th, str2, str3);
                            }
                        }
                        return arrayList;
                    }
                    this.b.close();
                    this.b = null;
                    if (cursorQuery == null) {
                        sQLiteDatabase3 = this.b;
                        if (sQLiteDatabase3 != null) {
                            sQLiteDatabase3.close();
                            this.b = null;
                        }
                        return arrayList;
                    }
                    try {
                        cursorQuery.close();
                    } catch (Throwable th3) {
                        if (!z) {
                            b6.e(th3, "dbs", "sld");
                        }
                    }
                    try {
                        sQLiteDatabase3 = this.b;
                        if (sQLiteDatabase3 != null) {
                            sQLiteDatabase3.close();
                            this.b = null;
                        }
                    } catch (Throwable th4) {
                        if (!z) {
                            b6.e(th4, "dbs", "sld");
                        }
                    }
                    return arrayList;
                } catch (Throwable th5) {
                    th = th5;
                    if (z) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        sQLiteDatabase2 = this.b;
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.close();
                            this.b = null;
                        }
                    } else {
                        try {
                            b6.e(th, "dbs", "sld");
                            if (cursorQuery != null) {
                                try {
                                    cursorQuery.close();
                                } catch (Throwable th6) {
                                    if (!z) {
                                        b6.e(th6, "dbs", "sld");
                                    }
                                }
                            }
                            try {
                                sQLiteDatabase2 = this.b;
                                if (sQLiteDatabase2 != null) {
                                    sQLiteDatabase2.close();
                                    this.b = null;
                                }
                            } catch (Throwable th7) {
                                th = th7;
                                if (!z) {
                                    str2 = "dbs";
                                    str3 = "sld";
                                    b6.e(th, str2, str3);
                                }
                            }
                        } catch (Throwable th8) {
                            if (cursorQuery == null) {
                                sQLiteDatabase = this.b;
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                    this.b = null;
                                }
                                throw th8;
                            }
                            try {
                                cursorQuery.close();
                            } catch (Throwable th9) {
                                if (!z) {
                                    b6.e(th9, "dbs", "sld");
                                }
                            }
                            try {
                                sQLiteDatabase = this.b;
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                    this.b = null;
                                }
                            } catch (Throwable th10) {
                                if (!z) {
                                    b6.e(th10, "dbs", "sld");
                                }
                            }
                            throw th8;
                        }
                    }
                }
            } catch (Throwable th11) {
                th = th11;
                cursorQuery = null;
            }
            throw th;
        }
    }

    public <T> void i(T t) {
        l(t, false);
    }

    public void j(Object obj, String str) {
        synchronized (this.c) {
            List listU = u(str, obj.getClass());
            if (listU == null || listU.size() == 0) {
                i(obj);
            } else {
                n(str, obj);
            }
        }
    }

    public <T> void l(T t, boolean z) {
        synchronized (this.c) {
            SQLiteDatabase sQLiteDatabaseS = s(z);
            this.b = sQLiteDatabaseS;
            if (sQLiteDatabaseS == null) {
                return;
            }
            try {
                h(sQLiteDatabaseS, t);
                SQLiteDatabase sQLiteDatabase = this.b;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                    this.b = null;
                }
            } catch (Throwable th) {
                try {
                    b6.e(th, "dbs", "itd");
                    SQLiteDatabase sQLiteDatabase2 = this.b;
                    if (sQLiteDatabase2 != null) {
                        sQLiteDatabase2.close();
                    }
                } catch (Throwable th2) {
                    SQLiteDatabase sQLiteDatabase3 = this.b;
                    if (sQLiteDatabase3 != null) {
                        sQLiteDatabase3.close();
                        this.b = null;
                    }
                    throw th2;
                }
            }
        }
    }

    public <T> void m(String str, Class<T> cls) {
        synchronized (this.c) {
            String strE = e(t(cls));
            if (TextUtils.isEmpty(strE)) {
                return;
            }
            SQLiteDatabase sQLiteDatabaseS = s(false);
            this.b = sQLiteDatabaseS;
            if (sQLiteDatabaseS == null) {
                return;
            }
            try {
                sQLiteDatabaseS.delete(strE, str, null);
                SQLiteDatabase sQLiteDatabase = this.b;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                    this.b = null;
                }
            } catch (Throwable th) {
                try {
                    b6.e(th, "dbs", "dld");
                    SQLiteDatabase sQLiteDatabase2 = this.b;
                    if (sQLiteDatabase2 != null) {
                        sQLiteDatabase2.close();
                    }
                } catch (Throwable th2) {
                    SQLiteDatabase sQLiteDatabase3 = this.b;
                    if (sQLiteDatabase3 != null) {
                        sQLiteDatabase3.close();
                        this.b = null;
                    }
                    throw th2;
                }
            }
        }
    }

    public <T> void n(String str, Object obj) {
        o(str, obj, false);
    }

    public <T> void o(String str, Object obj, boolean z) {
        synchronized (this.c) {
            if (obj == null) {
                return;
            }
            i6 i6VarT = t(obj.getClass());
            String strE = e(i6VarT);
            if (TextUtils.isEmpty(strE)) {
                return;
            }
            ContentValues contentValuesA = a(obj, i6VarT);
            if (contentValuesA == null) {
                return;
            }
            SQLiteDatabase sQLiteDatabaseS = s(z);
            this.b = sQLiteDatabaseS;
            if (sQLiteDatabaseS == null) {
                return;
            }
            try {
                sQLiteDatabaseS.update(strE, contentValuesA, str, null);
                SQLiteDatabase sQLiteDatabase = this.b;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                    this.b = null;
                }
            } catch (Throwable th) {
                try {
                    if (z) {
                        th.printStackTrace();
                    } else {
                        b6.e(th, "dbs", "udd");
                    }
                    SQLiteDatabase sQLiteDatabase2 = this.b;
                    if (sQLiteDatabase2 != null) {
                        sQLiteDatabase2.close();
                    }
                } catch (Throwable th2) {
                    SQLiteDatabase sQLiteDatabase3 = this.b;
                    if (sQLiteDatabase3 != null) {
                        sQLiteDatabase3.close();
                        this.b = null;
                    }
                    throw th2;
                }
            }
        }
    }

    public <T> void p(List<T> list) {
        String str;
        String str2;
        synchronized (this.c) {
            if (list != null) {
                if (list.size() != 0) {
                    SQLiteDatabase sQLiteDatabaseS = s(false);
                    this.b = sQLiteDatabaseS;
                    if (sQLiteDatabaseS == null) {
                        return;
                    }
                    try {
                        sQLiteDatabaseS.beginTransaction();
                        Iterator<T> it = list.iterator();
                        while (it.hasNext()) {
                            h(this.b, it.next());
                        }
                        this.b.setTransactionSuccessful();
                        try {
                            if (this.b.inTransaction()) {
                                this.b.endTransaction();
                            }
                        } catch (Throwable th) {
                            b6.e(th, "dbs", "ild");
                        }
                        try {
                            this.b.close();
                            this.b = null;
                        } catch (Throwable th2) {
                            th = th2;
                            str = "dbs";
                            str2 = "ild";
                            b6.e(th, str, str2);
                        }
                    } catch (Throwable th3) {
                        try {
                            b6.e(th3, "dbs", "ild");
                            try {
                                if (this.b.inTransaction()) {
                                    this.b.endTransaction();
                                }
                            } catch (Throwable th4) {
                                b6.e(th4, "dbs", "ild");
                            }
                            try {
                                this.b.close();
                                this.b = null;
                            } catch (Throwable th5) {
                                th = th5;
                                str = "dbs";
                                str2 = "ild";
                                b6.e(th, str, str2);
                            }
                        } catch (Throwable th6) {
                            try {
                                if (!this.b.inTransaction()) {
                                    this.b.close();
                                    this.b = null;
                                    throw th6;
                                }
                                this.b.endTransaction();
                                try {
                                    this.b.close();
                                    this.b = null;
                                    throw th6;
                                } catch (Throwable th7) {
                                    b6.e(th7, "dbs", "ild");
                                    throw th6;
                                }
                            } catch (Throwable th8) {
                                b6.e(th8, "dbs", "ild");
                            }
                        }
                    }
                }
            }
        }
    }

    public <T> List<T> u(String str, Class<T> cls) {
        return g(str, cls, false);
    }
}
