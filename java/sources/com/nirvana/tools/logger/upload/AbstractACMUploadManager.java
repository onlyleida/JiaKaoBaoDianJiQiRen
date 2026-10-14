package com.nirvana.tools.logger.upload;

import android.content.Context;
import com.nirvana.tools.logger.cache.ACMCacheManager;
import com.nirvana.tools.logger.cache.db.AbstractDatabase;
import com.nirvana.tools.logger.executor.AbstractSafeRunnable;
import com.nirvana.tools.logger.executor.ReentrantSingleThreadExecutor;
import com.nirvana.tools.logger.model.ACMLimitConfig;
import com.nirvana.tools.logger.model.ACMRecord;
import com.nirvana.tools.logger.upload.inteceptor.BaseInterceptor;
import com.nirvana.tools.logger.upload.inteceptor.EnableInterceptor;
import com.nirvana.tools.logger.upload.inteceptor.LimitInterceptor;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractACMUploadManager<T extends ACMRecord> {
    protected static final int PAGE_SIZE = 20;
    protected static final long TIME_INTERVAL = 12000;
    private static final int UPLOAD_RETRY_MAX_COUNT = 1;
    private boolean isUploadingFailed;
    protected ACMCacheManager<T, ? extends AbstractDatabase<T>> mCacheManager;
    protected Context mContext;
    private EnableInterceptor mEnableInterceptor;
    protected ReentrantSingleThreadExecutor mExecutor;
    protected ACMUpload<T> mUploader;
    protected Map<Class, BaseInterceptor> mInterceptors = new HashMap();
    private Object mFailedLock = new Object();

    public AbstractACMUploadManager(Context context, ACMUpload<T> aCMUpload, ACMCacheManager<T, ? extends AbstractDatabase<T>> aCMCacheManager, ReentrantSingleThreadExecutor reentrantSingleThreadExecutor) {
        this.mContext = context;
        this.mUploader = aCMUpload;
        this.mCacheManager = aCMCacheManager;
        this.mExecutor = reentrantSingleThreadExecutor;
        this.mInterceptors.put(LimitInterceptor.class, LimitInterceptor.getInstance(context));
    }

    public void clearLimitConfig() {
        LimitInterceptor limitInterceptor = (LimitInterceptor) this.mInterceptors.remove(LimitInterceptor.class);
        if (limitInterceptor != null) {
            limitInterceptor.clearLimitInfo();
        }
    }

    protected boolean doUploadRecords(List<T> list) {
        if (list != null && list.size() > 0) {
            boolean zUpload = false;
            for (int i = 0; i <= 1; i++) {
                if (!isAllowUploading()) {
                    return true;
                }
                LimitInterceptor.getInstance(this.mContext).addLimitCount();
                zUpload = this.mUploader.upload(list);
                if (zUpload) {
                    this.mCacheManager.deleteRecords(list);
                    break;
                }
            }
            if (!zUpload) {
                processUploadingFailed(list);
                return false;
            }
        }
        return true;
    }

    public boolean isAllowUploading() {
        Map<Class, BaseInterceptor> map = this.mInterceptors;
        if (map != null && map.size() != 0) {
            Iterator<BaseInterceptor> it = this.mInterceptors.values().iterator();
            while (it.hasNext()) {
                if (!it.next().isAllowUploading()) {
                    return false;
                }
            }
        }
        return true;
    }

    protected abstract void processUploadingFailed(List<T> list);

    public void setLimitConfig(ACMLimitConfig aCMLimitConfig) {
        LimitInterceptor limitInterceptor = LimitInterceptor.getInstance(this.mContext);
        limitInterceptor.setConfig(aCMLimitConfig);
        this.mInterceptors.put(LimitInterceptor.class, limitInterceptor);
    }

    public void setUploadEnable(boolean z) {
        if (this.mEnableInterceptor == null) {
            this.mEnableInterceptor = new EnableInterceptor();
        }
        this.mEnableInterceptor.setEnabled(z);
        this.mInterceptors.put(EnableInterceptor.class, this.mEnableInterceptor);
    }

    public void uploadFailed() {
        synchronized (this.mFailedLock) {
            if (this.isUploadingFailed) {
                return;
            }
            this.isUploadingFailed = true;
            this.mExecutor.execute(new AbstractSafeRunnable() { // from class: com.nirvana.tools.logger.upload.AbstractACMUploadManager.1
                @Override // com.nirvana.tools.logger.executor.AbstractSafeRunnable
                public void safeRun() {
                    if (AbstractACMUploadManager.this.mCacheManager.hasFailedRecords()) {
                        AbstractACMUploadManager.this.mExecutor.execute(new AbstractSafeRunnable() { // from class: com.nirvana.tools.logger.upload.AbstractACMUploadManager.1.1
                            @Override // com.nirvana.tools.logger.executor.AbstractSafeRunnable
                            public void safeRun() {
                                List<T> failedRecords;
                                long failedMaxID = AbstractACMUploadManager.this.mCacheManager.getFailedMaxID();
                                long id = 0;
                                while (AbstractACMUploadManager.this.isAllowUploading() && (failedRecords = AbstractACMUploadManager.this.mCacheManager.getFailedRecords(id, failedMaxID, 20)) != null && failedRecords.size() > 0) {
                                    AbstractACMUploadManager.this.doUploadRecords(failedRecords);
                                    id = 1 + failedRecords.get(failedRecords.size() - 1).getId();
                                }
                                AbstractACMUploadManager.this.isUploadingFailed = false;
                            }
                        });
                    }
                }
            });
        }
    }
}
