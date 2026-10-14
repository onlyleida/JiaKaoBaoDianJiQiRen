package com.alivc.live.pusher;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_INIT_SUCCESS' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes5.dex */
public final class LivePushNotification {
    private static final /* synthetic */ LivePushNotification[] $VALUES;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_BGM_COMPLETED;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_BGM_OPEN_SUCCESS;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_BGM_PAUSE_SUCCESS;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_BGM_PROGRESS;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_BGM_RESUME_SUCCESS;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_BGM_STOP_SUCCESS;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_CAPTURE_CLOSE_CAMERA_SUCCESS;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_CAPTURE_CLOSE_SCREENCAPTURE_SUCCESS;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_CAPTURE_OPEN_CAMERA_SUCCESS;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_CAPTURE_OPEN_MIC_SUCCESS;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_CAPTURE_OPEN_SCREENCAPTURE_SUCCESS;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_GENERAL_MONITOR;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_ADJUST_BITRATE;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_CAPTURE_VIDEO_SAMPLES_OVERFLOW;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_CHANGE_FPS;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_CHANGE_RESOLUTION;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_GL_CONTEXT_CREATED;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_GL_CONTEXT_DESTROYED;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_INIT_SUCCESS;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_OPEN_VIDEO_ENCODER_SUCCESS;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PREVIEW_STARTED;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PREVIEW_STOPED;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PUSH_PAUSED;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PUSH_RESTARTED;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PUSH_RESUMED;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_PUSH_CONNECTION_LOST;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_PUSH_CRASH;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_PUSH_DELAY_INFO;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_PUSH_DROP_FRAME;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_PUSH_NETWORK_POOR;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_PUSH_NETWORK_RECOVERY;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_PUSH_RECONNECT_START;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_PUSH_RECONNECT_SUCCESS;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_PUSH_SENDED_FIRST_AV;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_PUSH_SENDED_SEI;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_PUSH_STARTED;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_PUSH_STOPED;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_RTMP_CONNECTION_LOST;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_RTMP_DROP_FRAME;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_RTMP_NETWORK_POOR;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_RTMP_NETWORK_RECOVERY;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_RTMP_PUSH_STARTED;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_RTMP_PUSH_STOPED;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_RTMP_RECONNECT_START;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_RTMP_RECONNECT_SUCCESS;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_RTMP_SENDED_FIRST_AV;
    public static final LivePushNotification ALIVC_PUSHER_EVENT_RTMP_SENDED_SEI;
    private int mCode;
    private String mMsg;

    private static class NotificationCode {
        protected static int ALIVC_PUSHER_EVENT_BGM_START = -268238080;
        protected static int ALIVC_PUSHER_EVENT_CAPTURE_START = 268457216;
        protected static int ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START = -268238336;
        protected static int ALIVC_PUSHER_EVENT_PUSH_START = -268236544;
        protected static int ALIVC_PUSHER_EVENT_START = -268238848;

        private NotificationCode() {
        }
    }

    static {
        int i = NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START = i;
        LivePushNotification livePushNotification = new LivePushNotification("ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_INIT_SUCCESS", 0, i, "");
        ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_INIT_SUCCESS = livePushNotification;
        int i2 = NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START = i2;
        LivePushNotification livePushNotification2 = new LivePushNotification("ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PREVIEW_STARTED", 1, i2, "");
        ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PREVIEW_STARTED = livePushNotification2;
        int i3 = NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START = i3;
        LivePushNotification livePushNotification3 = new LivePushNotification("ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PREVIEW_STOPED", 2, i3, "");
        ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PREVIEW_STOPED = livePushNotification3;
        int i4 = NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START = i4;
        LivePushNotification livePushNotification4 = new LivePushNotification("ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PUSH_PAUSED", 3, i4, "");
        ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PUSH_PAUSED = livePushNotification4;
        int i5 = NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START = i5;
        LivePushNotification livePushNotification5 = new LivePushNotification("ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PUSH_RESUMED", 4, i5, "");
        ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PUSH_RESUMED = livePushNotification5;
        int i6 = NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START = i6;
        LivePushNotification livePushNotification6 = new LivePushNotification("ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PUSH_RESTARTED", 5, i6, "");
        ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PUSH_RESTARTED = livePushNotification6;
        int i7 = NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START = i7;
        LivePushNotification livePushNotification7 = new LivePushNotification("ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_OPEN_VIDEO_ENCODER_SUCCESS", 6, i7, "");
        ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_OPEN_VIDEO_ENCODER_SUCCESS = livePushNotification7;
        int i8 = NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START = i8;
        LivePushNotification livePushNotification8 = new LivePushNotification("ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_CAPTURE_VIDEO_SAMPLES_OVERFLOW", 7, i8, "");
        ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_CAPTURE_VIDEO_SAMPLES_OVERFLOW = livePushNotification8;
        int i9 = NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START = i9;
        LivePushNotification livePushNotification9 = new LivePushNotification("ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_ADJUST_BITRATE", 8, i9, "live pusher adjust bit.");
        ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_ADJUST_BITRATE = livePushNotification9;
        int i10 = NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START = i10;
        LivePushNotification livePushNotification10 = new LivePushNotification("ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_CHANGE_FPS", 9, i10, "live pusher change fps.");
        ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_CHANGE_FPS = livePushNotification10;
        int i11 = NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START = i11;
        LivePushNotification livePushNotification11 = new LivePushNotification("ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_CHANGE_RESOLUTION", 10, i11, "live pusher change resolution.");
        ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_CHANGE_RESOLUTION = livePushNotification11;
        int i12 = NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START = i12;
        LivePushNotification livePushNotification12 = new LivePushNotification("ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_GL_CONTEXT_CREATED", 11, i12, "");
        ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_GL_CONTEXT_CREATED = livePushNotification12;
        int i13 = NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_START = i13;
        LivePushNotification livePushNotification13 = new LivePushNotification("ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_GL_CONTEXT_DESTROYED", 12, i13, "");
        ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_GL_CONTEXT_DESTROYED = livePushNotification13;
        int i14 = NotificationCode.ALIVC_PUSHER_EVENT_CAPTURE_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_CAPTURE_START = i14;
        LivePushNotification livePushNotification14 = new LivePushNotification("ALIVC_PUSHER_EVENT_CAPTURE_OPEN_CAMERA_SUCCESS", 13, i14, "open camera success.");
        ALIVC_PUSHER_EVENT_CAPTURE_OPEN_CAMERA_SUCCESS = livePushNotification14;
        int i15 = NotificationCode.ALIVC_PUSHER_EVENT_CAPTURE_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_CAPTURE_START = i15;
        LivePushNotification livePushNotification15 = new LivePushNotification("ALIVC_PUSHER_EVENT_CAPTURE_OPEN_MIC_SUCCESS", 14, i15, "open mic success.");
        ALIVC_PUSHER_EVENT_CAPTURE_OPEN_MIC_SUCCESS = livePushNotification15;
        int i16 = NotificationCode.ALIVC_PUSHER_EVENT_CAPTURE_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_CAPTURE_START = i16;
        LivePushNotification livePushNotification16 = new LivePushNotification("ALIVC_PUSHER_EVENT_CAPTURE_CLOSE_CAMERA_SUCCESS", 15, i16, "close camera success.");
        ALIVC_PUSHER_EVENT_CAPTURE_CLOSE_CAMERA_SUCCESS = livePushNotification16;
        int i17 = NotificationCode.ALIVC_PUSHER_EVENT_CAPTURE_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_CAPTURE_START = i17;
        LivePushNotification livePushNotification17 = new LivePushNotification("ALIVC_PUSHER_EVENT_CAPTURE_OPEN_SCREENCAPTURE_SUCCESS", 16, i17, "screen capture open suc");
        ALIVC_PUSHER_EVENT_CAPTURE_OPEN_SCREENCAPTURE_SUCCESS = livePushNotification17;
        int i18 = NotificationCode.ALIVC_PUSHER_EVENT_CAPTURE_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_CAPTURE_START = i18;
        LivePushNotification livePushNotification18 = new LivePushNotification("ALIVC_PUSHER_EVENT_CAPTURE_CLOSE_SCREENCAPTURE_SUCCESS", 17, i18, "screen capture close suc");
        ALIVC_PUSHER_EVENT_CAPTURE_CLOSE_SCREENCAPTURE_SUCCESS = livePushNotification18;
        int i19 = NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START = i19;
        LivePushNotification livePushNotification19 = new LivePushNotification("ALIVC_PUSHER_EVENT_PUSH_STARTED", 18, i19, "");
        ALIVC_PUSHER_EVENT_PUSH_STARTED = livePushNotification19;
        int i20 = NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START = i20;
        LivePushNotification livePushNotification20 = new LivePushNotification("ALIVC_PUSHER_EVENT_PUSH_STOPED", 19, i20, "");
        ALIVC_PUSHER_EVENT_PUSH_STOPED = livePushNotification20;
        int i21 = NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START = i21;
        LivePushNotification livePushNotification21 = new LivePushNotification("ALIVC_PUSHER_EVENT_PUSH_NETWORK_POOR", 20, i21, "");
        ALIVC_PUSHER_EVENT_PUSH_NETWORK_POOR = livePushNotification21;
        int i22 = NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START = i22;
        LivePushNotification livePushNotification22 = new LivePushNotification("ALIVC_PUSHER_EVENT_PUSH_NETWORK_RECOVERY", 21, i22, "");
        ALIVC_PUSHER_EVENT_PUSH_NETWORK_RECOVERY = livePushNotification22;
        int i23 = NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START = i23;
        LivePushNotification livePushNotification23 = new LivePushNotification("ALIVC_PUSHER_EVENT_PUSH_RECONNECT_START", 22, i23, "");
        ALIVC_PUSHER_EVENT_PUSH_RECONNECT_START = livePushNotification23;
        int i24 = NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START = i24;
        LivePushNotification livePushNotification24 = new LivePushNotification("ALIVC_PUSHER_EVENT_PUSH_RECONNECT_SUCCESS", 23, i24, "");
        ALIVC_PUSHER_EVENT_PUSH_RECONNECT_SUCCESS = livePushNotification24;
        int i25 = NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START = i25;
        LivePushNotification livePushNotification25 = new LivePushNotification("ALIVC_PUSHER_EVENT_PUSH_DROP_FRAME", 24, i25, "drop frame.");
        ALIVC_PUSHER_EVENT_PUSH_DROP_FRAME = livePushNotification25;
        int i26 = NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START = i26;
        LivePushNotification livePushNotification26 = new LivePushNotification("ALIVC_PUSHER_EVENT_PUSH_SENDED_FIRST_AV", 25, i26, "");
        ALIVC_PUSHER_EVENT_PUSH_SENDED_FIRST_AV = livePushNotification26;
        int i27 = NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START = i27;
        LivePushNotification livePushNotification27 = new LivePushNotification("ALIVC_PUSHER_EVENT_PUSH_SENDED_SEI", 26, i27, "send sei");
        ALIVC_PUSHER_EVENT_PUSH_SENDED_SEI = livePushNotification27;
        int i28 = NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START = i28;
        LivePushNotification livePushNotification28 = new LivePushNotification("ALIVC_PUSHER_EVENT_PUSH_CONNECTION_LOST", 27, i28, "connection lost");
        ALIVC_PUSHER_EVENT_PUSH_CONNECTION_LOST = livePushNotification28;
        int i29 = NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START = i29;
        LivePushNotification livePushNotification29 = new LivePushNotification("ALIVC_PUSHER_EVENT_PUSH_DELAY_INFO", 28, i29, "");
        ALIVC_PUSHER_EVENT_PUSH_DELAY_INFO = livePushNotification29;
        int i30 = NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START = i30;
        LivePushNotification livePushNotification30 = new LivePushNotification("ALIVC_PUSHER_EVENT_PUSH_CRASH", 29, i30, "");
        ALIVC_PUSHER_EVENT_PUSH_CRASH = livePushNotification30;
        int i31 = NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_PUSH_START = i31;
        LivePushNotification livePushNotification31 = new LivePushNotification("ALIVC_PUSHER_EVENT_GENERAL_MONITOR", 30, i31, "");
        ALIVC_PUSHER_EVENT_GENERAL_MONITOR = livePushNotification31;
        LivePushNotification livePushNotification32 = new LivePushNotification("ALIVC_PUSHER_EVENT_RTMP_PUSH_STARTED", 31, livePushNotification19.getCode(), "");
        ALIVC_PUSHER_EVENT_RTMP_PUSH_STARTED = livePushNotification32;
        LivePushNotification livePushNotification33 = new LivePushNotification("ALIVC_PUSHER_EVENT_RTMP_PUSH_STOPED", 32, livePushNotification20.getCode(), "");
        ALIVC_PUSHER_EVENT_RTMP_PUSH_STOPED = livePushNotification33;
        LivePushNotification livePushNotification34 = new LivePushNotification("ALIVC_PUSHER_EVENT_RTMP_NETWORK_POOR", 33, livePushNotification21.getCode(), "");
        ALIVC_PUSHER_EVENT_RTMP_NETWORK_POOR = livePushNotification34;
        LivePushNotification livePushNotification35 = new LivePushNotification("ALIVC_PUSHER_EVENT_RTMP_NETWORK_RECOVERY", 34, livePushNotification22.getCode(), "");
        ALIVC_PUSHER_EVENT_RTMP_NETWORK_RECOVERY = livePushNotification35;
        LivePushNotification livePushNotification36 = new LivePushNotification("ALIVC_PUSHER_EVENT_RTMP_RECONNECT_START", 35, livePushNotification23.getCode(), "");
        ALIVC_PUSHER_EVENT_RTMP_RECONNECT_START = livePushNotification36;
        LivePushNotification livePushNotification37 = new LivePushNotification("ALIVC_PUSHER_EVENT_RTMP_RECONNECT_SUCCESS", 36, livePushNotification24.getCode(), "");
        ALIVC_PUSHER_EVENT_RTMP_RECONNECT_SUCCESS = livePushNotification37;
        LivePushNotification livePushNotification38 = new LivePushNotification("ALIVC_PUSHER_EVENT_RTMP_DROP_FRAME", 37, livePushNotification25.getCode(), "drop frame.");
        ALIVC_PUSHER_EVENT_RTMP_DROP_FRAME = livePushNotification38;
        LivePushNotification livePushNotification39 = new LivePushNotification("ALIVC_PUSHER_EVENT_RTMP_SENDED_FIRST_AV", 38, livePushNotification26.getCode(), "");
        ALIVC_PUSHER_EVENT_RTMP_SENDED_FIRST_AV = livePushNotification39;
        LivePushNotification livePushNotification40 = new LivePushNotification("ALIVC_PUSHER_EVENT_RTMP_SENDED_SEI", 39, livePushNotification27.getCode(), "send sei");
        ALIVC_PUSHER_EVENT_RTMP_SENDED_SEI = livePushNotification40;
        LivePushNotification livePushNotification41 = new LivePushNotification("ALIVC_PUSHER_EVENT_RTMP_CONNECTION_LOST", 40, livePushNotification28.getCode(), "connection lost");
        ALIVC_PUSHER_EVENT_RTMP_CONNECTION_LOST = livePushNotification41;
        int i32 = NotificationCode.ALIVC_PUSHER_EVENT_BGM_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_BGM_START = i32;
        LivePushNotification livePushNotification42 = new LivePushNotification("ALIVC_PUSHER_EVENT_BGM_OPEN_SUCCESS", 41, i32, "bgm open success");
        ALIVC_PUSHER_EVENT_BGM_OPEN_SUCCESS = livePushNotification42;
        int i33 = NotificationCode.ALIVC_PUSHER_EVENT_BGM_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_BGM_START = i33;
        LivePushNotification livePushNotification43 = new LivePushNotification("ALIVC_PUSHER_EVENT_BGM_STOP_SUCCESS", 42, i33, "bgm stop success");
        ALIVC_PUSHER_EVENT_BGM_STOP_SUCCESS = livePushNotification43;
        int i34 = NotificationCode.ALIVC_PUSHER_EVENT_BGM_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_BGM_START = i34;
        LivePushNotification livePushNotification44 = new LivePushNotification("ALIVC_PUSHER_EVENT_BGM_PAUSE_SUCCESS", 43, i34, "bgm pause success");
        ALIVC_PUSHER_EVENT_BGM_PAUSE_SUCCESS = livePushNotification44;
        int i35 = NotificationCode.ALIVC_PUSHER_EVENT_BGM_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_BGM_START = i35;
        LivePushNotification livePushNotification45 = new LivePushNotification("ALIVC_PUSHER_EVENT_BGM_RESUME_SUCCESS", 44, i35, "bgm resume success");
        ALIVC_PUSHER_EVENT_BGM_RESUME_SUCCESS = livePushNotification45;
        int i36 = NotificationCode.ALIVC_PUSHER_EVENT_BGM_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_BGM_START = i36;
        LivePushNotification livePushNotification46 = new LivePushNotification("ALIVC_PUSHER_EVENT_BGM_COMPLETED", 45, i36, "bgm completed");
        ALIVC_PUSHER_EVENT_BGM_COMPLETED = livePushNotification46;
        int i37 = NotificationCode.ALIVC_PUSHER_EVENT_BGM_START + 1;
        NotificationCode.ALIVC_PUSHER_EVENT_BGM_START = i37;
        LivePushNotification livePushNotification47 = new LivePushNotification("ALIVC_PUSHER_EVENT_BGM_PROGRESS", 46, i37, "bgm progress");
        ALIVC_PUSHER_EVENT_BGM_PROGRESS = livePushNotification47;
        $VALUES = new LivePushNotification[]{livePushNotification, livePushNotification2, livePushNotification3, livePushNotification4, livePushNotification5, livePushNotification6, livePushNotification7, livePushNotification8, livePushNotification9, livePushNotification10, livePushNotification11, livePushNotification12, livePushNotification13, livePushNotification14, livePushNotification15, livePushNotification16, livePushNotification17, livePushNotification18, livePushNotification19, livePushNotification20, livePushNotification21, livePushNotification22, livePushNotification23, livePushNotification24, livePushNotification25, livePushNotification26, livePushNotification27, livePushNotification28, livePushNotification29, livePushNotification30, livePushNotification31, livePushNotification32, livePushNotification33, livePushNotification34, livePushNotification35, livePushNotification36, livePushNotification37, livePushNotification38, livePushNotification39, livePushNotification40, livePushNotification41, livePushNotification42, livePushNotification43, livePushNotification44, livePushNotification45, livePushNotification46, livePushNotification47};
    }

    private LivePushNotification(String str, int i, int i2, String str2) {
        super(str, i);
        this.mCode = i2;
        this.mMsg = str2;
    }

    public static LivePushNotification valueOf(String str) {
        return (LivePushNotification) Enum.valueOf(LivePushNotification.class, str);
    }

    public static LivePushNotification[] values() {
        return (LivePushNotification[]) $VALUES.clone();
    }

    public int getCode() {
        return this.mCode;
    }

    public String getMsg() {
        return this.mMsg;
    }

    public void setCode(int i) {
        this.mCode = i;
    }

    public void setMsg(String str) {
        this.mMsg = str;
    }
}
