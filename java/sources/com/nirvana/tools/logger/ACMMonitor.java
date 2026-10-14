package com.nirvana.tools.logger;

import android.content.Context;
import com.nirvana.tools.logger.cache.ACMMonitorCacheManager;
import com.nirvana.tools.logger.env.ACMComponent;
import com.nirvana.tools.logger.env.ACMComponentImpl;
import com.nirvana.tools.logger.executor.ReentrantSingleThreadExecutor;
import com.nirvana.tools.logger.model.ACMLimitConfig;
import com.nirvana.tools.logger.model.ACMMonitorRecord;
import com.nirvana.tools.logger.upload.ACMMonitorUploadManager;
import com.nirvana.tools.logger.upload.ACMUpload;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class ACMMonitor implements ACMComponent {
    private static final AtomicInteger MONITOR_COUNT = new AtomicInteger();
    public static final int UPLOAD_TYPE_MANUAL = 1;
    public static final int UPLOAD_TYPE_TIMER = 2;
    private ACMMonitorCacheManager mCacheManager;
    private ACMComponentImpl mEnv;
    private ACMMonitorUploadManager mUploadManager;

    public ACMMonitor(Context context, ACMUpload<ACMMonitorRecord> aCMUpload) {
        ReentrantSingleThreadExecutor reentrantSingleThreadExecutor = new ReentrantSingleThreadExecutor("ACMMonitor" + MONITOR_COUNT.getAndAdd(1));
        this.mCacheManager = new ACMMonitorCacheManager(context.getApplicationContext(), reentrantSingleThreadExecutor);
        ACMMonitorUploadManager aCMMonitorUploadManager = new ACMMonitorUploadManager(context.getApplicationContext(), this.mCacheManager, aCMUpload, reentrantSingleThreadExecutor);
        this.mUploadManager = aCMMonitorUploadManager;
        this.mEnv = new ACMComponentImpl(aCMMonitorUploadManager);
    }

    private void cacheMonitor(String str, int i) {
        ACMMonitorRecord aCMMonitorRecord = new ACMMonitorRecord(i);
        aCMMonitorRecord.setContent(str);
        this.mCacheManager.cacheRecord(aCMMonitorRecord);
        this.mUploadManager.startLoop();
    }

    @Override // com.nirvana.tools.logger.env.ACMComponent
    public void clearLimitConfig() {
        this.mEnv.clearLimitConfig();
    }

    public void monitor(String str, int i) {
        cacheMonitor(str, i);
    }

    public void monitor(Map<String, String> map, int i) {
        cacheMonitor(new JSONObject(map).toString(), i);
    }

    @Override // com.nirvana.tools.logger.env.ACMComponent
    public void setLimitConfig(ACMLimitConfig aCMLimitConfig) {
        this.mEnv.setLimitConfig(aCMLimitConfig);
    }

    @Override // com.nirvana.tools.logger.env.ACMComponent
    public void setUploadEnabled(boolean z) {
        this.mEnv.setUploadEnabled(z);
    }

    public void setUploadType(int i) {
        if (i == 1 || i == 2) {
            this.mUploadManager.setUploadType(i);
        }
    }

    @Override // com.nirvana.tools.logger.env.ACMComponent
    public void uploadFailed() {
        this.mEnv.uploadFailed();
    }

    public void uploadManual() {
        this.mUploadManager.uploadManual();
    }
}
