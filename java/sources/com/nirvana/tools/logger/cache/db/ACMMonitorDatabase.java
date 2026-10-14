package com.nirvana.tools.logger.cache.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.nirvana.tools.logger.model.ACMMonitorRecord;

/* JADX INFO: loaded from: classes6.dex */
public class ACMMonitorDatabase extends AbstractDatabase<ACMMonitorRecord> {
    private static final String MONITOR_DATABASE_NAME = "monitor.db";
    private static final String TAG = "ALICOM_LoggerDao";

    public ACMMonitorDatabase(Context context) {
        super(DBHelpTool.TABLE_NAME_MONITOR, new DBHelper(context, MONITOR_DATABASE_NAME, null, 1, DBHelpTool.SQL_CREATE_ENTRIES_MONITOR, DBHelpTool.SQL_DELETE_ENTRIES_MONITOR, DBHelpTool.INDEX_CREATE_MONITOR));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.nirvana.tools.logger.cache.db.AbstractDatabase
    public ContentValues getContentValuesByRecord(ACMMonitorRecord aCMMonitorRecord) {
        if (aCMMonitorRecord == null) {
            return null;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(DBHelpTool.RecordEntry.COLUMN_NAME_STRATEGY, Integer.valueOf(aCMMonitorRecord.getStrategy()));
        contentValues.put(DBHelpTool.RecordEntry.COLUMN_NAME_TIMESTAMP, Long.valueOf(aCMMonitorRecord.getTimestamp()));
        contentValues.put(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, aCMMonitorRecord.getContent());
        contentValues.put(DBHelpTool.RecordEntry.COLUMN_NAME_URGENCY, Integer.valueOf(aCMMonitorRecord.getUrgency()));
        contentValues.put(DBHelpTool.RecordEntry.COLUMN_UPLOAD_FLAG, Integer.valueOf(aCMMonitorRecord.getUploadFlag()));
        contentValues.put(DBHelpTool.RecordEntry.COLUMN_UPLOAD_COUNT, Integer.valueOf(aCMMonitorRecord.getUploadCount()));
        return contentValues;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.nirvana.tools.logger.cache.db.AbstractDatabase
    public ACMMonitorRecord parseDataFromCursor(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        ACMMonitorRecord aCMMonitorRecord = new ACMMonitorRecord();
        aCMMonitorRecord.setId(cursor.getLong(cursor.getColumnIndex("_id")));
        aCMMonitorRecord.setStrategy(cursor.getInt(cursor.getColumnIndex(DBHelpTool.RecordEntry.COLUMN_NAME_STRATEGY)));
        aCMMonitorRecord.setContent(cursor.getString(cursor.getColumnIndex(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT)));
        aCMMonitorRecord.setUploadFlag(cursor.getInt(cursor.getColumnIndex(DBHelpTool.RecordEntry.COLUMN_UPLOAD_FLAG)));
        aCMMonitorRecord.setUploadCount(cursor.getInt(cursor.getColumnIndex(DBHelpTool.RecordEntry.COLUMN_UPLOAD_COUNT)));
        aCMMonitorRecord.setTimestamp(cursor.getLong(cursor.getColumnIndex(DBHelpTool.RecordEntry.COLUMN_NAME_TIMESTAMP)));
        aCMMonitorRecord.setUrgency(cursor.getInt(cursor.getColumnIndex(DBHelpTool.RecordEntry.COLUMN_NAME_URGENCY)));
        return aCMMonitorRecord;
    }
}
