package com.google.android.exoplayer2.source;

import android.content.Context;
import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.drm.DrmSessionManagerProvider;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.ads.AdsLoader;
import com.google.android.exoplayer2.source.ads.AdsMediaSource;
import com.google.android.exoplayer2.ui.AdViewProvider;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class DefaultMediaSourceFactory implements MediaSourceFactory {
    private static final String TAG = "DefaultMediaSourceFactory";
    private AdViewProvider adViewProvider;
    private AdsLoaderProvider adsLoaderProvider;
    private final DataSource.Factory dataSourceFactory;
    private long liveMaxOffsetMs;
    private float liveMaxSpeed;
    private long liveMinOffsetMs;
    private float liveMinSpeed;
    private long liveTargetOffsetMs;
    private LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final SparseArray<MediaSourceFactory> mediaSourceFactories;
    private final int[] supportedTypes;

    public interface AdsLoaderProvider {
        AdsLoader getAdsLoader(MediaItem.AdsConfiguration adsConfiguration);
    }

    public DefaultMediaSourceFactory(Context context) {
        this(new DefaultDataSourceFactory(context));
    }

    private static SparseArray<MediaSourceFactory> loadDelegates(DataSource.Factory factory, ExtractorsFactory extractorsFactory) {
        SparseArray<MediaSourceFactory> sparseArray = new SparseArray<>();
        try {
            sparseArray.put(0, (MediaSourceFactory) Class.forName("com.google.android.exoplayer2.source.dash.DashMediaSource$Factory").asSubclass(MediaSourceFactory.class).getConstructor(DataSource.Factory.class).newInstance(factory));
        } catch (Exception unused) {
        }
        try {
            sparseArray.put(1, (MediaSourceFactory) Class.forName("com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory").asSubclass(MediaSourceFactory.class).getConstructor(DataSource.Factory.class).newInstance(factory));
        } catch (Exception unused2) {
        }
        try {
            sparseArray.put(2, (MediaSourceFactory) Class.forName("com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory").asSubclass(MediaSourceFactory.class).getConstructor(DataSource.Factory.class).newInstance(factory));
        } catch (Exception unused3) {
        }
        try {
            sparseArray.put(3, (MediaSourceFactory) Class.forName("com.google.android.exoplayer2.source.rtsp.RtspMediaSource$Factory").asSubclass(MediaSourceFactory.class).getConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Exception unused4) {
        }
        sparseArray.put(4, new ProgressiveMediaSource.Factory(factory, extractorsFactory));
        return sparseArray;
    }

    private static MediaSource maybeClipMediaSource(MediaItem mediaItem, MediaSource mediaSource) {
        MediaItem.ClippingProperties clippingProperties = mediaItem.clippingProperties;
        long j = clippingProperties.startPositionMs;
        if (j == 0 && clippingProperties.endPositionMs == Long.MIN_VALUE && !clippingProperties.relativeToDefaultPosition) {
            return mediaSource;
        }
        long jMsToUs = C.msToUs(j);
        long jMsToUs2 = C.msToUs(mediaItem.clippingProperties.endPositionMs);
        MediaItem.ClippingProperties clippingProperties2 = mediaItem.clippingProperties;
        return new ClippingMediaSource(mediaSource, jMsToUs, jMsToUs2, !clippingProperties2.startsAtKeyFrame, clippingProperties2.relativeToLiveWindow, clippingProperties2.relativeToDefaultPosition);
    }

    private MediaSource maybeWrapWithAdsMediaSource(MediaItem mediaItem, MediaSource mediaSource) {
        Assertions.checkNotNull(mediaItem.playbackProperties);
        MediaItem.AdsConfiguration adsConfiguration = mediaItem.playbackProperties.adsConfiguration;
        if (adsConfiguration == null) {
            return mediaSource;
        }
        AdsLoaderProvider adsLoaderProvider = this.adsLoaderProvider;
        AdViewProvider adViewProvider = this.adViewProvider;
        if (adsLoaderProvider == null || adViewProvider == null) {
            Log.w(TAG, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider.");
            return mediaSource;
        }
        AdsLoader adsLoader = adsLoaderProvider.getAdsLoader(adsConfiguration);
        if (adsLoader == null) {
            Log.w(TAG, "Playing media without ads, as no AdsLoader was provided.");
            return mediaSource;
        }
        DataSpec dataSpec = new DataSpec(adsConfiguration.adTagUri);
        Object obj = adsConfiguration.adsId;
        return new AdsMediaSource(mediaSource, dataSpec, obj != null ? obj : Pair.create(mediaItem.mediaId, adsConfiguration.adTagUri), this, adsLoader, adViewProvider);
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    public /* synthetic */ MediaSource createMediaSource(Uri uri) {
        return createMediaSource(MediaItem.fromUri(uri));
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    public MediaSource createMediaSource(MediaItem mediaItem) {
        Assertions.checkNotNull(mediaItem.playbackProperties);
        MediaItem.PlaybackProperties playbackProperties = mediaItem.playbackProperties;
        int iInferContentTypeForUriAndMimeType = Util.inferContentTypeForUriAndMimeType(playbackProperties.uri, playbackProperties.mimeType);
        MediaSourceFactory mediaSourceFactory = this.mediaSourceFactories.get(iInferContentTypeForUriAndMimeType);
        StringBuilder sb = new StringBuilder(68);
        sb.append("No suitable media source factory found for content type: ");
        sb.append(iInferContentTypeForUriAndMimeType);
        Assertions.checkNotNull(mediaSourceFactory, sb.toString());
        MediaItem.LiveConfiguration liveConfiguration = mediaItem.liveConfiguration;
        if ((liveConfiguration.targetOffsetMs == C.TIME_UNSET && this.liveTargetOffsetMs != C.TIME_UNSET) || ((liveConfiguration.minPlaybackSpeed == -3.4028235E38f && this.liveMinSpeed != -3.4028235E38f) || ((liveConfiguration.maxPlaybackSpeed == -3.4028235E38f && this.liveMaxSpeed != -3.4028235E38f) || ((liveConfiguration.minOffsetMs == C.TIME_UNSET && this.liveMinOffsetMs != C.TIME_UNSET) || (liveConfiguration.maxOffsetMs == C.TIME_UNSET && this.liveMaxOffsetMs != C.TIME_UNSET))))) {
            MediaItem.Builder builderBuildUpon = mediaItem.buildUpon();
            long j = mediaItem.liveConfiguration.targetOffsetMs;
            if (j == C.TIME_UNSET) {
                j = this.liveTargetOffsetMs;
            }
            MediaItem.Builder liveTargetOffsetMs = builderBuildUpon.setLiveTargetOffsetMs(j);
            float f2 = mediaItem.liveConfiguration.minPlaybackSpeed;
            if (f2 == -3.4028235E38f) {
                f2 = this.liveMinSpeed;
            }
            MediaItem.Builder liveMinPlaybackSpeed = liveTargetOffsetMs.setLiveMinPlaybackSpeed(f2);
            float f3 = mediaItem.liveConfiguration.maxPlaybackSpeed;
            if (f3 == -3.4028235E38f) {
                f3 = this.liveMaxSpeed;
            }
            MediaItem.Builder liveMaxPlaybackSpeed = liveMinPlaybackSpeed.setLiveMaxPlaybackSpeed(f3);
            long j2 = mediaItem.liveConfiguration.minOffsetMs;
            if (j2 == C.TIME_UNSET) {
                j2 = this.liveMinOffsetMs;
            }
            MediaItem.Builder liveMinOffsetMs = liveMaxPlaybackSpeed.setLiveMinOffsetMs(j2);
            long j3 = mediaItem.liveConfiguration.maxOffsetMs;
            if (j3 == C.TIME_UNSET) {
                j3 = this.liveMaxOffsetMs;
            }
            mediaItem = liveMinOffsetMs.setLiveMaxOffsetMs(j3).build();
        }
        MediaSource mediaSourceCreateMediaSource = mediaSourceFactory.createMediaSource(mediaItem);
        List<MediaItem.Subtitle> list = ((MediaItem.PlaybackProperties) Util.castNonNull(mediaItem.playbackProperties)).subtitles;
        if (!list.isEmpty()) {
            MediaSource[] mediaSourceArr = new MediaSource[list.size() + 1];
            int i = 0;
            mediaSourceArr[0] = mediaSourceCreateMediaSource;
            SingleSampleMediaSource.Factory loadErrorHandlingPolicy = new SingleSampleMediaSource.Factory(this.dataSourceFactory).setLoadErrorHandlingPolicy(this.loadErrorHandlingPolicy);
            while (i < list.size()) {
                int i2 = i + 1;
                mediaSourceArr[i2] = loadErrorHandlingPolicy.createMediaSource(list.get(i), C.TIME_UNSET);
                i = i2;
            }
            mediaSourceCreateMediaSource = new MergingMediaSource(mediaSourceArr);
        }
        return maybeWrapWithAdsMediaSource(mediaItem, maybeClipMediaSource(mediaItem, mediaSourceCreateMediaSource));
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    public int[] getSupportedTypes() {
        int[] iArr = this.supportedTypes;
        return Arrays.copyOf(iArr, iArr.length);
    }

    public DefaultMediaSourceFactory setAdViewProvider(AdViewProvider adViewProvider) {
        this.adViewProvider = adViewProvider;
        return this;
    }

    public DefaultMediaSourceFactory setAdsLoaderProvider(AdsLoaderProvider adsLoaderProvider) {
        this.adsLoaderProvider = adsLoaderProvider;
        return this;
    }

    public DefaultMediaSourceFactory setLiveMaxOffsetMs(long j) {
        this.liveMaxOffsetMs = j;
        return this;
    }

    public DefaultMediaSourceFactory setLiveMaxSpeed(float f2) {
        this.liveMaxSpeed = f2;
        return this;
    }

    public DefaultMediaSourceFactory setLiveMinOffsetMs(long j) {
        this.liveMinOffsetMs = j;
        return this;
    }

    public DefaultMediaSourceFactory setLiveMinSpeed(float f2) {
        this.liveMinSpeed = f2;
        return this;
    }

    public DefaultMediaSourceFactory setLiveTargetOffsetMs(long j) {
        this.liveTargetOffsetMs = j;
        return this;
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    @Deprecated
    public /* bridge */ /* synthetic */ MediaSourceFactory setStreamKeys(List list) {
        return setStreamKeys((List<StreamKey>) list);
    }

    public DefaultMediaSourceFactory(Context context, ExtractorsFactory extractorsFactory) {
        this(new DefaultDataSourceFactory(context), extractorsFactory);
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    public DefaultMediaSourceFactory setDrmHttpDataSourceFactory(HttpDataSource.Factory factory) {
        for (int i = 0; i < this.mediaSourceFactories.size(); i++) {
            this.mediaSourceFactories.valueAt(i).setDrmHttpDataSourceFactory(factory);
        }
        return this;
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    public DefaultMediaSourceFactory setDrmSessionManager(DrmSessionManager drmSessionManager) {
        for (int i = 0; i < this.mediaSourceFactories.size(); i++) {
            this.mediaSourceFactories.valueAt(i).setDrmSessionManager(drmSessionManager);
        }
        return this;
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    public DefaultMediaSourceFactory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
        for (int i = 0; i < this.mediaSourceFactories.size(); i++) {
            this.mediaSourceFactories.valueAt(i).setDrmSessionManagerProvider(drmSessionManagerProvider);
        }
        return this;
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    public DefaultMediaSourceFactory setDrmUserAgent(String str) {
        for (int i = 0; i < this.mediaSourceFactories.size(); i++) {
            this.mediaSourceFactories.valueAt(i).setDrmUserAgent(str);
        }
        return this;
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    public DefaultMediaSourceFactory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        for (int i = 0; i < this.mediaSourceFactories.size(); i++) {
            this.mediaSourceFactories.valueAt(i).setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
        }
        return this;
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    @Deprecated
    public DefaultMediaSourceFactory setStreamKeys(List<StreamKey> list) {
        for (int i = 0; i < this.mediaSourceFactories.size(); i++) {
            this.mediaSourceFactories.valueAt(i).setStreamKeys(list);
        }
        return this;
    }

    public DefaultMediaSourceFactory(DataSource.Factory factory) {
        this(factory, new DefaultExtractorsFactory());
    }

    public DefaultMediaSourceFactory(DataSource.Factory factory, ExtractorsFactory extractorsFactory) {
        this.dataSourceFactory = factory;
        SparseArray<MediaSourceFactory> sparseArrayLoadDelegates = loadDelegates(factory, extractorsFactory);
        this.mediaSourceFactories = sparseArrayLoadDelegates;
        this.supportedTypes = new int[sparseArrayLoadDelegates.size()];
        for (int i = 0; i < this.mediaSourceFactories.size(); i++) {
            this.supportedTypes[i] = this.mediaSourceFactories.keyAt(i);
        }
        this.liveTargetOffsetMs = C.TIME_UNSET;
        this.liveMinOffsetMs = C.TIME_UNSET;
        this.liveMaxOffsetMs = C.TIME_UNSET;
        this.liveMinSpeed = -3.4028235E38f;
        this.liveMaxSpeed = -3.4028235E38f;
    }
}
