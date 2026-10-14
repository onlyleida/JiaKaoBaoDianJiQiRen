package com.serenegiant.db;

import android.annotation.SuppressLint;
import android.database.Cursor;
import android.util.Log;

/* JADX INFO: loaded from: classes6.dex */
public final class CursorHelper {
    private static final String TAG = "CursorHelper";

    @SuppressLint({"NewApi"})
    public static void dumpCursor(Cursor cursor) {
        if (cursor.moveToFirst()) {
            StringBuilder sb = new StringBuilder();
            int columnCount = cursor.getColumnCount();
            String[] columnNames = cursor.getColumnNames();
            int i = 0;
            do {
                sb.setLength(0);
                sb.append("row=");
                sb.append(i);
                sb.append(", ");
                for (int i2 = 0; i2 < columnCount; i2++) {
                    int type = cursor.getType(i2);
                    if (type != 0) {
                        if (type == 1) {
                            sb.append(columnNames[i2]);
                            sb.append("=");
                            sb.append(cursor.getLong(i2));
                        } else if (type == 2) {
                            sb.append(columnNames[i2]);
                            sb.append("=");
                            sb.append(cursor.getDouble(i2));
                        } else if (type == 3) {
                            sb.append(columnNames[i2]);
                            sb.append("=");
                            sb.append(cursor.getString(i2));
                        } else if (type != 4) {
                            sb.append(columnNames[i2]);
                            sb.append("=");
                            sb.append("UNKNOWN");
                        } else {
                            sb.append(columnNames[i2]);
                            sb.append("=");
                            sb.append("BLOB");
                        }
                        sb.append(", ");
                    } else {
                        sb.append(columnNames[i2]);
                        sb.append("=");
                        sb.append("NULL");
                    }
                }
                Log.v("CursorHelper#dumpCursor:", sb.toString());
                i++;
            } while (cursor.moveToNext());
        }
    }

    public static int findPositionFromId(Cursor cursor, long j) {
        int position = -1;
        if (cursor != null) {
            int position2 = cursor.getPosition();
            try {
                if (cursor.moveToFirst()) {
                    while (getLong(cursor, "_id", 0L) != j) {
                        if (!cursor.moveToNext()) {
                        }
                    }
                    position = cursor.getPosition();
                }
            } finally {
                cursor.moveToPosition(position2);
            }
        }
        return position;
    }

    public static CharSequence getCharSequence(Cursor cursor, String str, CharSequence charSequence) {
        try {
            return cursor.getString(cursor.getColumnIndexOrThrow(str));
        } catch (Exception unused) {
            return charSequence;
        }
    }

    public static double getDouble(Cursor cursor, String str, double d2) {
        try {
            return cursor.getDouble(cursor.getColumnIndexOrThrow(str));
        } catch (Exception unused) {
            return d2;
        }
    }

    public static float getFloat(Cursor cursor, String str, float f2) {
        try {
            return cursor.getFloat(cursor.getColumnIndexOrThrow(str));
        } catch (Exception unused) {
            return f2;
        }
    }

    public static int getInt(Cursor cursor, String str, int i) {
        try {
            return cursor.getInt(cursor.getColumnIndexOrThrow(str));
        } catch (Exception unused) {
            return i;
        }
    }

    public static long getLong(Cursor cursor, String str, long j) {
        try {
            return cursor.getLong(cursor.getColumnIndexOrThrow(str));
        } catch (Exception unused) {
            return j;
        }
    }

    public static short getShort(Cursor cursor, String str, short s) {
        try {
            return cursor.getShort(cursor.getColumnIndexOrThrow(str));
        } catch (Exception unused) {
            return s;
        }
    }

    public static String getString(Cursor cursor, String str, String str2) {
        try {
            return cursor.getString(cursor.getColumnIndexOrThrow(str));
        } catch (Exception unused) {
            return str2;
        }
    }

    public static String getString(Cursor cursor, String str, CharSequence charSequence) {
        CharSequence charSequence2 = getCharSequence(cursor, str, charSequence);
        if (charSequence2 != null) {
            return charSequence2.toString();
        }
        return null;
    }
}
