package com.nirvana.tools.logger.cache.db;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import com.nirvana.tools.logger.model.ACMRecord;
import com.nirvana.tools.logger.utils.ConsoleLogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractDatabase<T extends ACMRecord> {
    public static final int DEFAULT_LIMIT = 5242880;
    private static final String TAG = "com.nirvana.tools.logger.cache.db.AbstractDatabase";
    private SQLiteDatabase mDatabase;
    private DBHelper mDbHelper;
    private String mTableName;

    public AbstractDatabase(String str, DBHelper dBHelper) {
        this.mTableName = str;
        this.mDbHelper = dBHelper;
        setMaxSizeLog(CacheDataSink.DEFAULT_FRAGMENT_SIZE);
    }

    private long parseIdFromCursor(Cursor cursor) {
        if (cursor == null) {
            return -1L;
        }
        return cursor.getLong(cursor.getColumnIndex("_id"));
    }

    public void close() {
        SQLiteDatabase sQLiteDatabase = this.mDatabase;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
            this.mDatabase = null;
        }
    }

    protected String contactIds(List<Long> list) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder("(");
        Iterator<Long> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(",");
        }
        sb.deleteCharAt(sb.length() - 1);
        sb.append(")");
        return sb.toString();
    }

    protected synchronized void deleteOldest(SQLiteDatabase sQLiteDatabase, int i) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Cursor cursorQuery = sQLiteDatabase.query(this.mTableName, new String[]{"_id"}, null, null, null, null, "timestamp ASC", i > 0 ? String.valueOf(i) : null);
            ArrayList arrayList = new ArrayList();
            while (cursorQuery.moveToNext()) {
                Long lValueOf = Long.valueOf(parseIdFromCursor(cursorQuery));
                if (lValueOf.longValue() != -1) {
                    arrayList.add(lValueOf);
                }
            }
            cursorQuery.close();
            deleteRecordsById(arrayList);
            ConsoleLogUtils.logcatV(TAG, "delete oldest: escape=" + (System.currentTimeMillis() - jCurrentTimeMillis));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public synchronized void deleteRecords(List<T> list) {
        if (list != null) {
            if (!list.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(Long.valueOf(it.next().getId()));
                }
                deleteRecordsById(arrayList);
            }
        }
    }

    public synchronized void deleteRecordsById(List<Long> list) {
        if (list != null) {
            try {
                if (!list.isEmpty()) {
                    String str = TAG;
                    ConsoleLogUtils.logcatV(str, "delete: size=" + list.size());
                    StringBuilder sb = new StringBuilder("_id in ");
                    sb.append(contactIds(list));
                    ConsoleLogUtils.logcatV(str, "delete: selection=" + ((Object) sb));
                    ConsoleLogUtils.logcatV(str, "delete: count=" + getWriteDatabase().delete(this.mTableName, sb.toString(), null));
                    close();
                    return;
                }
            } catch (Throwable unused) {
                close();
                return;
            }
        }
        close();
    }

    protected abstract ContentValues getContentValuesByRecord(T t);

    protected int getCount(SQLiteDatabase sQLiteDatabase) {
        return (int) DatabaseUtils.longForQuery(sQLiteDatabase, "SELECT COUNT(_id) FROM " + this.mTableName, null);
    }

    public synchronized long getCurrentSize() {
        long pageSize;
        try {
            pageSize = getReadDatabase().getPageSize() * DatabaseUtils.longForQuery(this.mDatabase, "PRAGMA page_count;", null);
            close();
        } catch (Throwable unused) {
            close();
            return -1L;
        }
        return pageSize;
    }

    public synchronized long getMaxSizeLog() {
        long maximumSize;
        try {
            maximumSize = getReadDatabase().getMaximumSize();
            close();
        } catch (Throwable unused) {
            close();
            return -1L;
        }
        return maximumSize;
    }

    public SQLiteDatabase getReadDatabase() {
        if (this.mDatabase == null) {
            this.mDatabase = this.mDbHelper.getReadableDatabase();
        }
        return this.mDatabase;
    }

    public synchronized SQLiteDatabase getWriteDatabase() {
        if (this.mDatabase == null) {
            this.mDatabase = this.mDbHelper.getWritableDatabase();
        }
        return this.mDatabase;
    }

    public synchronized void insert(T t) {
        long jInsert = -1;
        if (t == null) {
            close();
            return;
        }
        try {
            try {
                if (getCurrentSize() >= CacheDataSink.DEFAULT_FRAGMENT_SIZE) {
                    ConsoleLogUtils.logcatV(TAG, "Table size is limited, clear half of data!");
                    deleteOldest(getWriteDatabase(), getCount(getWriteDatabase()) / 2);
                }
                ContentValues contentValuesByRecord = getContentValuesByRecord(t);
                jInsert = getWriteDatabase().insert(this.mTableName, null, contentValuesByRecord);
                if (jInsert < 0 && getCount(getWriteDatabase()) > 0) {
                    deleteOldest(getWriteDatabase(), getCount(getWriteDatabase()) / 2);
                    jInsert = getWriteDatabase().insert(this.mTableName, null, contentValuesByRecord);
                }
                ConsoleLogUtils.logcatV(TAG, "insert: id=" + jInsert);
                close();
            } catch (Exception e2) {
                e2.printStackTrace();
                if (jInsert < 0 && getCount(getWriteDatabase()) > 0) {
                    deleteOldest(getWriteDatabase(), getCount(getWriteDatabase()) / 2);
                    getWriteDatabase().insert(this.mTableName, null, getContentValuesByRecord(t));
                }
                close();
            }
        } catch (Throwable th) {
            close();
            throw th;
        }
    }

    protected abstract T parseDataFromCursor(Cursor cursor);

    public synchronized List<T> query(int i, int i2, String str) {
        ArrayList arrayList;
        try {
            StringBuilder sb = new StringBuilder();
            if (i2 >= 0) {
                sb.append("upload_flag = ");
                sb.append(i2);
                sb.append(" ");
            }
            ConsoleLogUtils.logcatV(TAG, "query: selection=" + ((Object) sb));
            String strValueOf = i > 0 ? String.valueOf(i) : "";
            arrayList = new ArrayList();
            Cursor cursorQuery = getReadDatabase().query(this.mTableName, null, sb.toString(), null, null, null, str, strValueOf);
            while (cursorQuery.moveToNext()) {
                ACMRecord dataFromCursor = parseDataFromCursor(cursorQuery);
                if (dataFromCursor != null) {
                    arrayList.add(dataFromCursor);
                }
            }
            cursorQuery.close();
            ConsoleLogUtils.logcatV(TAG, "query: result=" + arrayList + ", size=" + arrayList.size());
            close();
        } catch (Throwable unused) {
            close();
            return null;
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0071 A[Catch: all -> 0x00c6, TryCatch #0 {all -> 0x00c6, blocks: (B:4:0x0007, B:10:0x002a, B:11:0x0039, B:17:0x005c, B:19:0x0071, B:20:0x0075, B:21:0x008f, B:23:0x0095, B:25:0x009b, B:26:0x009f, B:13:0x0042, B:16:0x0054), top: B:37:0x0007, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0095 A[Catch: all -> 0x00c6, TryCatch #0 {all -> 0x00c6, blocks: (B:4:0x0007, B:10:0x002a, B:11:0x0039, B:17:0x005c, B:19:0x0071, B:20:0x0075, B:21:0x008f, B:23:0x0095, B:25:0x009b, B:26:0x009f, B:13:0x0042, B:16:0x0054), top: B:37:0x0007, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x009b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x008f A[SYNTHETIC] */
    public synchronized List<T> queryFailed(long j, long j2, int i) {
        String str;
        ArrayList arrayList;
        Cursor cursorQuery;
        ACMRecord dataFromCursor;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("upload_flag = ");
            sb.append(1);
            sb.append(" ");
            if (j < 0 || j2 < 0 || j2 < j) {
                if (j >= 0) {
                    sb.append(" and _id");
                    sb.append(" >= ");
                    sb.append(j);
                } else if (j2 >= 0) {
                    sb.append(" and _id");
                    str = " <= ";
                }
                ConsoleLogUtils.logcatV(TAG, "query: selection=" + ((Object) sb));
                String strValueOf = i > 0 ? String.valueOf(i) : "";
                arrayList = new ArrayList();
                cursorQuery = getReadDatabase().query(this.mTableName, null, sb.toString(), null, null, null, "_id ASC", strValueOf);
                while (cursorQuery.moveToNext()) {
                    dataFromCursor = parseDataFromCursor(cursorQuery);
                    if (dataFromCursor != null) {
                        arrayList.add(dataFromCursor);
                    }
                }
                cursorQuery.close();
                ConsoleLogUtils.logcatV(TAG, "query: result=" + arrayList + ", size=" + arrayList.size());
                close();
            } else {
                sb.append(" and _id");
                sb.append(" between ");
                sb.append(j);
                str = " and ";
            }
            sb.append(str);
            sb.append(j2);
            ConsoleLogUtils.logcatV(TAG, "query: selection=" + ((Object) sb));
            String strValueOf2 = i > 0 ? String.valueOf(i) : "";
            arrayList = new ArrayList();
            cursorQuery = getReadDatabase().query(this.mTableName, null, sb.toString(), null, null, null, "_id ASC", strValueOf2);
            while (cursorQuery.moveToNext()) {
                dataFromCursor = parseDataFromCursor(cursorQuery);
                if (dataFromCursor != null) {
                    arrayList.add(dataFromCursor);
                }
            }
            cursorQuery.close();
            ConsoleLogUtils.logcatV(TAG, "query: result=" + arrayList + ", size=" + arrayList.size());
            close();
        } catch (Throwable unused) {
            close();
            return null;
        }
        return arrayList;
    }

    public synchronized long queryFailedMaxId() {
        long j;
        try {
            Cursor cursorRawQuery = getReadDatabase().rawQuery("SELECT max(_id) from " + this.mTableName + " WHERE upload_flag=1", null);
            cursorRawQuery.moveToFirst();
            j = cursorRawQuery.getLong(0);
            cursorRawQuery.close();
            close();
        } catch (Throwable unused) {
            close();
            return -1L;
        }
        return j;
    }

    public synchronized void setMaxSizeLog(long j) {
        try {
            try {
                getWriteDatabase().setMaximumSize(j);
                close();
            } catch (Exception e2) {
                e2.printStackTrace();
                close();
            }
        } catch (Throwable th) {
            close();
            throw th;
        }
    }

    public synchronized void updateUploadCount(List<T> list, long j, int i) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    ArrayList arrayList = new ArrayList();
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(Long.valueOf(it.next().getId()));
                    }
                    getWriteDatabase().execSQL("UPDATE " + this.mTableName + " SET timestamp=" + j + ",upload_flag=" + i + ",upload_count=upload_count+1 WHERE _id in " + contactIds(arrayList));
                    close();
                    return;
                }
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                    deleteOldest(getWriteDatabase(), getCount(getWriteDatabase()) / 2);
                    return;
                } finally {
                    close();
                }
            }
            throw th;
        }
        close();
    }
}
