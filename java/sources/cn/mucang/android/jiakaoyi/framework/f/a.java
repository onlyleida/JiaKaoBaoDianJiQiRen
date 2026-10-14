package cn.mucang.android.jiakaoyi.framework.f;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.db.b;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.R;
import cn.mucang.android.jiakaoyi.framework.log.f;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class a implements cn.mucang.android.core.db.a.b {
    public static final int b = MucangConfig.getContext().getResources().getInteger(R.integer.k3_db_file_version);
    public static final int c = MucangConfig.getContext().getResources().getInteger(R.integer.k2_db_file_version);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f3447d = MucangConfig.getContext().getResources().getInteger(R.integer.b2_db_file_version);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f3448e = MucangConfig.getContext().getResources().getInteger(R.integer.moto_db_file_version);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f3449f = MucangConfig.getContext().getResources().getInteger(R.integer.jky_db_version);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static a f3450g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.core.db.a f3451a;

    private a() {
        b bVar = new b();
        bVar.d("jkbd_jky.db");
        bVar.e(f3449f);
        bVar.c("db" + File.separator + "jky.sql");
        bVar.b(this);
        this.f3451a = bVar.a();
    }

    public static cn.mucang.android.core.db.a a() {
        return c().f3451a;
    }

    public static synchronized SQLiteOpenHelper b() {
        return c().d();
    }

    public static synchronized a c() {
        if (f3450g == null) {
            f3450g = new a();
        }
        return f3450g;
    }

    public SQLiteOpenHelper d() {
        return this.f3451a.s();
    }

    @Override // cn.mucang.android.core.db.a.b
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                for (int i3 = i + 1; i3 <= i2; i3++) {
                    String strK = j.k("db/upgrade/jky_upgrade_" + i3 + ".sql");
                    if (!n0.e(strK)) {
                        for (String str : strK.split(VoiceWakeuperAidl.PARAMS_SEPARATE)) {
                            String strTrim = str.trim();
                            if (!TextUtils.isEmpty(strTrim)) {
                                try {
                                    sQLiteDatabase.execSQL(strTrim);
                                } catch (Exception e2) {
                                    f.o(i + "升级到" + i2 + " ; 执行 SQL " + strTrim + " 失败：" + e2.getLocalizedMessage());
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
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }
}
