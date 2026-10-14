package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.UnknownNull;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CompositeMediaSource<T> extends BaseMediaSource {
    private final HashMap<T, MediaSourceAndListener<T>> childSources = new HashMap<>();
    private Handler eventHandler;
    private TransferListener mediaTransferListener;

    /* JADX WARN: Field signature parse error: id
    jadx.core.utils.exceptions.JadxRuntimeException: Can't parse type: TT at position 1 ('T'), unexpected: T
    	at jadx.core.dex.nodes.parser.SignatureParser.consumeType(SignatureParser.java:169)
    	at jadx.core.dex.visitors.SignatureProcessor.parseFieldSignature(SignatureProcessor.java:161)
    	at jadx.core.dex.visitors.SignatureProcessor.visit(SignatureProcessor.java:37)
     */
    private final class ForwardingEventListener implements MediaSourceEventListener, DrmSessionEventListener {
        private DrmSessionEventListener.EventDispatcher drmEventDispatcher;

        @UnknownNull
        private final Object id;
        private MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;

        /* JADX WARN: Failed to parse method signature: (TT)V
        jadx.core.utils.exceptions.JadxRuntimeException: Can't parse type: (TT)V at position 2 ('T'), unexpected: T
        	at jadx.core.dex.nodes.parser.SignatureParser.consumeType(SignatureParser.java:169)
        	at jadx.core.dex.nodes.parser.SignatureParser.consumeMethodArgs(SignatureParser.java:336)
        	at jadx.core.dex.visitors.SignatureProcessor.parseMethodSignature(SignatureProcessor.java:187)
        	at jadx.core.dex.visitors.SignatureProcessor.visit(SignatureProcessor.java:40)
         */
        public ForwardingEventListener(Object obj) {
            this.mediaSourceEventDispatcher = CompositeMediaSource.this.createEventDispatcher(null);
            this.drmEventDispatcher = CompositeMediaSource.this.createDrmEventDispatcher(null);
            this.id = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private boolean maybeUpdateEventDispatcher(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            MediaSource.MediaPeriodId mediaPeriodIdForChildMediaPeriodId;
            if (mediaPeriodId != null) {
                mediaPeriodIdForChildMediaPeriodId = CompositeMediaSource.this.getMediaPeriodIdForChildMediaPeriodId(this.id, mediaPeriodId);
                if (mediaPeriodIdForChildMediaPeriodId == null) {
                    return false;
                }
            } else {
                mediaPeriodIdForChildMediaPeriodId = null;
            }
            int windowIndexForChildWindowIndex = CompositeMediaSource.this.getWindowIndexForChildWindowIndex(this.id, i);
            MediaSourceEventListener.EventDispatcher eventDispatcher = this.mediaSourceEventDispatcher;
            if (eventDispatcher.windowIndex != windowIndexForChildWindowIndex || !Util.areEqual(eventDispatcher.mediaPeriodId, mediaPeriodIdForChildMediaPeriodId)) {
                this.mediaSourceEventDispatcher = CompositeMediaSource.this.createEventDispatcher(windowIndexForChildWindowIndex, mediaPeriodIdForChildMediaPeriodId, 0L);
            }
            DrmSessionEventListener.EventDispatcher eventDispatcher2 = this.drmEventDispatcher;
            if (eventDispatcher2.windowIndex == windowIndexForChildWindowIndex && Util.areEqual(eventDispatcher2.mediaPeriodId, mediaPeriodIdForChildMediaPeriodId)) {
                return true;
            }
            this.drmEventDispatcher = CompositeMediaSource.this.createDrmEventDispatcher(windowIndexForChildWindowIndex, mediaPeriodIdForChildMediaPeriodId);
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private MediaLoadData maybeUpdateMediaLoadData(MediaLoadData mediaLoadData) {
            long mediaTimeForChildMediaTime = CompositeMediaSource.this.getMediaTimeForChildMediaTime(this.id, mediaLoadData.mediaStartTimeMs);
            long mediaTimeForChildMediaTime2 = CompositeMediaSource.this.getMediaTimeForChildMediaTime(this.id, mediaLoadData.mediaEndTimeMs);
            return (mediaTimeForChildMediaTime == mediaLoadData.mediaStartTimeMs && mediaTimeForChildMediaTime2 == mediaLoadData.mediaEndTimeMs) ? mediaLoadData : new MediaLoadData(mediaLoadData.dataType, mediaLoadData.trackType, mediaLoadData.trackFormat, mediaLoadData.trackSelectionReason, mediaLoadData.trackSelectionData, mediaTimeForChildMediaTime, mediaTimeForChildMediaTime2);
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onDownstreamFormatChanged(int i, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.downstreamFormatChanged(maybeUpdateMediaLoadData(mediaLoadData));
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysLoaded(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.drmEventDispatcher.drmKeysLoaded();
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysRemoved(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.drmEventDispatcher.drmKeysRemoved();
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysRestored(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.drmEventDispatcher.drmKeysRestored();
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public /* synthetic */ void onDrmSessionAcquired(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            com.google.android.exoplayer2.drm.u.$default$onDrmSessionAcquired(this, i, mediaPeriodId);
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionAcquired(int i, MediaSource.MediaPeriodId mediaPeriodId, int i2) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.drmEventDispatcher.drmSessionAcquired(i2);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionManagerError(int i, MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.drmEventDispatcher.drmSessionManagerError(exc);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionReleased(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.drmEventDispatcher.drmSessionReleased();
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadCanceled(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.loadCanceled(loadEventInfo, maybeUpdateMediaLoadData(mediaLoadData));
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadCompleted(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.loadCompleted(loadEventInfo, maybeUpdateMediaLoadData(mediaLoadData));
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadError(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.loadError(loadEventInfo, maybeUpdateMediaLoadData(mediaLoadData), iOException, z);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadStarted(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.loadStarted(loadEventInfo, maybeUpdateMediaLoadData(mediaLoadData));
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onUpstreamDiscarded(int i, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.upstreamDiscarded(maybeUpdateMediaLoadData(mediaLoadData));
            }
        }
    }

    private static final class MediaSourceAndListener<T> {
        public final MediaSource.MediaSourceCaller caller;
        public final CompositeMediaSource<T>.ForwardingEventListener eventListener;
        public final MediaSource mediaSource;

        public MediaSourceAndListener(MediaSource mediaSource, MediaSource.MediaSourceCaller mediaSourceCaller, CompositeMediaSource<T>.ForwardingEventListener forwardingEventListener) {
            this.mediaSource = mediaSource;
            this.caller = mediaSourceCaller;
            this.eventListener = forwardingEventListener;
        }
    }

    protected CompositeMediaSource() {
    }

    protected final void disableChildSource(@UnknownNull T t) {
        MediaSourceAndListener mediaSourceAndListener = (MediaSourceAndListener) Assertions.checkNotNull(this.childSources.get(t));
        mediaSourceAndListener.mediaSource.disable(mediaSourceAndListener.caller);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    protected void disableInternal() {
        for (MediaSourceAndListener<T> mediaSourceAndListener : this.childSources.values()) {
            mediaSourceAndListener.mediaSource.disable(mediaSourceAndListener.caller);
        }
    }

    protected final void enableChildSource(@UnknownNull T t) {
        MediaSourceAndListener mediaSourceAndListener = (MediaSourceAndListener) Assertions.checkNotNull(this.childSources.get(t));
        mediaSourceAndListener.mediaSource.enable(mediaSourceAndListener.caller);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    protected void enableInternal() {
        for (MediaSourceAndListener<T> mediaSourceAndListener : this.childSources.values()) {
            mediaSourceAndListener.mediaSource.enable(mediaSourceAndListener.caller);
        }
    }

    protected MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(@UnknownNull T t, MediaSource.MediaPeriodId mediaPeriodId) {
        return mediaPeriodId;
    }

    protected long getMediaTimeForChildMediaTime(@UnknownNull T t, long j) {
        return j;
    }

    protected int getWindowIndexForChildWindowIndex(@UnknownNull T t, int i) {
        return i;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        Iterator<MediaSourceAndListener<T>> it = this.childSources.values().iterator();
        while (it.hasNext()) {
            it.next().mediaSource.maybeThrowSourceInfoRefreshError();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: onChildSourceInfoRefreshed, reason: merged with bridge method [inline-methods] */
    public abstract void b(@UnknownNull T t, MediaSource mediaSource, Timeline timeline);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void prepareChildSource(@UnknownNull final T t, MediaSource mediaSource) {
        Assertions.checkArgument(!this.childSources.containsKey(t));
        MediaSource.MediaSourceCaller mediaSourceCaller = new MediaSource.MediaSourceCaller() { // from class: com.google.android.exoplayer2.source.b
            @Override // com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller
            public final void onSourceInfoRefreshed(MediaSource mediaSource2, Timeline timeline) {
                this.f11926a.b(t, mediaSource2, timeline);
            }
        };
        ForwardingEventListener forwardingEventListener = new ForwardingEventListener(t);
        this.childSources.put(t, new MediaSourceAndListener<>(mediaSource, mediaSourceCaller, forwardingEventListener));
        mediaSource.addEventListener((Handler) Assertions.checkNotNull(this.eventHandler), forwardingEventListener);
        mediaSource.addDrmEventListener((Handler) Assertions.checkNotNull(this.eventHandler), forwardingEventListener);
        mediaSource.prepareSource(mediaSourceCaller, this.mediaTransferListener);
        if (isEnabled()) {
            return;
        }
        mediaSource.disable(mediaSourceCaller);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    protected void prepareSourceInternal(TransferListener transferListener) {
        this.mediaTransferListener = transferListener;
        this.eventHandler = Util.createHandlerForCurrentLooper();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void releaseChildSource(@UnknownNull T t) {
        MediaSourceAndListener mediaSourceAndListener = (MediaSourceAndListener) Assertions.checkNotNull(this.childSources.remove(t));
        mediaSourceAndListener.mediaSource.releaseSource(mediaSourceAndListener.caller);
        mediaSourceAndListener.mediaSource.removeEventListener(mediaSourceAndListener.eventListener);
        mediaSourceAndListener.mediaSource.removeDrmEventListener(mediaSourceAndListener.eventListener);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    protected void releaseSourceInternal() {
        for (MediaSourceAndListener<T> mediaSourceAndListener : this.childSources.values()) {
            mediaSourceAndListener.mediaSource.releaseSource(mediaSourceAndListener.caller);
            mediaSourceAndListener.mediaSource.removeEventListener(mediaSourceAndListener.eventListener);
            mediaSourceAndListener.mediaSource.removeDrmEventListener(mediaSourceAndListener.eventListener);
        }
        this.childSources.clear();
    }
}
