package cn.mucang.android.core.db;

import android.database.sqlite.SQLiteDatabase;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c implements a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f2515a;

    public c(String str) {
        this.f2515a = str;
    }

    protected void a(SQLiteDatabase sQLiteDatabase, String str) throws Exception {
        List<String> listZ = a.z(str);
        if (g.b(listZ)) {
            return;
        }
        Iterator<String> it = listZ.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL(it.next());
        }
    }

    protected String b(int i) {
        return j.k(this.f2515a + i + ".sql");
    }

    public void c(SQLiteDatabase sQLiteDatabase, int i, int i2) throws Exception {
        try {
            sQLiteDatabase.beginTransaction();
            while (true) {
                i++;
                if (i > i2) {
                    sQLiteDatabase.setTransactionSuccessful();
                    return;
                } else {
                    String strB = b(i);
                    if (n0.g(strB)) {
                        a(sQLiteDatabase, strB);
                    }
                }
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    @Override // cn.mucang.android.core.db.a.b
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            c(sQLiteDatabase, i, i2);
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
    }
}
