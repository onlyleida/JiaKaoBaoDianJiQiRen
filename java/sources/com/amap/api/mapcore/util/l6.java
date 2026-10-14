package com.amap.api.mapcore.util;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes5.dex */
public class l6 implements g6 {
    @Override // com.amap.api.mapcore.util.g6
    public void a(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS a (_id integer primary key autoincrement, a1  varchar(20), a2 varchar(10),a3 varchar(50),a4 varchar(100),a5 varchar(20),a6 integer);");
            sQLiteDatabase.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (_id integer primary key autoincrement,b1 varchar(40), b2 integer,b3  integer,a1  varchar(20));", "b"));
            sQLiteDatabase.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (_id integer primary key autoincrement,b1 varchar(40), b2 integer,b3  integer,a1  varchar(20));", "c"));
            sQLiteDatabase.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (_id integer primary key autoincrement,b1 varchar(40), b2 integer,b3  integer,a1  varchar(20));", "d"));
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS e (_id integer primary key autoincrement,c1 integer,c2 integer,c3 integer);");
        } catch (Throwable th) {
            b6.e(th, "DB", "onCreate");
        }
    }

    @Override // com.amap.api.mapcore.util.g6
    public void a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // com.amap.api.mapcore.util.g6
    public String b() {
        return "logdb.db";
    }

    @Override // com.amap.api.mapcore.util.g6
    public int c() {
        return 1;
    }
}
