package cn.mucang.android.jiakaoyi.teachingk2.video;

import android.app.Application;
import android.content.Context;
import android.os.Environment;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.audio.m;
import com.google.android.exoplayer2.device.DeviceInfo;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.ui.PlayerView;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer2.upstream.cache.CacheDataSource;
import com.google.android.exoplayer2.upstream.cache.LeastRecentlyUsedCacheEvictor;
import com.google.android.exoplayer2.upstream.cache.SimpleCache;
import com.google.android.exoplayer2.v0;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.android.exoplayer2.video.l;
import com.google.android.exoplayer2.w0;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.video.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000 %2\u00020\u0001:\u0002%&B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\tJ\u0006\u0010\u0011\u001a\u00020\u0012J\b\u0010\u0013\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0012J\b\u0010\u0017\u001a\u00020\u0010H\u0002J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010\u001b\u001a\u00020\u0010H\u0002J\u0006\u0010\u001c\u001a\u00020\u0010J\u000e\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0006J\u0006\u0010\u001f\u001a\u00020\u0010J\u0006\u0010 \u001a\u00020\u0010J\u000e\u0010!\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020\u0010R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayer;", "", "videoView", "Lcom/google/android/exoplayer2/ui/PlayerView;", "(Lcom/google/android/exoplayer2/ui/PlayerView;)V", "currentPath", "", "onVideoListener", "Ljava/util/ArrayList;", "Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayer$OnVideoListener;", "Lkotlin/collections/ArrayList;", "player", "Lcom/google/android/exoplayer2/SimpleExoPlayer;", "task", "Ljava/lang/Runnable;", "addOnVideoListener", "", "canPlaying", "", "getCurrentPath", "getDuration", "", "isPlaying", "onEnd", "onError", "error", "Lcom/google/android/exoplayer2/ExoPlaybackException;", "onReady", "pause", "playVideo", "path", "release", "resume", "seek", "position", "", "stop", "Companion", "OnVideoListener", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class VideoPlayer {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f8732f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final LeastRecentlyUsedCacheEvictor f8733g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final SimpleCache f8734h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PlayerView f8735a;
    private SimpleExoPlayer b;
    private final ArrayList<c> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f8736d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f8737e;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.video.f$a */
    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayer$1", "Lcom/google/android/exoplayer2/Player$Listener;", "onEvents", "", "player", "Lcom/google/android/exoplayer2/Player;", "events", "Lcom/google/android/exoplayer2/Player$Events;", "onPlayerError", "error", "Lcom/google/android/exoplayer2/ExoPlaybackException;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements Player.Listener {
        a() {
        }

        @Override // com.google.android.exoplayer2.audio.AudioListener
        public /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
            m.$default$onAudioAttributesChanged(this, audioAttributes);
        }

        @Override // com.google.android.exoplayer2.audio.AudioListener
        public /* synthetic */ void onAudioSessionIdChanged(int i) {
            m.$default$onAudioSessionIdChanged(this, i);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
            v0.$default$onAvailableCommandsChanged(this, commands);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.text.TextOutput
        public /* synthetic */ void onCues(List list) {
            w0.$default$onCues(this, list);
        }

        @Override // com.google.android.exoplayer2.device.DeviceListener
        public /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
            com.google.android.exoplayer2.device.b.$default$onDeviceInfoChanged(this, deviceInfo);
        }

        @Override // com.google.android.exoplayer2.device.DeviceListener
        public /* synthetic */ void onDeviceVolumeChanged(int i, boolean z) {
            com.google.android.exoplayer2.device.b.$default$onDeviceVolumeChanged(this, i, z);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onEvents(Player player, Player.Events events) {
            r.e(player, "player");
            r.e(events, "events");
            v0.$default$onEvents(this, player, events);
            if (events.containsAny(5)) {
                int playbackState = player.getPlaybackState();
                if (playbackState == 3) {
                    VideoPlayer.this.k();
                } else {
                    if (playbackState != 4) {
                        return;
                    }
                    VideoPlayer.this.i();
                }
            }
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onIsLoadingChanged(boolean z) {
            v0.$default$onIsLoadingChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onIsPlayingChanged(boolean z) {
            v0.$default$onIsPlayingChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onLoadingChanged(boolean z) {
            v0.$default$onLoadingChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i) {
            v0.$default$onMediaItemTransition(this, mediaItem, i);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
            v0.$default$onMediaMetadataChanged(this, mediaMetadata);
        }

        @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.metadata.MetadataOutput
        public /* synthetic */ void onMetadata(com.google.android.exoplayer2.metadata.Metadata metadata) {
            w0.$default$onMetadata(this, metadata);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlayWhenReadyChanged(boolean z, int i) {
            v0.$default$onPlayWhenReadyChanged(this, z, i);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
            v0.$default$onPlaybackParametersChanged(this, playbackParameters);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlaybackStateChanged(int i) {
            v0.$default$onPlaybackStateChanged(this, i);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
            v0.$default$onPlaybackSuppressionReasonChanged(this, i);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onPlayerError(ExoPlaybackException error) {
            r.e(error, "error");
            v0.$default$onPlayerError(this, error);
            VideoPlayer.this.j(error);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlayerStateChanged(boolean z, int i) {
            v0.$default$onPlayerStateChanged(this, z, i);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPositionDiscontinuity(int i) {
            v0.$default$onPositionDiscontinuity(this, i);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
            v0.$default$onPositionDiscontinuity(this, positionInfo, positionInfo2, i);
        }

        @Override // com.google.android.exoplayer2.video.VideoListener
        public /* synthetic */ void onRenderedFirstFrame() {
            l.$default$onRenderedFirstFrame(this);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onRepeatModeChanged(int i) {
            v0.$default$onRepeatModeChanged(this, i);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onSeekProcessed() {
            v0.$default$onSeekProcessed(this);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
            v0.$default$onShuffleModeEnabledChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.audio.AudioListener
        public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z) {
            m.$default$onSkipSilenceEnabledChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onStaticMetadataChanged(List list) {
            v0.$default$onStaticMetadataChanged(this, list);
        }

        @Override // com.google.android.exoplayer2.video.VideoListener
        public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
            l.$default$onSurfaceSizeChanged(this, i, i2);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onTimelineChanged(Timeline timeline, int i) {
            v0.$default$onTimelineChanged(this, timeline, i);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onTimelineChanged(Timeline timeline, Object obj, int i) {
            v0.$default$onTimelineChanged(this, timeline, obj, i);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
            v0.$default$onTracksChanged(this, trackGroupArray, trackSelectionArray);
        }

        @Override // com.google.android.exoplayer2.video.VideoListener
        public /* synthetic */ void onVideoSizeChanged(int i, int i2, int i3, float f2) {
            l.$default$onVideoSizeChanged(this, i, i2, i3, f2);
        }

        @Override // com.google.android.exoplayer2.video.VideoListener
        public /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
            l.$default$onVideoSizeChanged(this, videoSize);
        }

        @Override // com.google.android.exoplayer2.audio.AudioListener
        public /* synthetic */ void onVolumeChanged(float f2) {
            m.$default$onVolumeChanged(this, f2);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.video.f$b */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayer$Companion;", "", "()V", "TAG", "", "cache", "Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;", "getCache", "()Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;", "leastRecentlyUsedCacheEvictor", "Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;", "videoCacheFile", "Ljava/io/File;", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final File b(Context context) {
            if (!Environment.isExternalStorageEmulated()) {
                return new File(context.getCacheDir().getAbsoluteFile(), "exovideocache");
            }
            File externalCacheDir = context.getExternalCacheDir();
            return new File(externalCacheDir == null ? null : externalCacheDir.getAbsoluteFile(), "exovideocache");
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.video.f$c */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0007\u001a\u00020\u0003H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayer$OnVideoListener;", "", "onComplete", "", "onError", "onPause", "onPlaying", "onPrepared", "onSeek", "position", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface c {
        void a(long j);

        void b();

        void onComplete();

        void onError();

        void onPause();

        void onPrepared();
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.video.f$d */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\b\u001a\u00020\tH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayer$task$1", "Ljava/lang/Runnable;", "idleTime", "", "getIdleTime", "()J", "setIdleTime", "(J)V", "run", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f8739a;

        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VideoPlayer.this.b.isPlaying()) {
                this.f8739a = 0L;
                ArrayList arrayList = VideoPlayer.this.c;
                VideoPlayer videoPlayer = VideoPlayer.this;
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((c) it.next()).a(videoPlayer.b.getCurrentPosition());
                }
            } else {
                if (this.f8739a < SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
                    ArrayList arrayList2 = VideoPlayer.this.c;
                    VideoPlayer videoPlayer2 = VideoPlayer.this;
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        ((c) it2.next()).a(videoPlayer2.b.getCurrentPosition());
                    }
                }
                this.f8739a += (long) 500;
            }
            u.d(this, 500L);
        }
    }

    static {
        b bVar = new b(null);
        f8732f = bVar;
        LeastRecentlyUsedCacheEvictor leastRecentlyUsedCacheEvictor = new LeastRecentlyUsedCacheEvictor(209715200L);
        f8733g = leastRecentlyUsedCacheEvictor;
        Application context = MucangConfig.getContext();
        r.d(context, "getContext()");
        f8734h = new SimpleCache(bVar.b(context), leastRecentlyUsedCacheEvictor);
    }

    public VideoPlayer(PlayerView videoView) {
        r.e(videoView, "videoView");
        this.f8735a = videoView;
        this.c = new ArrayList<>();
        DefaultHttpDataSource.Factory allowCrossProtocolRedirects = new DefaultHttpDataSource.Factory().setAllowCrossProtocolRedirects(true);
        r.d(allowCrossProtocolRedirects, "Factory().setAllowCrossProtocolRedirects(true)");
        CacheDataSource.Factory flags = new CacheDataSource.Factory().setCache(f8734h).setUpstreamDataSourceFactory(new DefaultDataSourceFactory(videoView.getContext(), allowCrossProtocolRedirects)).setFlags(2);
        r.d(flags, "Factory().setCache(cache…AG_IGNORE_CACHE_ON_ERROR)");
        SimpleExoPlayer simpleExoPlayerBuild = new SimpleExoPlayer.Builder(videoView.getContext()).setMediaSourceFactory(new ProgressiveMediaSource.Factory(flags)).build();
        r.d(simpleExoPlayerBuild, "Builder(videoView.contex…taSourceFactory)).build()");
        this.b = simpleExoPlayerBuild;
        videoView.setPlayer(simpleExoPlayerBuild);
        this.b.addListener((Player.Listener) new a());
        this.f8737e = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i() {
        t.h("VideoPlayer", r.m("播放结束", this.f8736d));
        Iterator<T> it = this.c.iterator();
        while (it.hasNext()) {
            ((c) it.next()).onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(ExoPlaybackException exoPlaybackException) {
        t.h("VideoPlayer", r.m("播放错误", exoPlaybackException.getMessage()));
        Iterator<T> it = this.c.iterator();
        while (it.hasNext()) {
            ((c) it.next()).onError();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k() {
        t.h("VideoPlayer", r.m("准备完成", this.f8736d));
        Iterator<T> it = this.c.iterator();
        while (it.hasNext()) {
            ((c) it.next()).onPrepared();
        }
    }

    public final void f(c onVideoListener) {
        r.e(onVideoListener, "onVideoListener");
        this.c.add(onVideoListener);
    }

    public final long g() {
        return this.b.getDuration();
    }

    public final boolean h() {
        return this.b.isPlaying();
    }

    public final void l() {
        if (this.b.isPlaying()) {
            this.b.pause();
            Iterator<T> it = this.c.iterator();
            while (it.hasNext()) {
                ((c) it.next()).onPause();
            }
        }
    }

    public final void m(String path) {
        r.e(path, "path");
        t.h("VideoPlayer", r.m("开始播放", path));
        this.f8736d = path;
        MediaItem mediaItemFromUri = MediaItem.fromUri(path);
        r.d(mediaItemFromUri, "fromUri(path)");
        this.b.setMediaItem(mediaItemFromUri);
        this.b.prepare();
        o();
    }

    public final void n() {
        this.f8735a.setVisibility(8);
        this.b.release();
        u.e(this.f8737e);
    }

    public final void o() {
        u.e(this.f8737e);
        u.c(this.f8737e);
        if (this.b.getPlaybackState() == 4) {
            SimpleExoPlayer simpleExoPlayer = this.b;
            simpleExoPlayer.seekTo(simpleExoPlayer.getCurrentWindowIndex(), C.TIME_UNSET);
        } else {
            this.b.play();
        }
        Iterator<T> it = this.c.iterator();
        while (it.hasNext()) {
            ((c) it.next()).b();
        }
    }

    public final void p(int i) {
        long j = i;
        this.b.seekTo(j);
        Iterator<T> it = this.c.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(j);
        }
    }
}
