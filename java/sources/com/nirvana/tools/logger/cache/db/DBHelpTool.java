package com.nirvana.tools.logger.cache.db;

import android.provider.BaseColumns;

/* JADX INFO: loaded from: classes6.dex */
public class DBHelpTool {
    public static final String INDEX_CREATE_LOGGER;
    public static final String INDEX_CREATE_MONITOR;
    public static final String SQL_CREATE_ENTRIES_LOGGER = "CREATE TABLE IF NOT EXISTS alitx_logger (_id INTEGER PRIMARY KEY,timestamp NUMERIC,level TEXT,strategy INTEGER,upload_flag INTEGER,upload_count INTEGER,content TEXT)";
    public static final String SQL_CREATE_ENTRIES_MONITOR = "CREATE TABLE IF NOT EXISTS alitx_monitor (_id INTEGER PRIMARY KEY,timestamp NUMERIC,urgency INTEGER,strategy INTEGER,upload_flag INTEGER,upload_count INTEGER,content TEXT)";
    public static final String SQL_DELETE_ENTRIES_LOGGER = "DROP TABLE IF EXISTS alitx_logger";
    public static final String SQL_DELETE_ENTRIES_MONITOR = "DROP TABLE IF EXISTS alitx_monitor";
    public static final String TABLE_NAME_LOGGER = "alitx_logger";
    public static final String TABLE_NAME_MONITOR = "alitx_monitor";

    public class RecordEntry implements BaseColumns {
        public static final String COLUMN_NAME_CONTENT = "content";
        public static final String COLUMN_NAME_LEVEL = "level";
        public static final String COLUMN_NAME_STRATEGY = "strategy";
        public static final String COLUMN_NAME_TIMESTAMP = "timestamp";
        public static final String COLUMN_NAME_URGENCY = "urgency";
        public static final String COLUMN_UPLOAD_COUNT = "upload_count";
        public static final String COLUMN_UPLOAD_FLAG = "upload_flag";

        public RecordEntry() {
        }
    }

    static {
        StringBuilder sb = new StringBuilder("CREATE INDEX log_index ON alitx_logger");
        sb.append(" (timestamp");
        sb.append(",level");
        sb.append(",upload_flag");
        sb.append(",strategy");
        sb.append(")");
        INDEX_CREATE_LOGGER = sb.toString();
        INDEX_CREATE_MONITOR = "CREATE INDEX log_index ON alitx_monitor (urgency,upload_flag,strategy)";
    }
}
