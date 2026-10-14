package com.loc;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes4.dex */
public final class at extends SQLiteOpenHelper {
    private static boolean b = true;
    private static boolean c = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ap f12530a;

    public at(Context context, String str, ap apVar) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        this.f12530a = apVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.f12530a.a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
