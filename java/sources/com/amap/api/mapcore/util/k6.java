package com.amap.api.mapcore.util;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes5.dex */
public class k6 extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g6 f10963a;

    public k6(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i, g6 g6Var) {
        super(context, str, cursorFactory, i);
        this.f10963a = g6Var;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.f10963a.a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.f10963a.a(sQLiteDatabase, i, i2);
    }
}
