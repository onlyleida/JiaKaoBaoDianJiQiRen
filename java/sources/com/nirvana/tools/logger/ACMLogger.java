package com.nirvana.tools.logger;

import android.content.Context;
import com.nirvana.tools.logger.cache.ACMLogCacheManager;
import com.nirvana.tools.logger.env.ACMComponent;
import com.nirvana.tools.logger.env.ACMComponentImpl;
import com.nirvana.tools.logger.executor.ReentrantSingleThreadExecutor;
import com.nirvana.tools.logger.model.ACMLimitConfig;
import com.nirvana.tools.logger.model.ACMLoggerRecord;
import com.nirvana.tools.logger.upload.ACMLogUploadManager;
import com.nirvana.tools.logger.upload.ACMUpload;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
public class ACMLogger implements ACMComponent {
    private static final AtomicInteger LOGGER_COUNT = new AtomicInteger();
    private ACMLogCacheManager mCacheManager;
    private ACMComponent mComponentDelegate;
    private ACMLogUploadManager mUploadManager;

    public ACMLogger(Context context, ACMUpload<ACMLoggerRecord> aCMUpload) {
        ReentrantSingleThreadExecutor reentrantSingleThreadExecutor = new ReentrantSingleThreadExecutor("ACMLogger" + LOGGER_COUNT.getAndAdd(1));
        this.mCacheManager = new ACMLogCacheManager(context.getApplicationContext(), reentrantSingleThreadExecutor);
        ACMLogUploadManager aCMLogUploadManager = new ACMLogUploadManager(context.getApplicationContext(), this.mCacheManager, aCMUpload, reentrantSingleThreadExecutor);
        this.mUploadManager = aCMLogUploadManager;
        this.mComponentDelegate = new ACMComponentImpl(aCMLogUploadManager);
    }

    private void internalLog(int i, String str) {
        ACMLoggerRecord aCMLoggerRecord = new ACMLoggerRecord();
        aCMLoggerRecord.setLevel(i);
        aCMLoggerRecord.setTimestamp(System.currentTimeMillis());
        aCMLoggerRecord.setContent(str);
        aCMLoggerRecord.setUploadCount(0);
        aCMLoggerRecord.setUploadFlag(0);
        aCMLoggerRecord.setStrategy(2);
        this.mCacheManager.cacheRecord(aCMLoggerRecord);
    }

    @Override // com.nirvana.tools.logger.env.ACMComponent
    public void clearLimitConfig() {
        this.mComponentDelegate.clearLimitConfig();
    }

    public void crash(String str) {
        internalLog(6, str);
    }

    public void debug(String str) {
        internalLog(2, str);
    }

    public void error(String str) {
        internalLog(5, str);
    }

    public void info(String str) {
        internalLog(3, str);
    }

    @Override // com.nirvana.tools.logger.env.ACMComponent
    public void setLimitConfig(ACMLimitConfig aCMLimitConfig) {
        this.mComponentDelegate.setLimitConfig(aCMLimitConfig);
    }

    @Override // com.nirvana.tools.logger.env.ACMComponent
    public void setUploadEnabled(boolean z) {
        this.mComponentDelegate.setUploadEnabled(z);
    }

    @Override // com.nirvana.tools.logger.env.ACMComponent
    public void uploadFailed() {
        this.mComponentDelegate.uploadFailed();
    }

    public void uploadLog(long j, long j2, int i) {
        this.mUploadManager.uploadLogger(j, j2, i);
    }

    public void verbose(String str) {
        internalLog(1, str);
    }

    public void warning(String str) {
        internalLog(4, str);
    }
}
