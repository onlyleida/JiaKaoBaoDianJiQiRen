package com.nirvana.tools.logger.upload;

import android.content.Context;
import com.nirvana.tools.logger.cache.ACMMonitorCacheManager;
import com.nirvana.tools.logger.executor.AbstractSafeRunnable;
import com.nirvana.tools.logger.executor.ReentrantSingleThreadExecutor;
import com.nirvana.tools.logger.executor.Timer;
import com.nirvana.tools.logger.model.ACMMonitorRecord;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class ACMMonitorUploadManager extends AbstractACMUploadManager<ACMMonitorRecord> {
    private static final int MAX_RETRY_COUNT = 2;
    private ACMMonitorCacheManager mCacheManager;
    private Timer mNormalLooperTimer;
    private volatile int mUploadType;

    public ACMMonitorUploadManager(Context context, ACMMonitorCacheManager aCMMonitorCacheManager, ACMUpload<ACMMonitorRecord> aCMUpload, ReentrantSingleThreadExecutor reentrantSingleThreadExecutor) {
        super(context, aCMUpload, aCMMonitorCacheManager, reentrantSingleThreadExecutor);
        this.mUploadType = 1;
        this.mCacheManager = aCMMonitorCacheManager;
    }

    private void uploadMonitorByPage() {
        this.mExecutor.execute(new AbstractSafeRunnable() { // from class: com.nirvana.tools.logger.upload.ACMMonitorUploadManager.2
            @Override // com.nirvana.tools.logger.executor.AbstractSafeRunnable
            public void safeRun() {
                List<ACMMonitorRecord> normalMonitorRecords;
                while (ACMMonitorUploadManager.this.isAllowUploading() && (normalMonitorRecords = ACMMonitorUploadManager.this.mCacheManager.getNormalMonitorRecords(20)) != null && normalMonitorRecords.size() > 0) {
                    ACMMonitorUploadManager.this.doUploadRecords(normalMonitorRecords);
                }
            }
        });
    }

    @Override // com.nirvana.tools.logger.upload.AbstractACMUploadManager
    protected void processUploadingFailed(List<ACMMonitorRecord> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (ACMMonitorRecord aCMMonitorRecord : list) {
            if (aCMMonitorRecord.getUrgency() == 1 || aCMMonitorRecord.getUploadCount() >= 2) {
                arrayList.add(aCMMonitorRecord);
            } else {
                arrayList2.add(aCMMonitorRecord);
            }
        }
        this.mCacheManager.deleteRecords(arrayList);
        this.mCacheManager.addUploadCount(arrayList2);
    }

    public void setUploadType(int i) {
        this.mUploadType = i;
    }

    public void startLoop() {
        if (this.mUploadType != 2) {
            return;
        }
        Timer timer = this.mNormalLooperTimer;
        if (timer == null || !timer.isWorking()) {
            Timer timer2 = this.mNormalLooperTimer;
            if (timer2 != null) {
                timer2.resume();
            } else {
                this.mNormalLooperTimer = new Timer(12000L, new AbstractSafeRunnable() { // from class: com.nirvana.tools.logger.upload.ACMMonitorUploadManager.1
                    @Override // com.nirvana.tools.logger.executor.AbstractSafeRunnable
                    public void safeRun() {
                        if (ACMMonitorUploadManager.this.isAllowUploading()) {
                            ACMMonitorUploadManager.this.doUploadRecords(ACMMonitorUploadManager.this.mCacheManager.getNormalMonitorRecords(20));
                            if (ACMMonitorUploadManager.this.mCacheManager.hasNormalRecords()) {
                                return;
                            }
                            ACMMonitorUploadManager.this.mNormalLooperTimer.pause();
                        }
                    }
                });
            }
        }
    }

    public void stopLoop() {
        Timer timer = this.mNormalLooperTimer;
        if (timer == null || !timer.isWorking()) {
            return;
        }
        this.mNormalLooperTimer.quit();
        this.mNormalLooperTimer = null;
    }

    public void uploadManual() {
        stopLoop();
        uploadMonitorByPage();
    }
}
