package com.nirvana.tools.logger.cache;

import com.nirvana.tools.logger.cache.db.AbstractDatabase;
import com.nirvana.tools.logger.executor.AbstractSafeRunnable;
import com.nirvana.tools.logger.executor.ReentrantSingleThreadExecutor;
import com.nirvana.tools.logger.model.ACMRecord;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class ACMCacheManager<T extends ACMRecord, G extends AbstractDatabase<T>> {
    protected G mDatabase;
    protected ReentrantSingleThreadExecutor mExecutor;

    public ACMCacheManager(G g2, ReentrantSingleThreadExecutor reentrantSingleThreadExecutor) {
        this.mDatabase = g2;
        this.mExecutor = reentrantSingleThreadExecutor;
    }

    public void addUploadCount(final List<T> list) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        this.mExecutor.execute(new AbstractSafeRunnable() { // from class: com.nirvana.tools.logger.cache.ACMCacheManager.2
            @Override // com.nirvana.tools.logger.executor.AbstractSafeRunnable
            public void safeRun() {
                ACMCacheManager.this.mDatabase.updateUploadCount(list, jCurrentTimeMillis, 1);
            }
        });
    }

    public void cacheRecord(final T t) {
        this.mExecutor.execute(new AbstractSafeRunnable() { // from class: com.nirvana.tools.logger.cache.ACMCacheManager.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.nirvana.tools.logger.executor.AbstractSafeRunnable
            public void safeRun() {
                ACMCacheManager.this.mDatabase.insert(t);
            }
        });
    }

    public void deleteRecords(List<T> list) {
        this.mDatabase.deleteRecords(list);
    }

    public long getFailedMaxID() {
        return this.mDatabase.queryFailedMaxId();
    }

    public List<T> getFailedRecords(long j, long j2, int i) {
        return this.mDatabase.queryFailed(j, j2, i);
    }

    public boolean hasFailedRecords() {
        List<T> listQuery = this.mDatabase.query(1, 1, null);
        return listQuery != null && listQuery.size() > 0;
    }

    public boolean hasNormalRecords() {
        List<T> listQuery = this.mDatabase.query(1, 0, null);
        return listQuery != null && listQuery.size() > 0;
    }
}
