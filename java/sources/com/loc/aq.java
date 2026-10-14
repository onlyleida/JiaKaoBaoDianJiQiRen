package com.loc;

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
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class aq {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Map<Class<? extends ap>, ap> f12528d = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private at f12529a;
    private SQLiteDatabase b;
    private ap c;

    public aq(Context context, ap apVar) {
        try {
            this.f12529a = new at(context.getApplicationContext(), apVar.a(), apVar);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.c = apVar;
    }

    private static ContentValues a(Object obj, ar arVar) {
        ContentValues contentValues = new ContentValues();
        for (Field field : a(obj.getClass(), arVar.b())) {
            field.setAccessible(true);
            a(obj, field, contentValues);
        }
        return contentValues;
    }

    private SQLiteDatabase a() {
        try {
            if (this.b == null) {
                this.b = this.f12529a.getReadableDatabase();
            }
        } catch (Throwable th) {
            aj.a(th, "dbs", "grd");
        }
        return this.b;
    }

    public static synchronized ap a(Class<? extends ap> cls) throws IllegalAccessException, InstantiationException {
        if (f12528d.get(cls) == null) {
            f12528d.put(cls, cls.newInstance());
        }
        return f12528d.get(cls);
    }

    private static <T> T a(Cursor cursor, Class<T> cls, ar arVar) throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        Object objValueOf;
        Field[] fieldArrA = a((Class<?>) cls, arVar.b());
        Constructor<T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
        declaredConstructor.setAccessible(true);
        T tNewInstance = declaredConstructor.newInstance(new Object[0]);
        for (Field field : fieldArrA) {
            field.setAccessible(true);
            Annotation annotation = field.getAnnotation(as.class);
            if (annotation != null) {
                as asVar = (as) annotation;
                int iB = asVar.b();
                int columnIndex = cursor.getColumnIndex(asVar.a());
                switch (iB) {
                    case 1:
                        objValueOf = Short.valueOf(cursor.getShort(columnIndex));
                        break;
                    case 2:
                        objValueOf = Integer.valueOf(cursor.getInt(columnIndex));
                        break;
                    case 3:
                        objValueOf = Float.valueOf(cursor.getFloat(columnIndex));
                        break;
                    case 4:
                        objValueOf = Double.valueOf(cursor.getDouble(columnIndex));
                        break;
                    case 5:
                        objValueOf = Long.valueOf(cursor.getLong(columnIndex));
                        break;
                    case 6:
                        objValueOf = cursor.getString(columnIndex);
                        break;
                    case 7:
                        field.set(tNewInstance, cursor.getBlob(columnIndex));
                        continue;
                    default:
                        continue;
                }
                field.set(tNewInstance, objValueOf);
            }
        }
        return tNewInstance;
    }

    private static <T> String a(ar arVar) {
        if (arVar == null) {
            return null;
        }
        return arVar.a();
    }

    private static <T> void a(SQLiteDatabase sQLiteDatabase, T t) {
        ar arVarB = b((Class) t.getClass());
        String strA = a(arVarB);
        if (TextUtils.isEmpty(strA) || t == null || sQLiteDatabase == null) {
            return;
        }
        sQLiteDatabase.insert(strA, null, a(t, arVarB));
    }

    private <T> void a(T t) {
        b(t);
    }

    private static void a(Object obj, Field field, ContentValues contentValues) {
        Annotation annotation = field.getAnnotation(as.class);
        if (annotation == null) {
        }
        as asVar = (as) annotation;
        try {
            switch (asVar.b()) {
                case 1:
                    contentValues.put(asVar.a(), Short.valueOf(field.getShort(obj)));
                    break;
                case 2:
                    contentValues.put(asVar.a(), Integer.valueOf(field.getInt(obj)));
                    break;
                case 3:
                    contentValues.put(asVar.a(), Float.valueOf(field.getFloat(obj)));
                    break;
                case 4:
                    contentValues.put(asVar.a(), Double.valueOf(field.getDouble(obj)));
                    break;
                case 5:
                    contentValues.put(asVar.a(), Long.valueOf(field.getLong(obj)));
                    break;
                case 6:
                    contentValues.put(asVar.a(), (String) field.get(obj));
                    break;
                case 7:
                    contentValues.put(asVar.a(), (byte[]) field.get(obj));
                    break;
            }
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        }
    }

    private <T> void a(String str, Object obj) {
        synchronized (this.c) {
            if (obj == null) {
                return;
            }
            ar arVarB = b((Class) obj.getClass());
            String strA = a(arVarB);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            ContentValues contentValuesA = a(obj, arVarB);
            SQLiteDatabase sQLiteDatabaseB = b();
            this.b = sQLiteDatabaseB;
            if (sQLiteDatabaseB == null) {
                return;
            }
            try {
                sQLiteDatabaseB.update(strA, contentValuesA, str, null);
                SQLiteDatabase sQLiteDatabase = this.b;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                    this.b = null;
                }
            } catch (Throwable th) {
                try {
                    aj.a(th, "dbs", "udd");
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

    private static Field[] a(Class<?> cls, boolean z) {
        if (cls == null) {
            return null;
        }
        return z ? cls.getSuperclass().getDeclaredFields() : cls.getDeclaredFields();
    }

    private SQLiteDatabase b() {
        try {
            SQLiteDatabase sQLiteDatabase = this.b;
            if (sQLiteDatabase == null || sQLiteDatabase.isReadOnly()) {
                SQLiteDatabase sQLiteDatabase2 = this.b;
                if (sQLiteDatabase2 != null) {
                    sQLiteDatabase2.close();
                }
                this.b = this.f12529a.getWritableDatabase();
            }
        } catch (Throwable th) {
            aj.a(th, "dbs", "gwd");
        }
        return this.b;
    }

    private static <T> ar b(Class<T> cls) {
        Annotation annotation = cls.getAnnotation(ar.class);
        if (annotation != null) {
            return (ar) annotation;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:106:? A[Catch: all -> 0x00de, SYNTHETIC, TryCatch #10 {, blocks: (B:4:0x0003, B:6:0x0014, B:7:0x001a, B:9:0x001e, B:28:0x005e, B:27:0x0057, B:21:0x0045, B:63:0x00b8, B:45:0x008b, B:38:0x0075, B:56:0x00a1, B:77:0x00db, B:76:0x00d4, B:70:0x00c2, B:78:0x00dc, B:53:0x009c, B:67:0x00bd, B:71:0x00c9, B:73:0x00cd, B:35:0x0070, B:18:0x0040, B:22:0x004c, B:24:0x0050, B:51:0x0093), top: B:103:0x0003, inners: #0, #1, #4, #5, #6, #8, #9 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0050 A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #8 {all -> 0x0056, blocks: (B:22:0x004c, B:24:0x0050), top: B:99:0x004c, outer: #10 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x00cd A[Catch: all -> 0x00d3, TRY_LEAVE, TryCatch #4 {all -> 0x00d3, blocks: (B:71:0x00c9, B:73:0x00cd), top: B:91:0x00c9, outer: #10 }] */
    private <T> List<T> b(String str, Class<T> cls) {
        Cursor cursorQuery;
        SQLiteDatabase sQLiteDatabase;
        String str2;
        String str3;
        SQLiteDatabase sQLiteDatabase2;
        synchronized (this.c) {
            ArrayList arrayList = new ArrayList();
            ar arVarB = b((Class) cls);
            String strA = a(arVarB);
            if (this.b == null) {
                this.b = a();
            }
            if (this.b == null || TextUtils.isEmpty(strA) || str == null) {
                return arrayList;
            }
            try {
                cursorQuery = this.b.query(strA, null, str, null, null, null, null);
                try {
                    if (cursorQuery != null) {
                        while (cursorQuery.moveToNext()) {
                            arrayList.add(a(cursorQuery, cls, arVarB));
                        }
                        if (cursorQuery != null) {
                            try {
                                cursorQuery.close();
                            } catch (Throwable th) {
                                aj.a(th, "dbs", "sld");
                            }
                        }
                        try {
                            SQLiteDatabase sQLiteDatabase3 = this.b;
                            if (sQLiteDatabase3 != null) {
                                sQLiteDatabase3.close();
                                this.b = null;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            str2 = "dbs";
                            str3 = "sld";
                            aj.a(th, str2, str3);
                        }
                        return arrayList;
                    }
                    this.b.close();
                    this.b = null;
                    if (cursorQuery == null) {
                        sQLiteDatabase2 = this.b;
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.close();
                            this.b = null;
                        }
                        return arrayList;
                    }
                    try {
                        cursorQuery.close();
                    } catch (Throwable th3) {
                        aj.a(th3, "dbs", "sld");
                    }
                    try {
                        sQLiteDatabase2 = this.b;
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.close();
                            this.b = null;
                        }
                    } catch (Throwable th4) {
                        aj.a(th4, "dbs", "sld");
                    }
                    return arrayList;
                } catch (Throwable th5) {
                    th = th5;
                    try {
                        aj.a(th, "dbs", "sld");
                        if (cursorQuery != null) {
                            try {
                                cursorQuery.close();
                            } catch (Throwable th6) {
                                aj.a(th6, "dbs", "sld");
                            }
                        }
                        try {
                            SQLiteDatabase sQLiteDatabase4 = this.b;
                            if (sQLiteDatabase4 != null) {
                                sQLiteDatabase4.close();
                                this.b = null;
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            str2 = "dbs";
                            str3 = "sld";
                            aj.a(th, str2, str3);
                        }
                    } catch (Throwable th8) {
                        if (cursorQuery == null) {
                            sQLiteDatabase = this.b;
                            if (sQLiteDatabase != null) {
                                throw th8;
                            }
                            sQLiteDatabase.close();
                            this.b = null;
                            throw th8;
                        }
                        try {
                            cursorQuery.close();
                        } catch (Throwable th9) {
                            aj.a(th9, "dbs", "sld");
                        }
                        try {
                            sQLiteDatabase = this.b;
                            if (sQLiteDatabase != null) {
                                throw th8;
                            }
                            sQLiteDatabase.close();
                            this.b = null;
                            throw th8;
                        } catch (Throwable th10) {
                            aj.a(th10, "dbs", "sld");
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

    private <T> void b(T t) {
        synchronized (this.c) {
            SQLiteDatabase sQLiteDatabaseB = b();
            this.b = sQLiteDatabaseB;
            if (sQLiteDatabaseB == null) {
                return;
            }
            try {
                a(sQLiteDatabaseB, t);
                SQLiteDatabase sQLiteDatabase = this.b;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                    this.b = null;
                }
            } catch (Throwable th) {
                try {
                    aj.a(th, "dbs", "itd");
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

    private <T> void b(String str, Object obj) {
        a(str, obj);
    }

    public final <T> List<T> a(String str, Class<T> cls) {
        return b(str, (Class) cls);
    }

    public final void a(Object obj, String str) {
        synchronized (this.c) {
            List listA = a(str, (Class) obj.getClass());
            if (listA == null || listA.size() == 0) {
                a(obj);
            } else {
                b(str, obj);
            }
        }
    }
}
