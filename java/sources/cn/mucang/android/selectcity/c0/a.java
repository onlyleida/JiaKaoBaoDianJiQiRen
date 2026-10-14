package cn.mucang.android.selectcity.c0;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.framework.select.city.R;
import cn.mucang.android.selectcity.Area;
import cn.mucang.android.selectcity.a0.b;
import cn.mucang.android.selectcity.u;
import cn.mucang.jiakaoyi.uilib.ui.billing.StudentModel;
import com.alibaba.fastjson.JSON;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SQLiteDatabase f8927a;

    private static synchronized void a() {
        SQLiteDatabase sQLiteDatabase = f8927a;
        if (sQLiteDatabase != null) {
            try {
                j.c(sQLiteDatabase);
            } catch (Exception e2) {
                t.c("Exception", e2);
            }
        }
    }

    private static void b(File file) throws Throwable {
        FileOutputStream fileOutputStream;
        file.getParentFile().mkdirs();
        InputStream inputStream = null;
        try {
            InputStream inputStreamP = j.p(null, "data/db/common__area.mp4");
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    j.d(inputStreamP, fileOutputStream);
                    o.a(inputStreamP);
                } catch (Exception e2) {
                    e = e2;
                    inputStream = inputStreamP;
                    try {
                        t.c("Exception", e);
                        o.a(inputStream);
                    } catch (Throwable th) {
                        th = th;
                        o.a(inputStream);
                        o.a(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = inputStreamP;
                    o.a(inputStream);
                    o.a(fileOutputStream);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (Exception e4) {
            e = e4;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
        o.a(fileOutputStream);
    }

    public static synchronized void c() {
        SQLiteDatabase sQLiteDatabase = f8927a;
        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
            j.c(f8927a);
            f8927a = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r4v9, types: [cn.mucang.android.selectcity.a0.a, java.lang.Object] */
    public static synchronized List<cn.mucang.android.selectcity.a0.a> d(boolean z) {
        ArrayList arrayList;
        ?? aVar;
        Throwable th;
        Cursor cursorRawQuery;
        Exception e2;
        arrayList = new ArrayList();
        int i = -1;
        if (z) {
            Area area = Area.WHOLE_COUNTRY;
            area.setAreaName(MucangConfig.getContext().getResources().getString(R.string.select_city__whole_country_title));
            aVar = new cn.mucang.android.selectcity.a0.a(new b(area.getFirstLetter()), 0);
            arrayList.add(aVar);
            arrayList.add(new cn.mucang.android.selectcity.a0.a(area, 0));
            i = 0;
        }
        String firstLetter = null;
        try {
            try {
                cursorRawQuery = f().rawQuery("select simplename,code,pinyin,firstletter,parent_code,shengzhixia,zhixiashi,name from t_area where type =  'CITY'  or shengzhixia = 1  or zhixiashi = 1 order by firstletter asc", null);
                while (cursorRawQuery.moveToNext()) {
                    try {
                        Area area2 = new Area(cursorRawQuery.getString(1), cursorRawQuery.getString(0));
                        area2.setPinyin(cursorRawQuery.getString(2));
                        area2.setFirstLetter(cursorRawQuery.getString(3));
                        area2.setParentCode(cursorRawQuery.getString(4));
                        area2.setIsAdministeredCounty(cursorRawQuery.getInt(5) == 1);
                        area2.setIsMunicipality(true);
                        area2.setFullAreaName(cursorRawQuery.getString(7));
                        if (!area2.getFirstLetter().equals(firstLetter)) {
                            firstLetter = area2.getFirstLetter();
                            i++;
                            arrayList.add(new cn.mucang.android.selectcity.a0.a(new b(firstLetter), i));
                        }
                        arrayList.add(new cn.mucang.android.selectcity.a0.a(area2, i));
                    } catch (Exception e3) {
                        e2 = e3;
                        t.c("Exception", e2);
                        j.b(cursorRawQuery);
                    }
                }
                j.b(cursorRawQuery);
            } catch (Throwable th2) {
                th = th2;
                j.b(aVar);
                a();
                throw th;
            }
        } catch (Exception e4) {
            cursorRawQuery = null;
            e2 = e4;
        } catch (Throwable th3) {
            aVar = 0;
            th = th3;
            j.b(aVar);
            a();
            throw th;
        }
        a();
        return arrayList;
    }

    public static synchronized Area e(String str) {
        Throwable th;
        Cursor cursorRawQuery;
        Area area;
        Exception e2;
        Cursor cursor = null;
        try {
            try {
                if (n0.g(str)) {
                    cursorRawQuery = f().rawQuery("select simplename,code,pinyin,firstletter,parent_code,shengzhixia,zhixiashi,name from t_area where code is '" + str + "'", null);
                    try {
                        try {
                            if (cursorRawQuery.moveToNext()) {
                                area = new Area(cursorRawQuery.getString(1), cursorRawQuery.getString(0));
                                try {
                                    area.setPinyin(cursorRawQuery.getString(2));
                                    area.setFirstLetter(cursorRawQuery.getString(3));
                                    area.setParentCode(cursorRawQuery.getString(4));
                                    area.setIsAdministeredCounty(cursorRawQuery.getInt(5) == 1);
                                    area.setIsMunicipality(cursorRawQuery.getInt(6) == 1);
                                    area.setFullAreaName(cursorRawQuery.getString(7));
                                } catch (Exception e3) {
                                    e2 = e3;
                                    t.c("Exception", e2);
                                    j.b(cursorRawQuery);
                                }
                            } else {
                                area = null;
                            }
                            cursor = cursorRawQuery;
                        } catch (Exception e4) {
                            area = null;
                            e2 = e4;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        j.b(cursorRawQuery);
                        a();
                        throw th;
                    }
                } else {
                    area = null;
                }
                j.b(cursor);
            } catch (Throwable th3) {
                throw th3;
            }
        } catch (Exception e5) {
            area = null;
            e2 = e5;
            cursorRawQuery = null;
        } catch (Throwable th4) {
            th = th4;
            cursorRawQuery = null;
            j.b(cursorRawQuery);
            a();
            throw th;
        }
        a();
        return area;
    }

    private static synchronized SQLiteDatabase f() {
        SQLiteDatabase sQLiteDatabase = f8927a;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            File fileK = k();
            if (!fileK.exists() || fileK.length() <= 0) {
                b(fileK);
            }
            try {
                SQLiteDatabase sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(fileK.getPath(), null, 0);
                f8927a = sQLiteDatabaseOpenDatabase;
                Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase.rawQuery("select max(version) from t_version", null);
                boolean z = true;
                if (cursorRawQuery.moveToNext()) {
                    if (cursorRawQuery.getInt(0) < 15) {
                        t.m("HadesLee", "getAreaDB,find the newer db,must copy....");
                    } else {
                        z = false;
                    }
                }
                cursorRawQuery.close();
                if (z) {
                    f8927a.close();
                    b(fileK);
                    f8927a = SQLiteDatabase.openDatabase(fileK.getPath(), null, 0);
                }
            } catch (Exception e2) {
                t.c("Exception", e2);
                SQLiteDatabase sQLiteDatabase2 = f8927a;
                if (sQLiteDatabase2 != null) {
                    sQLiteDatabase2.close();
                }
                b(fileK);
                f8927a = SQLiteDatabase.openDatabase(fileK.getPath(), null, 0);
            }
        }
        return f8927a;
    }

    public static synchronized List<cn.mucang.android.selectcity.a0.a> g(String str) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = f().rawQuery("select simplename,code,pinyin,firstletter,parent_code,shengzhixia,zhixiashi,name from t_area where parent_code is '" + str + "'", null);
                while (cursorRawQuery.moveToNext()) {
                    String string = cursorRawQuery.getString(0);
                    if (!"市辖区".equals(string)) {
                        Area area = new Area(cursorRawQuery.getString(1), string);
                        area.setPinyin(cursorRawQuery.getString(2));
                        area.setFirstLetter(cursorRawQuery.getString(3));
                        area.setParentCode(cursorRawQuery.getString(4));
                        area.setIsAdministeredCounty(cursorRawQuery.getInt(5) == 1);
                        area.setIsMunicipality(cursorRawQuery.getInt(6) == 1);
                        area.setFullAreaName(cursorRawQuery.getString(7));
                        arrayList.add(new cn.mucang.android.selectcity.a0.a(area, -1));
                    }
                }
                j.b(cursorRawQuery);
            } catch (Exception e2) {
                t.c("Exception", e2);
                j.b(cursorRawQuery);
            }
            a();
        } catch (Throwable th) {
            j.b(cursorRawQuery);
            a();
            throw th;
        }
        return arrayList;
    }

    public static List<Area> h() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Area("310000", "上海"));
        arrayList.add(new Area("110000", "北京"));
        arrayList.add(new Area("440100", "广州"));
        arrayList.add(new Area("440300", "深圳"));
        arrayList.add(new Area("420100", "武汉"));
        arrayList.add(new Area("120000", "天津"));
        arrayList.add(new Area("610100", "西安"));
        arrayList.add(new Area("320100", "南京"));
        arrayList.add(new Area("330100", "杭州"));
        return arrayList;
    }

    public static Area i(String str) {
        Area areaE;
        Area areaE2 = e(str);
        return (areaE2 == null || (areaE = e(areaE2.getParentCode())) == null) ? new Area(StudentModel.DefaultID, "全国") : areaE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r4v9, types: [cn.mucang.android.selectcity.a0.a, java.lang.Object] */
    public static synchronized List<cn.mucang.android.selectcity.a0.a> j(boolean z) {
        ArrayList arrayList;
        ?? aVar;
        Throwable th;
        Cursor cursorRawQuery;
        Exception e2;
        arrayList = new ArrayList();
        int i = -1;
        if (z) {
            Area area = Area.WHOLE_COUNTRY;
            area.setAreaName(MucangConfig.getContext().getResources().getString(R.string.select_city__whole_country_title));
            aVar = new cn.mucang.android.selectcity.a0.a(new b(area.getFirstLetter()), 0);
            arrayList.add(aVar);
            arrayList.add(new cn.mucang.android.selectcity.a0.a(area, 0));
            i = 0;
        }
        String firstLetter = null;
        try {
            try {
                cursorRawQuery = f().rawQuery("select simplename,code,pinyin,firstletter,parent_code,shengzhixia,zhixiashi,name from t_area where parent_code is '000000' order by firstletter asc", null);
                while (cursorRawQuery.moveToNext()) {
                    try {
                        boolean z2 = true;
                        Area area2 = new Area(cursorRawQuery.getString(1), cursorRawQuery.getString(0));
                        area2.setPinyin(cursorRawQuery.getString(2));
                        area2.setFirstLetter(cursorRawQuery.getString(3));
                        area2.setParentCode(cursorRawQuery.getString(4));
                        area2.setIsAdministeredCounty(cursorRawQuery.getInt(5) == 1);
                        if (cursorRawQuery.getInt(6) != 1) {
                            z2 = false;
                        }
                        area2.setIsMunicipality(z2);
                        area2.setFullAreaName(cursorRawQuery.getString(7));
                        if (!area2.getFirstLetter().equals(firstLetter)) {
                            firstLetter = area2.getFirstLetter();
                            i++;
                            arrayList.add(new cn.mucang.android.selectcity.a0.a(new b(firstLetter), i));
                        }
                        arrayList.add(new cn.mucang.android.selectcity.a0.a(area2, i));
                    } catch (Exception e3) {
                        e2 = e3;
                        t.c("Exception", e2);
                        j.b(cursorRawQuery);
                    }
                }
                j.b(cursorRawQuery);
            } catch (Throwable th2) {
                th = th2;
                j.b(aVar);
                a();
                throw th;
            }
        } catch (Exception e4) {
            cursorRawQuery = null;
            e2 = e4;
        } catch (Throwable th3) {
            aVar = 0;
            th = th3;
            j.b(aVar);
            a();
            throw th;
        }
        a();
        return arrayList;
    }

    private static File k() {
        return new File("/data/data/" + MucangConfig.r() + "/databases/common__area.mp4");
    }

    public static List<Area> l() {
        return m(true, true);
    }

    public static List<Area> m(boolean z, boolean z2) {
        try {
            List<Area> array = JSON.parseArray(j0.f("__select_city", "recent_cities", null), Area.class);
            if (array == null) {
                return new ArrayList();
            }
            if (z && z2) {
                return array;
            }
            Iterator<Area> it = array.iterator();
            while (it.hasNext()) {
                Area next = it.next();
                if (!z && Area.WHOLE_COUNTRY.getAreaCode().equals(next.getAreaCode())) {
                    it.remove();
                } else if (!z2 && u.a().b(next.getAreaCode())) {
                    it.remove();
                }
            }
            return array;
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public static synchronized List<Area> n(String str) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            Cursor cursorRawQuery = null;
            try {
                cursorRawQuery = f().rawQuery("select simplename,code,pinyin,firstletter,parent_code,shengzhixia,zhixiashi,name from t_area where parent_code is '" + str + "'", null);
                while (cursorRawQuery.moveToNext()) {
                    String string = cursorRawQuery.getString(0);
                    if (!"市辖区".equals(string) && !"市辖县".equals(string)) {
                        Area area = new Area(cursorRawQuery.getString(1), string);
                        area.setPinyin(cursorRawQuery.getString(2));
                        area.setFirstLetter(cursorRawQuery.getString(3));
                        area.setParentCode(cursorRawQuery.getString(4));
                        area.setIsAdministeredCounty(cursorRawQuery.getInt(5) == 1);
                        area.setIsMunicipality(cursorRawQuery.getInt(6) == 1);
                        area.setFullAreaName(cursorRawQuery.getString(7));
                        arrayList.add(area);
                    }
                }
                j.b(cursorRawQuery);
            } catch (Exception e2) {
                t.c("Exception", e2);
                j.b(cursorRawQuery);
            } finally {
                j.b(cursorRawQuery);
                a();
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public static void o(List<Area> list) {
        List<Area> listL = l();
        listL.addAll(0, list);
        ArrayList arrayList = new ArrayList();
        for (Area area : listL) {
            if (!arrayList.contains(area) && arrayList.size() < 9) {
                arrayList.add(area);
            }
        }
        try {
            j0.k("__select_city", "recent_cities", JSON.toJSONString(arrayList));
        } catch (Exception unused) {
        }
    }
}
