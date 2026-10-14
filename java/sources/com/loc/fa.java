package com.loc;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes4.dex */
public class fa implements ap {
    @Override // com.loc.ap
    public final String a() {
        return "alsn20170807.db";
    }

    @Override // com.loc.ap
    public final void a(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS c (_id integer primary key autoincrement, a2 varchar(100), a4 varchar(2000), a3 LONG );");
        } catch (Throwable th) {
            fi.a(th, "SdCardDbCreator", "onCreate");
        }
    }
}
