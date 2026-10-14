package com.google.android.exoplayer2.ui;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.session.MediaSessionCompat;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ControlDispatcher;
import com.google.android.exoplayer2.DefaultControlDispatcher;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.PlaybackPreparer;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.NotificationUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.v0;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PlayerNotificationManager {
    private static final String ACTION_DISMISS = "com.google.android.exoplayer.dismiss";
    public static final String ACTION_FAST_FORWARD = "com.google.android.exoplayer.ffwd";
    public static final String ACTION_NEXT = "com.google.android.exoplayer.next";
    public static final String ACTION_PAUSE = "com.google.android.exoplayer.pause";
    public static final String ACTION_PLAY = "com.google.android.exoplayer.play";
    public static final String ACTION_PREVIOUS = "com.google.android.exoplayer.prev";
    public static final String ACTION_REWIND = "com.google.android.exoplayer.rewind";
    public static final String ACTION_STOP = "com.google.android.exoplayer.stop";
    public static final String EXTRA_INSTANCE_ID = "INSTANCE_ID";
    private static final int MSG_START_OR_UPDATE_NOTIFICATION = 0;
    private static final int MSG_UPDATE_NOTIFICATION_BITMAP = 1;
    private static int instanceIdCounter;
    private int badgeIconType;
    private androidx.core.app.i.f builder;
    private List<androidx.core.app.i.b> builderActions;
    private final String channelId;
    private int color;
    private boolean colorized;
    private final Context context;
    private ControlDispatcher controlDispatcher;
    private int currentNotificationTag;
    private final CustomActionReceiver customActionReceiver;
    private final Map<String, androidx.core.app.i.b> customActions;
    private int defaults;
    private final PendingIntent dismissPendingIntent;
    private String groupKey;
    private final int instanceId;
    private final IntentFilter intentFilter;
    private boolean isNotificationStarted;
    private final Handler mainHandler;
    private final MediaDescriptionAdapter mediaDescriptionAdapter;
    private MediaSessionCompat.Token mediaSessionToken;
    private final NotificationBroadcastReceiver notificationBroadcastReceiver;
    private final int notificationId;
    private final NotificationListener notificationListener;
    private final androidx.core.app.l notificationManager;
    private final Map<String, androidx.core.app.i.b> playbackActions;
    private PlaybackPreparer playbackPreparer;
    private Player player;
    private final Player.EventListener playerListener;
    private int priority;
    private int smallIconResourceId;
    private boolean useChronometer;
    private boolean useNextAction;
    private boolean useNextActionInCompactView;
    private boolean usePlayPauseActions;
    private boolean usePreviousAction;
    private boolean usePreviousActionInCompactView;
    private boolean useStopAction;
    private int visibility;
    private final Timeline.Window window;

    public final class BitmapCallback {
        private final int notificationTag;

        public void onBitmap(Bitmap bitmap) {
            if (bitmap != null) {
                PlayerNotificationManager.this.postUpdateNotificationBitmap(bitmap, this.notificationTag);
            }
        }

        private BitmapCallback(int i) {
            this.notificationTag = i;
        }
    }

    public static class Builder {
        private int channelDescriptionResourceId;
        private final String channelId;
        private int channelImportance;
        private int channelNameResourceId;
        private final Context context;
        private CustomActionReceiver customActionReceiver;
        private int fastForwardActionIconResourceId;
        private String groupKey;
        private final MediaDescriptionAdapter mediaDescriptionAdapter;
        private int nextActionIconResourceId;
        private final int notificationId;
        private NotificationListener notificationListener;
        private int pauseActionIconResourceId;
        private int playActionIconResourceId;
        private int previousActionIconResourceId;
        private int rewindActionIconResourceId;
        private int smallIconResourceId;
        private int stopActionIconResourceId;

        public Builder(Context context, int i, String str, MediaDescriptionAdapter mediaDescriptionAdapter) {
            Assertions.checkArgument(i > 0);
            this.context = context;
            this.notificationId = i;
            this.channelId = str;
            this.mediaDescriptionAdapter = mediaDescriptionAdapter;
            this.channelImportance = 2;
            this.smallIconResourceId = R.drawable.exo_notification_small_icon;
            this.playActionIconResourceId = R.drawable.exo_notification_play;
            this.pauseActionIconResourceId = R.drawable.exo_notification_pause;
            this.stopActionIconResourceId = R.drawable.exo_notification_stop;
            this.rewindActionIconResourceId = R.drawable.exo_notification_rewind;
            this.fastForwardActionIconResourceId = R.drawable.exo_notification_fastforward;
            this.previousActionIconResourceId = R.drawable.exo_notification_previous;
            this.nextActionIconResourceId = R.drawable.exo_notification_next;
        }

        public PlayerNotificationManager build() {
            int i = this.channelNameResourceId;
            if (i != 0) {
                NotificationUtil.createNotificationChannel(this.context, this.channelId, i, this.channelDescriptionResourceId, this.channelImportance);
            }
            return new PlayerNotificationManager(this.context, this.channelId, this.notificationId, this.mediaDescriptionAdapter, this.notificationListener, this.customActionReceiver, this.smallIconResourceId, this.playActionIconResourceId, this.pauseActionIconResourceId, this.stopActionIconResourceId, this.rewindActionIconResourceId, this.fastForwardActionIconResourceId, this.previousActionIconResourceId, this.nextActionIconResourceId, this.groupKey);
        }

        public Builder setChannelDescriptionResourceId(int i) {
            this.channelDescriptionResourceId = i;
            return this;
        }

        public Builder setChannelImportance(int i) {
            this.channelImportance = i;
            return this;
        }

        public Builder setChannelNameResourceId(int i) {
            this.channelNameResourceId = i;
            return this;
        }

        public Builder setCustomActionReceiver(CustomActionReceiver customActionReceiver) {
            this.customActionReceiver = customActionReceiver;
            return this;
        }

        public Builder setFastForwardActionIconResourceId(int i) {
            this.fastForwardActionIconResourceId = i;
            return this;
        }

        public Builder setGroup(String str) {
            this.groupKey = str;
            return this;
        }

        public Builder setNextActionIconResourceId(int i) {
            this.nextActionIconResourceId = i;
            return this;
        }

        public Builder setNotificationListener(NotificationListener notificationListener) {
            this.notificationListener = notificationListener;
            return this;
        }

        public Builder setPauseActionIconResourceId(int i) {
            this.pauseActionIconResourceId = i;
            return this;
        }

        public Builder setPlayActionIconResourceId(int i) {
            this.playActionIconResourceId = i;
            return this;
        }

        public Builder setPreviousActionIconResourceId(int i) {
            this.previousActionIconResourceId = i;
            return this;
        }

        public Builder setRewindActionIconResourceId(int i) {
            this.rewindActionIconResourceId = i;
            return this;
        }

        public Builder setSmallIconResourceId(int i) {
            this.smallIconResourceId = i;
            return this;
        }

        public Builder setStopActionIconResourceId(int i) {
            this.stopActionIconResourceId = i;
            return this;
        }
    }

    public interface CustomActionReceiver {
        Map<String, androidx.core.app.i.b> createCustomActions(Context context, int i);

        List<String> getCustomActions(Player player);

        void onCustomAction(Player player, String str, Intent intent);
    }

    public interface MediaDescriptionAdapter {
        PendingIntent createCurrentContentIntent(Player player);

        CharSequence getCurrentContentText(Player player);

        CharSequence getCurrentContentTitle(Player player);

        Bitmap getCurrentLargeIcon(Player player, BitmapCallback bitmapCallback);

        CharSequence getCurrentSubText(Player player);
    }

    private class NotificationBroadcastReceiver extends BroadcastReceiver {
        private NotificationBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Player player = PlayerNotificationManager.this.player;
            if (player != null && PlayerNotificationManager.this.isNotificationStarted && intent.getIntExtra(PlayerNotificationManager.EXTRA_INSTANCE_ID, PlayerNotificationManager.this.instanceId) == PlayerNotificationManager.this.instanceId) {
                String action = intent.getAction();
                if (PlayerNotificationManager.ACTION_PLAY.equals(action)) {
                    if (player.getPlaybackState() == 1) {
                        if (PlayerNotificationManager.this.playbackPreparer != null) {
                            PlayerNotificationManager.this.playbackPreparer.preparePlayback();
                        } else {
                            PlayerNotificationManager.this.controlDispatcher.dispatchPrepare(player);
                        }
                    } else if (player.getPlaybackState() == 4) {
                        PlayerNotificationManager.this.controlDispatcher.dispatchSeekTo(player, player.getCurrentWindowIndex(), C.TIME_UNSET);
                    }
                    PlayerNotificationManager.this.controlDispatcher.dispatchSetPlayWhenReady(player, true);
                    return;
                }
                if (PlayerNotificationManager.ACTION_PAUSE.equals(action)) {
                    PlayerNotificationManager.this.controlDispatcher.dispatchSetPlayWhenReady(player, false);
                    return;
                }
                if (PlayerNotificationManager.ACTION_PREVIOUS.equals(action)) {
                    PlayerNotificationManager.this.controlDispatcher.dispatchPrevious(player);
                    return;
                }
                if (PlayerNotificationManager.ACTION_REWIND.equals(action)) {
                    PlayerNotificationManager.this.controlDispatcher.dispatchRewind(player);
                    return;
                }
                if (PlayerNotificationManager.ACTION_FAST_FORWARD.equals(action)) {
                    PlayerNotificationManager.this.controlDispatcher.dispatchFastForward(player);
                    return;
                }
                if (PlayerNotificationManager.ACTION_NEXT.equals(action)) {
                    PlayerNotificationManager.this.controlDispatcher.dispatchNext(player);
                    return;
                }
                if (PlayerNotificationManager.ACTION_STOP.equals(action)) {
                    PlayerNotificationManager.this.controlDispatcher.dispatchStop(player, true);
                    return;
                }
                if (PlayerNotificationManager.ACTION_DISMISS.equals(action)) {
                    PlayerNotificationManager.this.stopNotification(true);
                } else {
                    if (action == null || PlayerNotificationManager.this.customActionReceiver == null || !PlayerNotificationManager.this.customActions.containsKey(action)) {
                        return;
                    }
                    PlayerNotificationManager.this.customActionReceiver.onCustomAction(player, action, intent);
                }
            }
        }
    }

    public interface NotificationListener {
        void onNotificationCancelled(int i, boolean z);

        void onNotificationPosted(int i, Notification notification, boolean z);
    }

    private class PlayerListener implements Player.EventListener {
        private PlayerListener() {
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
            v0.$default$onAvailableCommandsChanged(this, commands);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onEvents(Player player, Player.Events events) {
            if (events.containsAny(5, 6, 8, 0, 13, 12, 9, 10)) {
                PlayerNotificationManager.this.postStartOrUpdateNotification();
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
        public /* synthetic */ void onPlayerError(ExoPlaybackException exoPlaybackException) {
            v0.$default$onPlayerError(this, exoPlaybackException);
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

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onStaticMetadataChanged(List list) {
            v0.$default$onStaticMetadataChanged(this, list);
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
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Priority {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Visibility {
    }

    private static PendingIntent createBroadcastIntent(String str, Context context, int i) {
        Intent intent = new Intent(str).setPackage(context.getPackageName());
        intent.putExtra(EXTRA_INSTANCE_ID, i);
        return PendingIntent.getBroadcast(context, i, intent, 134217728);
    }

    private static Map<String, androidx.core.app.i.b> createPlaybackActions(Context context, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        HashMap map = new HashMap();
        map.put(ACTION_PLAY, new androidx.core.app.i.b(i2, context.getString(R.string.exo_controls_play_description), createBroadcastIntent(ACTION_PLAY, context, i)));
        map.put(ACTION_PAUSE, new androidx.core.app.i.b(i3, context.getString(R.string.exo_controls_pause_description), createBroadcastIntent(ACTION_PAUSE, context, i)));
        map.put(ACTION_STOP, new androidx.core.app.i.b(i4, context.getString(R.string.exo_controls_stop_description), createBroadcastIntent(ACTION_STOP, context, i)));
        map.put(ACTION_REWIND, new androidx.core.app.i.b(i5, context.getString(R.string.exo_controls_rewind_description), createBroadcastIntent(ACTION_REWIND, context, i)));
        map.put(ACTION_FAST_FORWARD, new androidx.core.app.i.b(i6, context.getString(R.string.exo_controls_fastforward_description), createBroadcastIntent(ACTION_FAST_FORWARD, context, i)));
        map.put(ACTION_PREVIOUS, new androidx.core.app.i.b(i7, context.getString(R.string.exo_controls_previous_description), createBroadcastIntent(ACTION_PREVIOUS, context, i)));
        map.put(ACTION_NEXT, new androidx.core.app.i.b(i8, context.getString(R.string.exo_controls_next_description), createBroadcastIntent(ACTION_NEXT, context, i)));
        return map;
    }

    @Deprecated
    public static PlayerNotificationManager createWithNotificationChannel(Context context, String str, int i, int i2, MediaDescriptionAdapter mediaDescriptionAdapter) {
        return createWithNotificationChannel(context, str, i, 0, i2, mediaDescriptionAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            Player player = this.player;
            if (player != null) {
                startOrUpdateNotification(player, null);
            }
        } else {
            if (i != 1) {
                return false;
            }
            Player player2 = this.player;
            if (player2 != null && this.isNotificationStarted && this.currentNotificationTag == message.arg1) {
                startOrUpdateNotification(player2, (Bitmap) message.obj);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postStartOrUpdateNotification() {
        if (this.mainHandler.hasMessages(0)) {
            return;
        }
        this.mainHandler.sendEmptyMessage(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postUpdateNotificationBitmap(Bitmap bitmap, int i) {
        this.mainHandler.obtainMessage(1, i, -1, bitmap).sendToTarget();
    }

    private static void setLargeIcon(androidx.core.app.i.f fVar, Bitmap bitmap) {
        fVar.setLargeIcon(bitmap);
    }

    private boolean shouldShowPauseButton(Player player) {
        return (player.getPlaybackState() == 4 || player.getPlaybackState() == 1 || !player.getPlayWhenReady()) ? false : true;
    }

    private void startOrUpdateNotification(Player player, Bitmap bitmap) {
        boolean ongoing = getOngoing(player);
        androidx.core.app.i.f fVarCreateNotification = createNotification(player, this.builder, ongoing, bitmap);
        this.builder = fVarCreateNotification;
        if (fVarCreateNotification == null) {
            stopNotification(false);
            return;
        }
        Notification notificationBuild = fVarCreateNotification.build();
        this.notificationManager.f(this.notificationId, notificationBuild);
        if (!this.isNotificationStarted) {
            this.context.registerReceiver(this.notificationBroadcastReceiver, this.intentFilter);
        }
        NotificationListener notificationListener = this.notificationListener;
        if (notificationListener != null) {
            notificationListener.onNotificationPosted(this.notificationId, notificationBuild, ongoing || !this.isNotificationStarted);
        }
        this.isNotificationStarted = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopNotification(boolean z) {
        if (this.isNotificationStarted) {
            this.isNotificationStarted = false;
            this.mainHandler.removeMessages(0);
            this.notificationManager.b(this.notificationId);
            this.context.unregisterReceiver(this.notificationBroadcastReceiver);
            NotificationListener notificationListener = this.notificationListener;
            if (notificationListener != null) {
                notificationListener.onNotificationCancelled(this.notificationId, z);
            }
        }
    }

    protected androidx.core.app.i.f createNotification(Player player, androidx.core.app.i.f fVar, boolean z, Bitmap bitmap) {
        if (player.getPlaybackState() == 1 && player.getCurrentTimeline().isEmpty()) {
            this.builderActions = null;
            return null;
        }
        List<String> actions = getActions(player);
        ArrayList arrayList = new ArrayList(actions.size());
        for (int i = 0; i < actions.size(); i++) {
            String str = actions.get(i);
            androidx.core.app.i.b bVar = this.playbackActions.containsKey(str) ? this.playbackActions.get(str) : this.customActions.get(str);
            if (bVar != null) {
                arrayList.add(bVar);
            }
        }
        if (fVar == null || !arrayList.equals(this.builderActions)) {
            fVar = new androidx.core.app.i.f(this.context, this.channelId);
            this.builderActions = arrayList;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                fVar.addAction((androidx.core.app.i.b) arrayList.get(i2));
            }
        }
        androidx.media.g.a aVar = new androidx.media.g.a();
        MediaSessionCompat.Token token = this.mediaSessionToken;
        if (token != null) {
            aVar.G(token);
        }
        aVar.H(getActionIndicesForCompactView(actions, player));
        aVar.I(!z);
        aVar.F(this.dismissPendingIntent);
        fVar.setStyle(aVar);
        fVar.setDeleteIntent(this.dismissPendingIntent);
        fVar.setBadgeIconType(this.badgeIconType).setOngoing(z).setColor(this.color).setColorized(this.colorized).setSmallIcon(this.smallIconResourceId).setVisibility(this.visibility).setPriority(this.priority).setDefaults(this.defaults);
        if (Util.SDK_INT < 21 || !this.useChronometer || !player.isPlaying() || player.isPlayingAd() || player.isCurrentWindowDynamic() || player.getPlaybackParameters().speed != 1.0f) {
            fVar.setShowWhen(false).setUsesChronometer(false);
        } else {
            fVar.setWhen(System.currentTimeMillis() - player.getContentPosition()).setShowWhen(true).setUsesChronometer(true);
        }
        fVar.setContentTitle(this.mediaDescriptionAdapter.getCurrentContentTitle(player));
        fVar.setContentText(this.mediaDescriptionAdapter.getCurrentContentText(player));
        fVar.setSubText(this.mediaDescriptionAdapter.getCurrentSubText(player));
        if (bitmap == null) {
            MediaDescriptionAdapter mediaDescriptionAdapter = this.mediaDescriptionAdapter;
            int i3 = this.currentNotificationTag + 1;
            this.currentNotificationTag = i3;
            bitmap = mediaDescriptionAdapter.getCurrentLargeIcon(player, new BitmapCallback(i3));
        }
        setLargeIcon(fVar, bitmap);
        fVar.setContentIntent(this.mediaDescriptionAdapter.createCurrentContentIntent(player));
        String str2 = this.groupKey;
        if (str2 != null) {
            fVar.setGroup(str2);
        }
        return fVar;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0047  */
    protected int[] getActionIndicesForCompactView(List<String> list, Player player) {
        int i;
        int iIndexOf = list.indexOf(ACTION_PAUSE);
        int iIndexOf2 = list.indexOf(ACTION_PLAY);
        int iIndexOf3 = this.usePreviousActionInCompactView ? list.indexOf(ACTION_PREVIOUS) : -1;
        int iIndexOf4 = this.useNextActionInCompactView ? list.indexOf(ACTION_NEXT) : -1;
        int[] iArr = new int[3];
        int i2 = 0;
        if (iIndexOf3 != -1) {
            iArr[0] = iIndexOf3;
            i2 = 1;
        }
        boolean zShouldShowPauseButton = shouldShowPauseButton(player);
        if (iIndexOf == -1 || !zShouldShowPauseButton) {
            if (iIndexOf2 != -1 && !zShouldShowPauseButton) {
                i = i2 + 1;
                iArr[i2] = iIndexOf2;
            }
            if (iIndexOf4 != -1) {
                iArr[i2] = iIndexOf4;
                i2++;
            }
            return Arrays.copyOf(iArr, i2);
        }
        i = i2 + 1;
        iArr[i2] = iIndexOf;
        i2 = i;
        if (iIndexOf4 != -1) {
            iArr[i2] = iIndexOf4;
            i2++;
        }
        return Arrays.copyOf(iArr, i2);
    }

    protected List<String> getActions(Player player) {
        boolean z;
        boolean z2;
        boolean z3;
        Timeline currentTimeline = player.getCurrentTimeline();
        boolean z4 = false;
        if (currentTimeline.isEmpty() || player.isPlayingAd()) {
            z = false;
            z2 = false;
            z3 = false;
        } else {
            boolean zIsCommandAvailable = player.isCommandAvailable(4);
            currentTimeline.getWindow(player.getCurrentWindowIndex(), this.window);
            boolean z5 = zIsCommandAvailable || !this.window.isLive() || player.isCommandAvailable(6);
            z3 = zIsCommandAvailable && this.controlDispatcher.isRewindEnabled();
            z2 = zIsCommandAvailable && this.controlDispatcher.isFastForwardEnabled();
            z = (this.window.isLive() && this.window.isDynamic) || player.isCommandAvailable(5);
            z4 = z5;
        }
        ArrayList arrayList = new ArrayList();
        if (this.usePreviousAction && z4) {
            arrayList.add(ACTION_PREVIOUS);
        }
        if (z3) {
            arrayList.add(ACTION_REWIND);
        }
        if (this.usePlayPauseActions) {
            if (shouldShowPauseButton(player)) {
                arrayList.add(ACTION_PAUSE);
            } else {
                arrayList.add(ACTION_PLAY);
            }
        }
        if (z2) {
            arrayList.add(ACTION_FAST_FORWARD);
        }
        if (this.useNextAction && z) {
            arrayList.add(ACTION_NEXT);
        }
        CustomActionReceiver customActionReceiver = this.customActionReceiver;
        if (customActionReceiver != null) {
            arrayList.addAll(customActionReceiver.getCustomActions(player));
        }
        if (this.useStopAction) {
            arrayList.add(ACTION_STOP);
        }
        return arrayList;
    }

    protected boolean getOngoing(Player player) {
        int playbackState = player.getPlaybackState();
        return (playbackState == 2 || playbackState == 3) && player.getPlayWhenReady();
    }

    public void invalidate() {
        if (this.isNotificationStarted) {
            postStartOrUpdateNotification();
        }
    }

    public final void setBadgeIconType(int i) {
        if (this.badgeIconType == i) {
            return;
        }
        if (i != 0 && i != 1 && i != 2) {
            throw new IllegalArgumentException();
        }
        this.badgeIconType = i;
        invalidate();
    }

    public final void setColor(int i) {
        if (this.color != i) {
            this.color = i;
            invalidate();
        }
    }

    public final void setColorized(boolean z) {
        if (this.colorized != z) {
            this.colorized = z;
            invalidate();
        }
    }

    public final void setControlDispatcher(ControlDispatcher controlDispatcher) {
        if (this.controlDispatcher != controlDispatcher) {
            this.controlDispatcher = controlDispatcher;
            invalidate();
        }
    }

    public final void setDefaults(int i) {
        if (this.defaults != i) {
            this.defaults = i;
            invalidate();
        }
    }

    @Deprecated
    public final void setFastForwardIncrementMs(long j) {
        ControlDispatcher controlDispatcher = this.controlDispatcher;
        if (controlDispatcher instanceof DefaultControlDispatcher) {
            ((DefaultControlDispatcher) controlDispatcher).setFastForwardIncrementMs(j);
            invalidate();
        }
    }

    public final void setMediaSessionToken(MediaSessionCompat.Token token) {
        if (Util.areEqual(this.mediaSessionToken, token)) {
            return;
        }
        this.mediaSessionToken = token;
        invalidate();
    }

    @Deprecated
    public void setPlaybackPreparer(PlaybackPreparer playbackPreparer) {
        this.playbackPreparer = playbackPreparer;
    }

    public final void setPlayer(Player player) {
        boolean z = true;
        Assertions.checkState(Looper.myLooper() == Looper.getMainLooper());
        if (player != null && player.getApplicationLooper() != Looper.getMainLooper()) {
            z = false;
        }
        Assertions.checkArgument(z);
        Player player2 = this.player;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.removeListener(this.playerListener);
            if (player == null) {
                stopNotification(false);
            }
        }
        this.player = player;
        if (player != null) {
            player.addListener(this.playerListener);
            postStartOrUpdateNotification();
        }
    }

    public final void setPriority(int i) {
        if (this.priority == i) {
            return;
        }
        if (i != -2 && i != -1 && i != 0 && i != 1 && i != 2) {
            throw new IllegalArgumentException();
        }
        this.priority = i;
        invalidate();
    }

    @Deprecated
    public final void setRewindIncrementMs(long j) {
        ControlDispatcher controlDispatcher = this.controlDispatcher;
        if (controlDispatcher instanceof DefaultControlDispatcher) {
            ((DefaultControlDispatcher) controlDispatcher).setRewindIncrementMs(j);
            invalidate();
        }
    }

    public final void setSmallIcon(int i) {
        if (this.smallIconResourceId != i) {
            this.smallIconResourceId = i;
            invalidate();
        }
    }

    public final void setUseChronometer(boolean z) {
        if (this.useChronometer != z) {
            this.useChronometer = z;
            invalidate();
        }
    }

    @Deprecated
    public final void setUseNavigationActions(boolean z) {
        setUseNextAction(z);
        setUsePreviousAction(z);
    }

    @Deprecated
    public final void setUseNavigationActionsInCompactView(boolean z) {
        setUseNextActionInCompactView(z);
        setUsePreviousActionInCompactView(z);
    }

    public void setUseNextAction(boolean z) {
        if (this.useNextAction != z) {
            this.useNextAction = z;
            invalidate();
        }
    }

    public void setUseNextActionInCompactView(boolean z) {
        if (this.useNextActionInCompactView != z) {
            this.useNextActionInCompactView = z;
            invalidate();
        }
    }

    public final void setUsePlayPauseActions(boolean z) {
        if (this.usePlayPauseActions != z) {
            this.usePlayPauseActions = z;
            invalidate();
        }
    }

    public void setUsePreviousAction(boolean z) {
        if (this.usePreviousAction != z) {
            this.usePreviousAction = z;
            invalidate();
        }
    }

    public void setUsePreviousActionInCompactView(boolean z) {
        if (this.usePreviousActionInCompactView != z) {
            this.usePreviousActionInCompactView = z;
            invalidate();
        }
    }

    public final void setUseStopAction(boolean z) {
        if (this.useStopAction == z) {
            return;
        }
        this.useStopAction = z;
        invalidate();
    }

    public final void setVisibility(int i) {
        if (this.visibility == i) {
            return;
        }
        if (i != -1 && i != 0 && i != 1) {
            throw new IllegalStateException();
        }
        this.visibility = i;
        invalidate();
    }

    @Deprecated
    public PlayerNotificationManager(Context context, String str, int i, MediaDescriptionAdapter mediaDescriptionAdapter) {
        this(context, str, i, mediaDescriptionAdapter, null, null);
    }

    @Deprecated
    public static PlayerNotificationManager createWithNotificationChannel(Context context, String str, int i, int i2, int i3, MediaDescriptionAdapter mediaDescriptionAdapter) {
        NotificationUtil.createNotificationChannel(context, str, i, i2, 2);
        return new PlayerNotificationManager(context, str, i3, mediaDescriptionAdapter);
    }

    @Deprecated
    public PlayerNotificationManager(Context context, String str, int i, MediaDescriptionAdapter mediaDescriptionAdapter, NotificationListener notificationListener) {
        this(context, str, i, mediaDescriptionAdapter, notificationListener, null);
    }

    @Deprecated
    public PlayerNotificationManager(Context context, String str, int i, MediaDescriptionAdapter mediaDescriptionAdapter, CustomActionReceiver customActionReceiver) {
        this(context, str, i, mediaDescriptionAdapter, null, customActionReceiver);
    }

    @Deprecated
    public static PlayerNotificationManager createWithNotificationChannel(Context context, String str, int i, int i2, MediaDescriptionAdapter mediaDescriptionAdapter, NotificationListener notificationListener) {
        return createWithNotificationChannel(context, str, i, 0, i2, mediaDescriptionAdapter, notificationListener);
    }

    @Deprecated
    public PlayerNotificationManager(Context context, String str, int i, MediaDescriptionAdapter mediaDescriptionAdapter, NotificationListener notificationListener, CustomActionReceiver customActionReceiver) {
        this(context, str, i, mediaDescriptionAdapter, notificationListener, customActionReceiver, R.drawable.exo_notification_small_icon, R.drawable.exo_notification_play, R.drawable.exo_notification_pause, R.drawable.exo_notification_stop, R.drawable.exo_notification_rewind, R.drawable.exo_notification_fastforward, R.drawable.exo_notification_previous, R.drawable.exo_notification_next, null);
    }

    @Deprecated
    public static PlayerNotificationManager createWithNotificationChannel(Context context, String str, int i, int i2, int i3, MediaDescriptionAdapter mediaDescriptionAdapter, NotificationListener notificationListener) {
        NotificationUtil.createNotificationChannel(context, str, i, i2, 2);
        return new PlayerNotificationManager(context, str, i3, mediaDescriptionAdapter, notificationListener);
    }

    private PlayerNotificationManager(Context context, String str, int i, MediaDescriptionAdapter mediaDescriptionAdapter, NotificationListener notificationListener, CustomActionReceiver customActionReceiver, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str2) {
        Map<String, androidx.core.app.i.b> mapEmptyMap;
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.channelId = str;
        this.notificationId = i;
        this.mediaDescriptionAdapter = mediaDescriptionAdapter;
        this.notificationListener = notificationListener;
        this.customActionReceiver = customActionReceiver;
        this.smallIconResourceId = i2;
        this.groupKey = str2;
        this.controlDispatcher = new DefaultControlDispatcher();
        this.window = new Timeline.Window();
        int i10 = instanceIdCounter;
        instanceIdCounter = i10 + 1;
        this.instanceId = i10;
        this.mainHandler = Util.createHandler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.exoplayer2.ui.e
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f11972a.handleMessage(message);
            }
        });
        this.notificationManager = androidx.core.app.l.d(applicationContext);
        this.playerListener = new PlayerListener();
        this.notificationBroadcastReceiver = new NotificationBroadcastReceiver();
        this.intentFilter = new IntentFilter();
        this.usePreviousAction = true;
        this.useNextAction = true;
        this.usePlayPauseActions = true;
        this.colorized = true;
        this.useChronometer = true;
        this.color = 0;
        this.defaults = 0;
        this.priority = -1;
        this.badgeIconType = 1;
        this.visibility = 1;
        Map<String, androidx.core.app.i.b> mapCreatePlaybackActions = createPlaybackActions(applicationContext, i10, i3, i4, i5, i6, i7, i8, i9);
        this.playbackActions = mapCreatePlaybackActions;
        Iterator<String> it = mapCreatePlaybackActions.keySet().iterator();
        while (it.hasNext()) {
            this.intentFilter.addAction(it.next());
        }
        if (customActionReceiver != null) {
            mapEmptyMap = customActionReceiver.createCustomActions(applicationContext, this.instanceId);
        } else {
            mapEmptyMap = Collections.emptyMap();
        }
        this.customActions = mapEmptyMap;
        Iterator<String> it2 = mapEmptyMap.keySet().iterator();
        while (it2.hasNext()) {
            this.intentFilter.addAction(it2.next());
        }
        this.dismissPendingIntent = createBroadcastIntent(ACTION_DISMISS, applicationContext, this.instanceId);
        this.intentFilter.addAction(ACTION_DISMISS);
    }
}
