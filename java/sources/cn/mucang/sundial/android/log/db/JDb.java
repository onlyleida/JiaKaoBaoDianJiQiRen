package cn.mucang.sundial.android.log.db;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import cn.mucang.android.core.db.a;
import cn.mucang.android.core.db.b;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.log.SundialLog;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class JDb implements a.b {
    public static final String DB_NAME = "bd_sundial.db";
    public static final int DB_VERSION = 1;
    private static JDb jdb;
    private a db;

    private JDb() {
        b bVar = new b();
        bVar.d(DB_NAME);
        bVar.e(1);
        bVar.c("db" + File.separator + "sundial.sql");
        bVar.b(this);
        this.db = bVar.a();
    }

    public static a db() {
        return getInstance().db;
    }

    public static synchronized SQLiteOpenHelper getHelper() {
        return getInstance().helper();
    }

    public static synchronized JDb getInstance() {
        if (jdb == null) {
            jdb = new JDb();
        }
        return jdb;
    }

    public a getDb() {
        return this.db;
    }

    public SQLiteOpenHelper helper() {
        return this.db.s();
    }

    @Override // cn.mucang.android.core.db.a.b
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                for (int i3 = i + 1; i3 <= i2; i3++) {
                    String strK = j.k("db/upgrade/sundial_upgrade_" + i3 + ".sql");
                    if (!n0.e(strK)) {
                        for (String str : strK.split(VoiceWakeuperAidl.PARAMS_SEPARATE)) {
                            String strTrim = str.trim();
                            if (!TextUtils.isEmpty(strTrim)) {
                                try {
                                    sQLiteDatabase.execSQL(strTrim);
                                } catch (Exception e2) {
                                    SundialLog.normal(i + "升级到" + i2 + " ; 执行 SQL " + strTrim + " 失败：" + e2.getLocalizedMessage());
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("执行 SQL 失败：");
                                    sb.append(e2.getLocalizedMessage());
                                    t.d("默认替换", sb.toString());
                                }
                            }
                        }
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception e3) {
                t.c("默认替换", e3);
                SundialLog.normal("默认替换：" + e3.getLocalizedMessage());
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }
}
