package com.nirvana.tools.logger.cache.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.nirvana.tools.logger.model.ACMLoggerRecord;
import com.nirvana.tools.logger.utils.ConsoleLogUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class ACMLogDatabase extends AbstractDatabase<ACMLoggerRecord> {
    private static final String LOG_DATABASE_NAME = "logger.db";
    private static final String TAG = "ALICOM_LoggerDao";

    public ACMLogDatabase(Context context) {
        super(DBHelpTool.TABLE_NAME_LOGGER, new DBHelper(context, LOG_DATABASE_NAME, null, 1, DBHelpTool.SQL_CREATE_ENTRIES_LOGGER, DBHelpTool.SQL_DELETE_ENTRIES_LOGGER, DBHelpTool.INDEX_CREATE_LOGGER));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.nirvana.tools.logger.cache.db.AbstractDatabase
    public ContentValues getContentValuesByRecord(ACMLoggerRecord aCMLoggerRecord) {
        if (aCMLoggerRecord == null) {
            return null;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(DBHelpTool.RecordEntry.COLUMN_NAME_STRATEGY, Integer.valueOf(aCMLoggerRecord.getStrategy()));
        contentValues.put(DBHelpTool.RecordEntry.COLUMN_NAME_TIMESTAMP, Long.valueOf(aCMLoggerRecord.getTimestamp()));
        contentValues.put(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, aCMLoggerRecord.getContent());
        contentValues.put(DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL, Integer.valueOf(aCMLoggerRecord.getLevel()));
        contentValues.put(DBHelpTool.RecordEntry.COLUMN_UPLOAD_FLAG, Integer.valueOf(aCMLoggerRecord.getUploadFlag()));
        contentValues.put(DBHelpTool.RecordEntry.COLUMN_UPLOAD_COUNT, Integer.valueOf(aCMLoggerRecord.getUploadCount()));
        return contentValues;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.nirvana.tools.logger.cache.db.AbstractDatabase
    public ACMLoggerRecord parseDataFromCursor(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        ACMLoggerRecord aCMLoggerRecord = new ACMLoggerRecord();
        aCMLoggerRecord.setId(cursor.getLong(cursor.getColumnIndex("_id")));
        aCMLoggerRecord.setLevel(cursor.getInt(cursor.getColumnIndex(DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL)));
        aCMLoggerRecord.setStrategy(cursor.getInt(cursor.getColumnIndex(DBHelpTool.RecordEntry.COLUMN_NAME_STRATEGY)));
        aCMLoggerRecord.setContent(cursor.getString(cursor.getColumnIndex(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT)));
        aCMLoggerRecord.setUploadFlag(cursor.getInt(cursor.getColumnIndex(DBHelpTool.RecordEntry.COLUMN_UPLOAD_FLAG)));
        aCMLoggerRecord.setUploadCount(cursor.getInt(cursor.getColumnIndex(DBHelpTool.RecordEntry.COLUMN_UPLOAD_COUNT)));
        aCMLoggerRecord.setTimestamp(cursor.getLong(cursor.getColumnIndex(DBHelpTool.RecordEntry.COLUMN_NAME_TIMESTAMP)));
        return aCMLoggerRecord;
    }

    public synchronized List<ACMLoggerRecord> queryLog(long j, long j2, int i, int i2, int i3) {
        ArrayList arrayList;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("level=");
            sb.append(i3);
            if (j > 0) {
                sb.append(" and timestamp");
                sb.append(" >= ");
                sb.append(j);
                sb.append(" ");
            }
            if (j2 > 0) {
                sb.append("and timestamp <= " + j2 + " ");
            }
            if (i2 >= 0) {
                sb.append("and upload_flag = " + i2 + " ");
            }
            String strValueOf = i > 0 ? String.valueOf(i) : "";
            ConsoleLogUtils.logcatV(TAG, "query: selection=" + ((Object) sb));
            arrayList = new ArrayList();
            Cursor cursorQuery = getReadDatabase().query(DBHelpTool.TABLE_NAME_LOGGER, null, sb.toString(), null, null, null, null, strValueOf);
            while (cursorQuery.moveToNext()) {
                ACMLoggerRecord dataFromCursor = parseDataFromCursor(cursorQuery);
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
}
