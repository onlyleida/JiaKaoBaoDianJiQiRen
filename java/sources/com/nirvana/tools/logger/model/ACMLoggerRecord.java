package com.nirvana.tools.logger.model;

/* JADX INFO: loaded from: classes6.dex */
public class ACMLoggerRecord extends ACMRecord {
    public static final int LOG_LEVEL_CRASH = 6;
    public static final int LOG_LEVEL_DEBUG = 2;
    public static final int LOG_LEVEL_ERROR = 5;
    public static final int LOG_LEVEL_INFO = 3;
    public static final int LOG_LEVEL_VERBOSE = 1;
    public static final int LOG_LEVEL_WARNING = 4;
    private int level = 2;

    public int getLevel() {
        return this.level;
    }

    public void setLevel(int i) {
        this.level = i;
    }
}
