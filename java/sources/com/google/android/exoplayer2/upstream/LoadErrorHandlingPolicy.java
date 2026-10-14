package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public interface LoadErrorHandlingPolicy {

    public static final class LoadErrorInfo {
        public final int errorCount;
        public final IOException exception;
        public final LoadEventInfo loadEventInfo;
        public final MediaLoadData mediaLoadData;

        public LoadErrorInfo(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, int i) {
            this.loadEventInfo = loadEventInfo;
            this.mediaLoadData = mediaLoadData;
            this.exception = iOException;
            this.errorCount = i;
        }
    }

    @Deprecated
    long getBlacklistDurationMsFor(int i, long j, IOException iOException, int i2);

    long getBlacklistDurationMsFor(LoadErrorInfo loadErrorInfo);

    int getMinimumLoadableRetryCount(int i);

    @Deprecated
    long getRetryDelayMsFor(int i, long j, IOException iOException, int i2);

    long getRetryDelayMsFor(LoadErrorInfo loadErrorInfo);

    void onLoadTaskConcluded(long j);
}
