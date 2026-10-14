package cn.mucang.android.core.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f2505a;
    private Map<Class<? extends IdEntity>, c> b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2506d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2507e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f2508f;

    public interface b {
        void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2);
    }

    private static class c<T extends IdEntity> implements cn.mucang.android.core.db.d<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Class<T> f2509a;
        private String b;
        private List<C0078a> c;

        /* JADX INFO: renamed from: cn.mucang.android.core.db.a$c$a, reason: collision with other inner class name */
        private static class C0078a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private Field f2510a;
            private String b;

            public C0078a(Field field, String str) {
                this.f2510a = field;
                this.b = str;
            }
        }

        public c(Class<T> cls) {
            this.f2509a = cls;
            e();
        }

        private String b(String str) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < str.length(); i++) {
                char cCharAt = str.charAt(i);
                if (Character.isUpperCase(cCharAt)) {
                    sb.append("_");
                    sb.append(Character.toLowerCase(cCharAt));
                } else {
                    sb.append(cCharAt);
                }
            }
            return sb.toString();
        }

        private String c(String str) {
            if (str.endsWith("Entity")) {
                str = str.substring(0, str.length() - 6);
            }
            return "t" + b(str);
        }

        private void e() {
            this.c = new ArrayList();
            for (Class<T> superclass = this.f2509a; superclass != Object.class; superclass = superclass.getSuperclass()) {
                for (Field field : superclass.getDeclaredFields()) {
                    if (!Modifier.isFinal(field.getModifiers()) && !Modifier.isStatic(field.getModifiers()) && !Modifier.isTransient(field.getModifiers())) {
                        this.c.add(new C0078a(field, a.r(field)));
                        field.setAccessible(true);
                    }
                }
            }
            this.b = c(this.f2509a.getSimpleName());
        }

        private T i(Cursor cursor, Map<String, Integer> map) throws IllegalAccessException, InstantiationException {
            Integer numValueOf;
            T tNewInstance = this.f2509a.newInstance();
            for (C0078a c0078a : this.c) {
                String str = c0078a.b;
                if (map != null) {
                    numValueOf = map.get(str);
                    if (numValueOf == null) {
                        numValueOf = Integer.valueOf(cursor.getColumnIndex(b(str)));
                        map.put(str, numValueOf);
                    }
                } else {
                    numValueOf = Integer.valueOf(cursor.getColumnIndex(b(str)));
                }
                Class<?> type = c0078a.f2510a.getType();
                Object objValueOf = null;
                if (type == String.class) {
                    objValueOf = cursor.getString(numValueOf.intValue());
                } else if (type == Integer.TYPE || type == Integer.class) {
                    objValueOf = Integer.valueOf(cursor.getInt(numValueOf.intValue()));
                } else if (type == Long.TYPE || type == Long.class) {
                    objValueOf = Long.valueOf(cursor.getLong(numValueOf.intValue()));
                } else if (type == Float.TYPE || type == Float.class) {
                    objValueOf = Float.valueOf(cursor.getFloat(numValueOf.intValue()));
                } else if (type == Double.TYPE || type == Double.class) {
                    objValueOf = Double.valueOf(cursor.getDouble(numValueOf.intValue()));
                } else if (type == Boolean.TYPE || type == Boolean.class) {
                    objValueOf = Boolean.valueOf(cursor.getInt(numValueOf.intValue()) == 1);
                } else if (type == Date.class) {
                    objValueOf = new Date(cursor.getLong(numValueOf.intValue()));
                }
                if (objValueOf != null) {
                    c0078a.f2510a.set(tNewInstance, objValueOf);
                }
            }
            return tNewInstance;
        }

        public String d() {
            return this.b;
        }

        @Override // cn.mucang.android.core.db.d
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public T a(Cursor cursor) {
            try {
                return (T) h(cursor);
            } catch (Exception e2) {
                t.c("默认替换", e2);
                return null;
            }
        }

        public ContentValues g(IdEntity idEntity) throws IllegalAccessException, IllegalArgumentException {
            ContentValues contentValues = new ContentValues();
            for (C0078a c0078a : this.c) {
                String str = c0078a.b;
                if (!"_id".equals(str)) {
                    String strB = b(str);
                    Object obj = c0078a.f2510a.get(idEntity);
                    Class<?> type = c0078a.f2510a.getType();
                    if (type == String.class) {
                        contentValues.put(strB, (String) obj);
                    } else if (type == Integer.TYPE || type == Integer.class) {
                        contentValues.put(strB, (Integer) obj);
                    } else if (type == Long.TYPE || type == Long.class) {
                        contentValues.put(strB, (Long) obj);
                    } else if (type == Float.TYPE || type == Float.class) {
                        contentValues.put(strB, (Float) obj);
                    } else if (type == Double.TYPE || type == Double.class) {
                        contentValues.put(strB, (Double) obj);
                    } else if (type == Boolean.TYPE || type == Boolean.class) {
                        contentValues.put(strB, Integer.valueOf(Boolean.parseBoolean(String.valueOf(obj)) ? 1 : 0));
                    } else {
                        if (type != Date.class) {
                            throw new IllegalArgumentException("非法的实体类型,fieldName=" + str + ",type=" + type);
                        }
                        Date date = (Date) obj;
                        if (date != null) {
                            contentValues.put(strB, Long.valueOf(date.getTime()));
                        } else {
                            contentValues.put(strB, (Long) 0L);
                        }
                    }
                }
            }
            return contentValues;
        }

        public T h(Cursor cursor) throws IllegalAccessException, InstantiationException {
            return (T) i(cursor, null);
        }

        public List<T> j(Cursor cursor) throws IllegalAccessException, InstantiationException {
            HashMap map = new HashMap();
            ArrayList arrayList = new ArrayList();
            while (cursor.moveToNext()) {
                IdEntity idEntityI = i(cursor, map);
                if (idEntityI != null) {
                    arrayList.add(idEntityI);
                }
            }
            return arrayList;
        }
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface d {
        String value();
    }

    private class e extends SQLiteOpenHelper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f2511a;

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.beginTransaction();
            try {
                try {
                    List<String> listZ = a.z(j.j(this.f2511a, a.this.f2506d));
                    if (g.b(listZ)) {
                        return;
                    }
                    Iterator<String> it = listZ.iterator();
                    while (it.hasNext()) {
                        sQLiteDatabase.execSQL(it.next());
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                } catch (Exception e2) {
                    t.c("默认替换", e2);
                }
            } finally {
                sQLiteDatabase.endTransaction();
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (a.this.f2508f != null) {
                a.this.f2508f.onUpgrade(sQLiteDatabase, i, i2);
            } else {
                t.m("HadesLee", "需要更数据库，却没有相关的实现...");
            }
        }

        private e(Context context) {
            super(context, a.this.c, (SQLiteDatabase.CursorFactory) null, a.this.f2507e);
            this.f2511a = context;
        }
    }

    public a(String str, int i) {
        t(str, f(str), i, new cn.mucang.android.core.db.c(g(str)), MucangConfig.getContext());
    }

    private void l(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            try {
                if (sQLiteDatabase.isOpen()) {
                    sQLiteDatabase.endTransaction();
                }
            } catch (Exception e2) {
                t.c("默认替换", e2);
            }
        }
    }

    private <T extends IdEntity> c<T> p(Class<T> cls) {
        c<T> cVar = this.b.get(cls);
        if (cVar != null) {
            return cVar;
        }
        c<T> cVar2 = new c<>(cls);
        this.b.put(cls, cVar2);
        return cVar2;
    }

    private <T extends IdEntity> c<T> q(T t) {
        Class<?> cls = t.getClass();
        c<T> cVar = this.b.get(cls);
        if (cVar != null) {
            return cVar;
        }
        c<T> cVar2 = new c<>(cls);
        this.b.put((Class<? extends IdEntity>) cls, cVar2);
        return cVar2;
    }

    static String r(Field field) {
        try {
            d dVar = (d) field.getAnnotation(d.class);
            return dVar == null ? field.getName() : dVar.value();
        } catch (Exception unused) {
            return field.getName();
        }
    }

    private void t(String str, String str2, int i, b bVar, Context context) {
        this.c = str;
        this.f2506d = str2;
        this.f2507e = i;
        this.f2508f = bVar;
        if (context == null) {
            context = MucangConfig.getContext();
        }
        this.f2505a = new e(context);
        this.b = new HashMap();
    }

    public static boolean x(IdEntity idEntity) {
        return (idEntity == null || idEntity.getId() == null || idEntity.getId().longValue() <= 0) ? false : true;
    }

    public static List<String> z(String str) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : str.split(VoiceWakeuperAidl.PARAMS_SEPARATE)) {
            if (!n0.e(str2)) {
                arrayList.add(str2.replaceAll("\\n", ""));
            }
        }
        return arrayList;
    }

    public synchronized <T extends IdEntity> int A(Class<T> cls, ContentValues contentValues, long j) {
        return C(p(cls).d(), contentValues, j);
    }

    public synchronized <T extends IdEntity> int B(Class<T> cls, ContentValues contentValues, String str, String[] strArr) {
        return D(p(cls).d(), contentValues, str, strArr);
    }

    public synchronized int C(String str, ContentValues contentValues, long j) {
        int iUpdate;
        SQLiteDatabase writableDatabase = null;
        try {
            try {
                writableDatabase = this.f2505a.getWritableDatabase();
                writableDatabase.beginTransaction();
                iUpdate = writableDatabase.update(str, contentValues, "_id=?", new String[]{String.valueOf(j)});
                writableDatabase.setTransactionSuccessful();
                l(writableDatabase);
                j.c(writableDatabase);
            } catch (Exception e2) {
                t.c("默认替换", e2);
                l(writableDatabase);
                j.c(writableDatabase);
                return -1;
            }
        } catch (Throwable th) {
            l(writableDatabase);
            j.c(writableDatabase);
            throw th;
        }
        return iUpdate;
    }

    public synchronized int D(String str, ContentValues contentValues, String str2, String[] strArr) {
        int iUpdate;
        SQLiteDatabase writableDatabase = null;
        try {
            try {
                writableDatabase = this.f2505a.getWritableDatabase();
                writableDatabase.beginTransaction();
                iUpdate = writableDatabase.update(str, contentValues, str2, strArr);
                writableDatabase.setTransactionSuccessful();
                l(writableDatabase);
                j.c(writableDatabase);
            } catch (Exception e2) {
                t.c("默认替换", e2);
                l(writableDatabase);
                j.c(writableDatabase);
                return -1;
            }
        } catch (Throwable th) {
            l(writableDatabase);
            j.c(writableDatabase);
            throw th;
        }
        return iUpdate;
    }

    public synchronized <T extends IdEntity> void E(T t) {
        F(t);
    }

    public synchronized <T extends IdEntity> int F(T t) {
        int iUpdate;
        SQLiteDatabase writableDatabase = null;
        try {
            try {
                writableDatabase = this.f2505a.getWritableDatabase();
                writableDatabase.beginTransaction();
                c<T> cVarQ = q(t);
                iUpdate = writableDatabase.update(cVarQ.d(), cVarQ.g(t), "_id=?", new String[]{String.valueOf(t.getId())});
                writableDatabase.setTransactionSuccessful();
                l(writableDatabase);
                j.c(writableDatabase);
            } catch (Exception e2) {
                t.c("默认替换", e2);
                l(writableDatabase);
                j.c(writableDatabase);
                return -1;
            }
        } catch (Throwable th) {
            l(writableDatabase);
            j.c(writableDatabase);
            throw th;
        }
        return iUpdate;
    }

    public synchronized <T extends IdEntity> long e(Class<T> cls) {
        SQLiteDatabase readableDatabase;
        c<T> cVarP = p(cls);
        Cursor cursorRawQuery = null;
        try {
            try {
                readableDatabase = this.f2505a.getReadableDatabase();
                try {
                    cursorRawQuery = readableDatabase.rawQuery("select count(*) from " + cVarP.d(), null);
                    cursorRawQuery.moveToFirst();
                    long j = cursorRawQuery.getLong(0);
                    j.b(cursorRawQuery);
                    j.c(readableDatabase);
                    return j;
                } catch (Exception e2) {
                    e = e2;
                    t.c("默认替换", e);
                    j.b(cursorRawQuery);
                    j.c(readableDatabase);
                    return -1L;
                }
            } catch (Throwable th) {
                th = th;
                j.b(null);
                j.c(null);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            readableDatabase = null;
        } catch (Throwable th2) {
            th = th2;
            j.b(null);
            j.c(null);
            throw th;
        }
    }

    protected String f(String str) {
        return str + "_create.sql";
    }

    protected String g(String str) {
        return str + "_upgrade_";
    }

    public synchronized <T extends IdEntity> int h(Class<T> cls, long j) {
        return i(p(cls).d(), j);
    }

    public synchronized int i(String str, long j) {
        int iDelete;
        SQLiteDatabase writableDatabase = null;
        try {
            try {
                writableDatabase = this.f2505a.getWritableDatabase();
                writableDatabase.beginTransaction();
                iDelete = writableDatabase.delete(str, "_id=?", new String[]{String.valueOf(j)});
                writableDatabase.setTransactionSuccessful();
                l(writableDatabase);
                j.c(writableDatabase);
            } catch (Exception e2) {
                t.c("默认替换", e2);
                l(writableDatabase);
                j.c(writableDatabase);
                return -1;
            }
        } catch (Throwable th) {
            l(writableDatabase);
            j.c(writableDatabase);
            throw th;
        }
        return iDelete;
    }

    public synchronized <T extends IdEntity> int j(Class<T> cls, String str, String[] strArr) {
        return k(p(cls).d(), str, strArr);
    }

    public synchronized int k(String str, String str2, String[] strArr) {
        int iDelete;
        SQLiteDatabase writableDatabase = null;
        try {
            try {
                writableDatabase = this.f2505a.getWritableDatabase();
                writableDatabase.beginTransaction();
                iDelete = writableDatabase.delete(str, str2, strArr);
                writableDatabase.setTransactionSuccessful();
                l(writableDatabase);
                j.c(writableDatabase);
            } catch (Exception e2) {
                t.c("默认替换", e2);
                l(writableDatabase);
                j.c(writableDatabase);
                return -1;
            }
        } catch (Throwable th) {
            l(writableDatabase);
            j.c(writableDatabase);
            throw th;
        }
        return iDelete;
    }

    public synchronized <T extends IdEntity> T m(Class<T> cls, long j) {
        return (T) n(cls, new cn.mucang.android.core.db.e("select * from " + p(cls).d() + " where _id=" + j));
    }

    public synchronized <T extends IdEntity> T n(Class<T> cls, cn.mucang.android.core.db.e eVar) {
        return (T) o(p(cls), eVar);
    }

    public synchronized <T> T o(cn.mucang.android.core.db.d<T> dVar, cn.mucang.android.core.db.e eVar) {
        SQLiteDatabase readableDatabase;
        Cursor cursorRawQuery;
        Cursor cursor = null;
        try {
            try {
                readableDatabase = this.f2505a.getReadableDatabase();
                try {
                    cursorRawQuery = readableDatabase.rawQuery(eVar.f(), eVar.e());
                    try {
                        try {
                            if (cursorRawQuery.moveToNext()) {
                                T tA = dVar.a(cursorRawQuery);
                                j.b(cursorRawQuery);
                                j.c(readableDatabase);
                                return tA;
                            }
                            j.b(cursorRawQuery);
                        } catch (Exception e2) {
                            e = e2;
                            t.c("默认替换", e);
                            j.b(cursorRawQuery);
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorRawQuery;
                        j.b(cursor);
                        j.c(readableDatabase);
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    cursorRawQuery = null;
                } catch (Throwable th2) {
                    th = th2;
                    j.b(cursor);
                    j.c(readableDatabase);
                    throw th;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        } catch (Exception e4) {
            e = e4;
            cursorRawQuery = null;
            readableDatabase = null;
        } catch (Throwable th4) {
            th = th4;
            readableDatabase = null;
        }
        j.c(readableDatabase);
        return null;
    }

    public SQLiteOpenHelper s() {
        return this.f2505a;
    }

    public synchronized <T extends IdEntity> void u(T t) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                try {
                    SQLiteDatabase writableDatabase = this.f2505a.getWritableDatabase();
                    try {
                        writableDatabase.beginTransaction();
                        c<T> cVarQ = q(t);
                        long jInsert = writableDatabase.insert(cVarQ.d(), null, cVarQ.g(t));
                        if (jInsert != -1) {
                            t.setId(Long.valueOf(jInsert));
                        }
                        writableDatabase.setTransactionSuccessful();
                        l(writableDatabase);
                        j.c(writableDatabase);
                    } catch (Exception e2) {
                        e = e2;
                        sQLiteDatabase = writableDatabase;
                        t.c("默认替换", e);
                        l(sQLiteDatabase);
                        j.c(sQLiteDatabase);
                    } catch (Throwable th) {
                        th = th;
                        sQLiteDatabase = writableDatabase;
                        l(sQLiteDatabase);
                        j.c(sQLiteDatabase);
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    public synchronized <T extends IdEntity> void v(List<T> list) {
        if (g.b(list)) {
            return;
        }
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                SQLiteDatabase writableDatabase = this.f2505a.getWritableDatabase();
                try {
                    writableDatabase.beginTransaction();
                    for (T t : list) {
                        c<T> cVarQ = q(t);
                        long jInsert = writableDatabase.insert(cVarQ.d(), null, cVarQ.g(t));
                        if (jInsert != -1) {
                            t.setId(Long.valueOf(jInsert));
                        }
                    }
                    writableDatabase.setTransactionSuccessful();
                    l(writableDatabase);
                    j.c(writableDatabase);
                } catch (Exception e2) {
                    e = e2;
                    sQLiteDatabase = writableDatabase;
                    t.c("默认替换", e);
                    l(sQLiteDatabase);
                    j.c(sQLiteDatabase);
                } catch (Throwable th) {
                    th = th;
                    sQLiteDatabase = writableDatabase;
                    l(sQLiteDatabase);
                    j.c(sQLiteDatabase);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public synchronized <T extends IdEntity> void w(T t) {
        if (x(t)) {
            E(t);
        } else {
            u(t);
        }
    }

    public synchronized <T extends IdEntity> List<T> y(Class<T> cls, cn.mucang.android.core.db.e eVar) {
        SQLiteDatabase readableDatabase;
        c<T> cVarP = p(cls);
        Cursor cursorRawQuery = null;
        try {
            try {
                readableDatabase = this.f2505a.getReadableDatabase();
                try {
                    cursorRawQuery = readableDatabase.rawQuery(eVar.f(), eVar.e());
                    List<T> listJ = cVarP.j(cursorRawQuery);
                    j.b(cursorRawQuery);
                    j.c(readableDatabase);
                    return listJ;
                } catch (Exception e2) {
                    e = e2;
                    t.c("默认替换", e);
                    j.b(cursorRawQuery);
                    j.c(readableDatabase);
                    return Collections.emptyList();
                }
            } catch (Throwable th) {
                th = th;
                j.b(null);
                j.c(null);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            readableDatabase = null;
        } catch (Throwable th2) {
            th = th2;
            j.b(null);
            j.c(null);
            throw th;
        }
    }

    a(String str, String str2, int i, Context context, b bVar) {
        t(str, str2, i, bVar, context);
    }
}
