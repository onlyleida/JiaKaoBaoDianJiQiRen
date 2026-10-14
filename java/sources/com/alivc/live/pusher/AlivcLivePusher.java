package com.alivc.live.pusher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Message;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.alivc.component.custom.AlivcLivePushCustomDetect;
import com.alivc.component.custom.AlivcLivePushCustomFilter;
import com.alivc.component.player.BGMPlayerJNI;
import com.alivc.live.pusher.logreport.PusherAdjustBitrateEvent;
import com.alivc.live.pusher.logreport.PusherAdjustFpsEvent;
import com.alivc.live.pusher.logreport.PusherConnectionLostEvent;
import com.alivc.live.pusher.logreport.PusherDelayInfoEvent;
import com.alivc.live.pusher.logreport.PusherDropFrameEvent;
import com.alivc.live.pusher.logreport.PusherFirstFrameSentEvent;
import com.alivc.live.pusher.logreport.PusherHeartBeatEvent;
import com.alivc.live.pusher.logreport.PusherMuteOffEvent;
import com.alivc.live.pusher.logreport.PusherMuteOnEvent;
import com.alivc.live.pusher.logreport.PusherNetworkPoorEvent;
import com.alivc.live.pusher.logreport.PusherNetworkRecoveryEvent;
import com.alivc.live.pusher.logreport.PusherOnPauseEvent;
import com.alivc.live.pusher.logreport.PusherOnRestartEvent;
import com.alivc.live.pusher.logreport.PusherOnResumeEvent;
import com.alivc.live.pusher.logreport.PusherPauseEvent;
import com.alivc.live.pusher.logreport.PusherReconnectEvent;
import com.alivc.live.pusher.logreport.PusherReconnectFailedEvent;
import com.alivc.live.pusher.logreport.PusherReconnectStartEvent;
import com.alivc.live.pusher.logreport.PusherReconnectSuccessEvent;
import com.alivc.live.pusher.logreport.PusherRestartPushEvent;
import com.alivc.live.pusher.logreport.PusherResumeEvent;
import com.alivc.live.pusher.logreport.PusherSDKCrashEvent;
import com.alivc.live.pusher.logreport.PusherSdkErrorEvent;
import com.alivc.live.pusher.logreport.PusherSendDataTimeoutEvent;
import com.alivc.live.pusher.logreport.PusherSetBGMEarsBackEvent;
import com.alivc.live.pusher.logreport.PusherSetBGMEvent;
import com.alivc.live.pusher.logreport.PusherSetBGMLoopEvent;
import com.alivc.live.pusher.logreport.PusherSetFlashEvent;
import com.alivc.live.pusher.logreport.PusherStartPreviewEvent;
import com.alivc.live.pusher.logreport.PusherStartPushEvent;
import com.alivc.live.pusher.logreport.PusherStartPushFailedEvent;
import com.alivc.live.pusher.logreport.PusherStartPushSuccessEvent;
import com.alivc.live.pusher.logreport.PusherStopPreviewEvent;
import com.alivc.live.pusher.logreport.PusherStopPushEvent;
import com.alivc.live.pusher.logreport.PusherStopPushSuccessEvent;
import com.alivc.live.pusher.logreport.PusherSwitchCameraEvent;
import com.alivc.live.pusher.logreport.PusherSystemErrorEvent;
import com.alivc.live.pusher.logreport.core.AliLiveInfoUtils;
import com.alivc.live.pusher.logreport.core.LiveEventReporter;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class AlivcLivePusher implements ILivePusher {
    private static final String AUTH_KEY = "auth_key=";
    private static final int AlivcLivePushPublishType_RTMP = 1;
    private static final int AlivcLivePushPublishType_RTP = 2;
    private static final int MAX_CHATS = 4000;
    private static final int MAX_DYNAMIC_ADDSON_COUNT = 3;
    private static final int MESSAGE_RECONNECT_SUCCESS = 18;
    private static final int NTP_TIME_OUT_MILLISECOND = 1000;
    private static final int SECOND = 1000;
    private static final float TEXTURE_RANGE_MAX = 1.0f;
    private static final float TEXTURE_RANGE_MIN = 0.0f;
    private static final int TIMESTAMP_LENGTH = 10;
    private static LivePusherJNI mNativeAlivcLivePusher;
    protected BluetoothHeadsetUtils mBluetoothHelper;
    private static AlivcResolutionEnum res = AlivcResolutionEnum.RESOLUTION_540P;
    private static String mPushUrl = null;
    private static boolean isDebugView = false;
    private AlivcLivePushStats mPushStatus = AlivcLivePushStats.IDLE;
    private AlivcLivePlayStats mPlayStats = AlivcLivePlayStats.IDLE;
    private AlivcLivePushError mLastError = AlivcLivePushError.ALIVC_COMMON_RETURN_SUCCESS;
    private AlivcLivePushInfoListener mPushInfoListener = null;
    private AlivcLivePushErrorListener mPushErrorListener = null;
    private AlivcLivePushNetworkListener mPushNetworkListener = null;
    private AlivcLivePushBGMListener mPushBGMListener = null;
    private AlivcLivePusherRenderContextListener mRenderContextListener = null;
    private SurfaceStatus mSurfaceStatus = SurfaceStatus.UNINITED;
    private SurfaceView mPreviewView = null;
    private AudioManager mAudioManager = null;
    private Context mContext = null;
    private AlivcLivePushConfig mAlivcLivePushConfig = null;
    private Map<Integer, AlivcLivePushError> mErrorMap = new HashMap();
    private int mSkinSmooth = 40;
    private int mWhiten = 70;
    private int mBright = 0;
    private int mCheekPink = 15;
    private int mWholePink = 40;
    private int mSlimFace = 40;
    private int mShortenFace = 50;
    private int mBigEye = 30;
    private int mBGMVolume = 50;
    private int mCaptureVolume = 50;
    private boolean mMute = false;
    private TelephonyManager manager = null;
    private AlivcLivePushLogLevel mLogLevel = AlivcLivePushLogLevel.AlivcLivePushLogLevelWarn;
    private boolean registeredCallback = false;
    private boolean isReconnect = false;
    private LiveEventReporter mLiveEventReporter = null;
    private long mTimeStamp = -1;
    private int mExpiryTime = -1;
    private boolean mixRequireMain = false;
    private int mDynamicAddsonCount = 0;
    private int mTimeCount = 0;
    private AlivcSnapshotListener mSnapshotListener = null;
    private ScreenRecordStatus mScreenStatus = ScreenRecordStatus.SCREEN_RECORD_NONE;
    private ThreadPoolExecutor mThreadPoolExecutor = new ThreadPoolExecutor(3, 5, 1, TimeUnit.SECONDS, new LinkedBlockingQueue(100));
    private String mDebugFunctionText = "[%1$s] <thread:%2$s> ";
    private Handler mHandler = new Handler() { // from class: com.alivc.live.pusher.AlivcLivePusher.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            LogUtil.d("AlivcLivePusher", "AlivcLivePusher reconnect success");
            AlivcLivePusher.this.isReconnect = false;
            if (AlivcLivePusher.this.mPushNetworkListener != null) {
                AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AlivcLivePusher.this.mPushNetworkListener.onReconnectSucceed(AlivcLivePusher.this);
                    }
                });
            }
        }
    };
    private SurfaceHolder.Callback mPreviewCallback = new SurfaceHolder.Callback() { // from class: com.alivc.live.pusher.AlivcLivePusher.2
        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            LogUtil.d("AlivcLivePusher", "LiveActivity-->Preview surface changed");
            if (AlivcLivePusher.this.mPreviewView == null) {
                return;
            }
            AlivcLivePusher.this.mSurfaceStatus = SurfaceStatus.CHANGED;
            if (AlivcLivePusher.mNativeAlivcLivePusher != null) {
                AlivcLivePusher.mNativeAlivcLivePusher.notifySurfaceChange(surfaceHolder.getSurface(), AlivcLivePusher.this.mAlivcLivePushConfig.getPreviewOrientation());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            LogUtil.d("AlivcLivePusher", "LiveActivity-->Preview surface created");
            if (AlivcLivePusher.this.mPreviewView == null) {
                return;
            }
            if (AlivcLivePusher.this.mSurfaceStatus == SurfaceStatus.UNINITED) {
                AlivcLivePusher.this.mSurfaceStatus = SurfaceStatus.CREATED;
            } else if (AlivcLivePusher.this.mSurfaceStatus == SurfaceStatus.DESTROYED) {
                AlivcLivePusher.this.mSurfaceStatus = SurfaceStatus.RECREATED;
                if (AlivcLivePusher.mNativeAlivcLivePusher != null) {
                    AlivcLivePusher.mNativeAlivcLivePusher.notifySurfaceReCreate(AlivcLivePusher.this.mPreviewView.getHolder().getSurface());
                }
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            LogUtil.d("AlivcLivePusher", "LiveActivity-->Preview surface destroyed");
            if (AlivcLivePusher.this.mPreviewView == null) {
                return;
            }
            if (AlivcLivePusher.mNativeAlivcLivePusher != null) {
                AlivcLivePusher.mNativeAlivcLivePusher.notifySurfaceDestroy();
            }
            AlivcLivePusher.this.mSurfaceStatus = SurfaceStatus.DESTROYED;
        }
    };
    private ScheduledExecutorService scheduleExecutor = null;
    private BroadcastReceiver mHeadsetPlugReceiver = new BroadcastReceiver() { // from class: com.alivc.live.pusher.AlivcLivePusher.7
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.media.AUDIO_BECOMING_NOISY".equals(action)) {
                LogUtil.d("BluetoothHeadsetUtils", "ACTION_AUDIO_BECOMING_NOISY headset out");
                AlivcLivePusher.this.mAudioManager.setMode(0);
                AlivcLivePusher.this.mAudioManager.setSpeakerphoneOn(true);
                LivePusherJNI.headSetOn = false;
                if (AlivcLivePusher.mNativeAlivcLivePusher == null) {
                    return;
                }
            } else {
                if (!"android.intent.action.HEADSET_PLUG".equals(action) || !intent.hasExtra("state")) {
                    return;
                }
                if (intent.getIntExtra("state", 0) != 0) {
                    if (intent.getIntExtra("state", 0) == 1) {
                        LogUtil.d("BluetoothHeadsetUtils", "headset in");
                        AlivcLivePusher.this.mAudioManager.setSpeakerphoneOn(false);
                        LivePusherJNI.headSetOn = true;
                        if (AlivcLivePusher.mNativeAlivcLivePusher != null) {
                            AlivcLivePusher.mNativeAlivcLivePusher.setHeadSet(true);
                            return;
                        }
                        return;
                    }
                    return;
                }
                LogUtil.d("BluetoothHeadsetUtils", "headset out");
                AlivcLivePusher.this.mAudioManager.setMode(0);
                AlivcLivePusher.this.mAudioManager.setSpeakerphoneOn(true);
                if (!LivePusherJNI.headSetOn) {
                    return;
                }
                LivePusherJNI.headSetOn = false;
                if (AlivcLivePusher.mNativeAlivcLivePusher == null) {
                    return;
                }
            }
            AlivcLivePusher.mNativeAlivcLivePusher.setHeadSet(false);
        }
    };
    private BroadcastReceiver mTelephoneReceiver = new BroadcastReceiver() { // from class: com.alivc.live.pusher.AlivcLivePusher.8
        PhoneStateListener stateListener = new PhoneStateListener() { // from class: com.alivc.live.pusher.AlivcLivePusher.8.1
            @Override // android.telephony.PhoneStateListener
            public void onCallStateChanged(int i, String str) {
                super.onCallStateChanged(i, str);
                if (i == 0) {
                    LogUtil.d("AlivcLivePusher", "PHONE: CALL_STATE_IDLE");
                    if (AlivcLivePusher.mNativeAlivcLivePusher != null) {
                        AlivcLivePusher.mNativeAlivcLivePusher.setMute(false);
                        return;
                    }
                    return;
                }
                if (i == 1) {
                    LogUtil.d("AlivcLivePusher", "PHONE: CALL_STATE_RINGING");
                    if (AlivcLivePusher.mNativeAlivcLivePusher == null) {
                        return;
                    }
                } else {
                    if (i != 2) {
                        return;
                    }
                    LogUtil.d("AlivcLivePusher", "PHONE: CALL_STATE_OFFHOOK");
                    if (AlivcLivePusher.mNativeAlivcLivePusher == null) {
                        return;
                    }
                }
                AlivcLivePusher.mNativeAlivcLivePusher.setMute(true);
            }
        };

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!intent.getAction().equals("android.intent.action.NEW_OUTGOING_CALL") && AlivcLivePusher.this.manager == null) {
                AlivcLivePusher.this.manager = (TelephonyManager) context.getSystemService("phone");
                AlivcLivePusher.this.manager.listen(this.stateListener, 32);
            }
        }
    };
    private AlivcSnapshotListener mInnerSnapshotListener = new AlivcSnapshotListener() { // from class: com.alivc.live.pusher.AlivcLivePusher.11
        @Override // com.alivc.live.pusher.AlivcSnapshotListener
        public void onSnapshot(final Bitmap bitmap) {
            if (AlivcLivePusher.this.mSnapshotListener != null) {
                AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.11.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AlivcLivePusher.this.mSnapshotListener.onSnapshot(bitmap);
                    }
                });
            }
        }
    };

    protected enum ScreenRecordStatus {
        SCREEN_RECORD_NONE,
        SCREEN_RECORD_NORMAL,
        SCREEN_RECORD_CAMERA_START,
        SCREEN_RECORD_CAMERA_MIX_START
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addWaterMark() {
        float f2;
        float height;
        int width;
        ArrayList<WaterMarkInfo> waterMarkInfos = this.mAlivcLivePushConfig.getWaterMarkInfos();
        int size = waterMarkInfos.size();
        for (int i = 0; i < size; i++) {
            int[] imageWidthHeight = getImageWidthHeight(waterMarkInfos.get(i).mWaterMarkPath);
            if (imageWidthHeight != null && imageWidthHeight[0] != 0 && imageWidthHeight[1] != 0) {
                if (this.mAlivcLivePushConfig.getPreviewOrientation() == AlivcPreviewOrientationEnum.ORIENTATION_LANDSCAPE_HOME_LEFT.getOrientation() || this.mAlivcLivePushConfig.getPreviewOrientation() == AlivcPreviewOrientationEnum.ORIENTATION_LANDSCAPE_HOME_RIGHT.getOrientation()) {
                    f2 = waterMarkInfos.get(i).mWaterMarkWidth;
                    height = ((waterMarkInfos.get(i).mWaterMarkWidth * imageWidthHeight[1]) / imageWidthHeight[0]) * this.mAlivcLivePushConfig.getHeight();
                    width = this.mAlivcLivePushConfig.getWidth();
                } else {
                    f2 = waterMarkInfos.get(i).mWaterMarkWidth;
                    height = ((waterMarkInfos.get(i).mWaterMarkWidth * imageWidthHeight[1]) / imageWidthHeight[0]) * this.mAlivcLivePushConfig.getWidth();
                    width = this.mAlivcLivePushConfig.getHeight();
                }
                float f3 = height;
                mNativeAlivcLivePusher.addWaterMark(waterMarkInfos.get(i).mWaterMarkPath, f2, f3 / width, (waterMarkInfos.get(i).mWaterMarkWidth / 2.0f) + waterMarkInfos.get(i).mWaterMarkCoordX, waterMarkInfos.get(i).mWaterMarkCoordY + (waterMarkInfos.get(i).mWaterMarkHeight / 2.0f));
            }
        }
    }

    private void checkConfig(AlivcLivePushConfig alivcLivePushConfig) {
        if (alivcLivePushConfig == null) {
            throw new IllegalArgumentException("Invalid parameter, config is null.");
        }
        if (alivcLivePushConfig.isVideoOnly() && alivcLivePushConfig.isAudioOnly()) {
            throw new IllegalStateException("cannot set video only and audio only simultaneously");
        }
        if (alivcLivePushConfig.getTargetVideoBitrate() < 100 || alivcLivePushConfig.getTargetVideoBitrate() > 5000) {
            throw new IllegalStateException("video target bitrate error, Range:[100 5000]");
        }
        if (alivcLivePushConfig.getMinVideoBitrate() < 100 || alivcLivePushConfig.getMinVideoBitrate() > 5000) {
            throw new IllegalStateException("video min bitrate error, Range:[100 5000]");
        }
        if (alivcLivePushConfig.getInitialVideoBitrate() < alivcLivePushConfig.getMinVideoBitrate() || alivcLivePushConfig.getInitialVideoBitrate() < 100 || alivcLivePushConfig.getInitialVideoBitrate() > 5000) {
            throw new IllegalStateException("init bitrate error");
        }
        if (alivcLivePushConfig.getConnectRetryCount() <= 0 || alivcLivePushConfig.getConnectRetryCount() > 100) {
            throw new IllegalStateException("connect retry count error, Range:[0 100]");
        }
        if (alivcLivePushConfig.getConnectRetryInterval() <= 0 || alivcLivePushConfig.getConnectRetryInterval() > 10000) {
            throw new IllegalStateException("connect retry interval error, Range:[0 10000]");
        }
        if (alivcLivePushConfig.getMinFps() <= 0 || alivcLivePushConfig.getMinFps() > alivcLivePushConfig.getFps()) {
            throw new IllegalStateException("fps error");
        }
        for (int i = 0; i < alivcLivePushConfig.getWaterMarkInfos().size(); i++) {
            if (alivcLivePushConfig.getWaterMarkInfos().get(i).mWaterMarkCoordX > 1.0f || alivcLivePushConfig.getWaterMarkInfos().get(i).mWaterMarkWidth > 1.0f || alivcLivePushConfig.getWaterMarkInfos().get(i).mWaterMarkCoordY > 1.0f || alivcLivePushConfig.getWaterMarkInfos().get(i).mWaterMarkHeight > 1.0f) {
                throw new IllegalStateException("watermark param error");
            }
            if (alivcLivePushConfig.getWaterMarkInfos().get(i).mWaterMarkCoordX < 0.0f || alivcLivePushConfig.getWaterMarkInfos().get(i).mWaterMarkWidth <= 0.0f || alivcLivePushConfig.getWaterMarkInfos().get(i).mWaterMarkCoordY < 0.0f || alivcLivePushConfig.getWaterMarkInfos().get(i).mWaterMarkHeight <= 0.0f) {
                throw new IllegalStateException("watermark param error");
            }
        }
    }

    private int getBGMVolume() {
        if (this.mMute) {
            return 0;
        }
        return this.mBGMVolume;
    }

    private boolean getBlueToothHeadSetOn() {
        BluetoothHeadsetUtils bluetoothHeadsetUtils = this.mBluetoothHelper;
        if (bluetoothHeadsetUtils != null) {
            return bluetoothHeadsetUtils.isOnHeadsetSco();
        }
        return false;
    }

    private int getCaptureVolume() {
        if (this.mMute) {
            return 0;
        }
        return this.mCaptureVolume;
    }

    private String getFormatString(String str) {
        int iIndexOf = str.indexOf(AUTH_KEY);
        if (iIndexOf <= 0) {
            return "";
        }
        String strSubstring = str.substring(iIndexOf);
        return strSubstring.indexOf("-") > 0 ? strSubstring.substring(9, strSubstring.indexOf("-")) : strSubstring.substring(9);
    }

    private boolean getHeadSetPlugOn() {
        return LivePusherJNI.headSetOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getHeartBeatInfo() {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI == null) {
            return null;
        }
        return (livePusherJNI.getPusherInfo() + ",cpu:" + AliLiveInfoUtils.getCPUUsageRatio()) + ",mem:" + AliLiveInfoUtils.getMemoryUsageRatio();
    }

    private int[] getImageWidthHeight(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeFile(str, options);
            return new int[]{options.outWidth, options.outHeight};
        } catch (Exception unused) {
            return new int[]{0, 0};
        }
    }

    private void getNetworkTime() {
        new ScheduledThreadPoolExecutor(1, new ThreadFactory() { // from class: com.alivc.live.pusher.AlivcLivePusher.10
            private AtomicInteger atoInteger = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setName("LivePusher-NTP-Time-Thread " + this.atoInteger.getAndIncrement());
                return thread;
            }
        }).execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.9
            @Override // java.lang.Runnable
            public void run() {
                for (int i = 0; i < 3; i++) {
                    AlivcLivePusher alivcLivePusher = AlivcLivePusher.this;
                    alivcLivePusher.mTimeStamp = alivcLivePusher.getTimeFromNtpServer("time.pool.aliyun.com");
                    if (AlivcLivePusher.this.mTimeStamp > 0) {
                        AlivcLivePusher.this.mTimeStamp /= 1000;
                        break;
                    }
                }
                if (AlivcLivePusher.this.mTimeStamp < 0) {
                    AlivcLivePusher.this.mTimeStamp = System.currentTimeMillis() / 1000;
                }
                if (AlivcLivePusher.this.getTimestamp(AlivcLivePusher.mPushUrl) != -1) {
                    AlivcLivePusher alivcLivePusher2 = AlivcLivePusher.this;
                    alivcLivePusher2.mExpiryTime = (int) (((long) alivcLivePusher2.getTimestamp(AlivcLivePusher.mPushUrl)) - AlivcLivePusher.this.mTimeStamp);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> getPerformanceMap() {
        String performanceInfo;
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI == null || (performanceInfo = livePusherJNI.getPerformanceInfo()) == null || "".equals(performanceInfo)) {
            return null;
        }
        HashMap map = new HashMap();
        StringTokenizer stringTokenizer = new StringTokenizer(performanceInfo, "|");
        while (stringTokenizer.hasMoreTokens()) {
            StringTokenizer stringTokenizer2 = new StringTokenizer(stringTokenizer.nextToken(), ":");
            map.put(stringTokenizer2.nextToken(), stringTokenizer2.hasMoreTokens() ? stringTokenizer2.nextToken() : null);
        }
        return map;
    }

    public static String getSDKVersion() {
        return LivePusherJNI.getSdkVersion();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getTimeFromNtpServer(String str) {
        LogUtil.d("", "get time from " + str);
        SntpClient sntpClient = new SntpClient();
        if (sntpClient.requestTime(str, 1000)) {
            return sntpClient.getNtpTime();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTimestamp(String str) {
        String formatString = getFormatString(str);
        if (formatString.length() >= 10 && TextUtils.isDigitsOnly(formatString)) {
            return new Long(Long.valueOf(formatString).longValue()).intValue();
        }
        return -1;
    }

    private void registerHeadsetPlugReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.HEADSET_PLUG");
        this.mContext.registerReceiver(this.mHeadsetPlugReceiver, intentFilter);
        this.mContext.registerReceiver(this.mHeadsetPlugReceiver, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.intent.action.PHONE_STATE");
        this.mContext.registerReceiver(this.mTelephoneReceiver, intentFilter2);
        this.registeredCallback = true;
    }

    private void reportStartPushEvent(boolean z, boolean z2) {
        LiveEventReporter liveEventReporter;
        AlivcLivePushConstants.Topic topic;
        String str;
        Map<String, String> argsStr;
        PusherStartPushEvent.Args args = new PusherStartPushEvent.Args();
        Map<String, String> performanceMap = getPerformanceMap();
        if (performanceMap != null) {
            args.sync = z2;
            args.vutMs = ParameterUtil.getInteger(performanceMap, "mVideoDurationFromeCaptureToUpload");
            args.autMs = ParameterUtil.getInteger(performanceMap, "mAudioDurationFromeCaptureToUpload");
            args.resolution = this.mAlivcLivePushConfig.getResolution().toString().substring(11);
            args.st = this.mAlivcLivePushConfig.getAudioChannels() == 1 ? "single" : "dual";
            args.ao = this.mAlivcLivePushConfig.isAudioOnly();
            args.vo = this.mAlivcLivePushConfig.isVideoOnly();
            args.he = this.mAlivcLivePushConfig.getVideoEncodeMode().equals(AlivcEncodeModeEnum.Encode_MODE_HARD);
            args.wc = this.mAlivcLivePushConfig.getWaterMarkInfos().size();
            args.pum = this.mAlivcLivePushConfig.isPushMirror();
            args.fps = this.mAlivcLivePushConfig.getFps();
            args.ivb = this.mAlivcLivePushConfig.getInitialVideoBitrate();
            args.mavb = this.mAlivcLivePushConfig.getTargetVideoBitrate();
            args.mivb = this.mAlivcLivePushConfig.getMinVideoBitrate();
            args.asr = this.mAlivcLivePushConfig.getAudioSamepleRate().getAudioSampleRate();
            args.po = this.mAlivcLivePushConfig.getPreviewOrientation();
            args.ct = this.mAlivcLivePushConfig.getCameraType();
            args.flash = this.mAlivcLivePushConfig.isFlash();
            args.crmc = this.mAlivcLivePushConfig.getConnectRetryCount();
            args.cri = this.mAlivcLivePushConfig.getConnectRetryInterval();
            args.prm = this.mAlivcLivePushConfig.isPreviewMirror();
            args.gop = this.mAlivcLivePushConfig.getVideoEncodeGop();
            args.utm = (this.mAlivcLivePushConfig.getConnectRetryCount() * this.mAlivcLivePushConfig.getConnectRetryInterval()) / 1000;
            if (z) {
                liveEventReporter = this.mLiveEventReporter;
                topic = PusherRestartPushEvent.kTopicType;
                str = PusherRestartPushEvent.kTopicValue;
                argsStr = PusherRestartPushEvent.getArgsStr(args);
            } else {
                liveEventReporter = this.mLiveEventReporter;
                topic = PusherStartPushEvent.kTopicType;
                str = PusherStartPushEvent.kTopicValue;
                argsStr = PusherStartPushEvent.getArgsStr(args);
            }
            liveEventReporter.sendEvent(topic, str, argsStr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessageInternal(String str, int i, int i2, boolean z, boolean z2) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI == null) {
            throw new IllegalArgumentException("Invalid parameter on sendMessageInternal");
        }
        if (!livePusherJNI.isPushing()) {
            throw new IllegalStateException("Status error, status should be PUSHED");
        }
        if (!str.isEmpty() && str.length() > MAX_CHATS) {
            throw new IllegalArgumentException("The maximum length is 4000");
        }
        LivePusherJNI livePusherJNI2 = mNativeAlivcLivePusher;
        if (livePusherJNI2 != null) {
            livePusherJNI2.addSeiInfo(str, i, i2, z, z2);
        }
    }

    private void startScheduleExecutor() {
        ScheduledExecutorService scheduledExecutorService = this.scheduleExecutor;
        if (scheduledExecutorService != null) {
            return;
        }
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            this.scheduleExecutor = new ScheduledThreadPoolExecutor(1, new ThreadFactory() { // from class: com.alivc.live.pusher.AlivcLivePusher.5
                private AtomicInteger atoInteger = new AtomicInteger(0);

                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(Runnable runnable) {
                    Thread thread = new Thread(runnable);
                    thread.setName("LivePusher-report-Thread " + this.atoInteger.getAndIncrement());
                    return thread;
                }
            });
        }
        this.scheduleExecutor.scheduleAtFixedRate(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.6
            @Override // java.lang.Runnable
            public void run() {
                AlivcLivePusher.this.mTimeCount++;
                if (AlivcLivePusher.this.mTimeCount == 5) {
                    if (AlivcLivePusher.this.mTimeStamp != -1) {
                        if (AlivcLivePusher.this.mExpiryTime >= 60) {
                            AlivcLivePusher.this.mExpiryTime -= 5;
                        } else if (AlivcLivePusher.this.mPushNetworkListener != null) {
                            String strOnPushURLAuthenticationOverdue = AlivcLivePusher.this.mPushNetworkListener.onPushURLAuthenticationOverdue(AlivcLivePusher.this);
                            if (!TextUtils.isEmpty(strOnPushURLAuthenticationOverdue) && !strOnPushURLAuthenticationOverdue.equals(AlivcLivePusher.mPushUrl)) {
                                AlivcLivePusher.this.reconnectPushAsync(strOnPushURLAuthenticationOverdue);
                            }
                        }
                    }
                    PusherHeartBeatEvent.Args args = new PusherHeartBeatEvent.Args();
                    args.mediaInfo = AlivcLivePusher.this.getHeartBeatInfo();
                    AlivcLivePusher.this.mLiveEventReporter.sendEvent(PusherHeartBeatEvent.kTopicType, PusherHeartBeatEvent.kTopicValue, PusherHeartBeatEvent.getArgsStr(args));
                    AlivcLivePusher.this.mTimeCount = 0;
                }
                AlivcLivePushInfoListener alivcLivePushInfoListener = AlivcLivePusher.this.mPushInfoListener;
                AlivcLivePusher alivcLivePusher = AlivcLivePusher.this;
                alivcLivePushInfoListener.onPushStatistics(alivcLivePusher, alivcLivePusher.getLivePushStatsInfo());
            }
        }, 0L, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, TimeUnit.MILLISECONDS);
    }

    private void stop5Interval() {
        ScheduledExecutorService scheduledExecutorService = this.scheduleExecutor;
        if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
            this.scheduleExecutor.shutdown();
        }
        this.scheduleExecutor = null;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public int addDynamicsAddons(String str, float f2, float f3, float f4, float f5) {
        LivePusherJNI livePusherJNI;
        if (f2 < 0.0f || f2 > 1.0f || f3 < 0.0f || f3 > 1.0f || f4 < 0.0f || f4 > 1.0f || f5 < 0.0f || f5 > 1.0f) {
            throw new IllegalArgumentException("x, y, w, h should in range [0~1.0f]");
        }
        int i = this.mDynamicAddsonCount;
        if (i >= 3 || (livePusherJNI = mNativeAlivcLivePusher) == null) {
            return -1;
        }
        this.mDynamicAddsonCount = i + 1;
        return livePusherJNI.addDynamicsAddons(str, System.currentTimeMillis() * 1000, 0L, f2, f3, f4, f5, 0, false);
    }

    public int addMixAudio(int i, AlivcSoundFormat alivcSoundFormat, int i2) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            return livePusherJNI.addMixAudio(i, alivcSoundFormat.getAlivcSoundFormat(), i2);
        }
        return -1;
    }

    public int addMixVideo(AlivcImageFormat alivcImageFormat, int i, int i2, int i3, float f2, float f3, float f4, float f5, boolean z) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            return livePusherJNI.addMixVideo(alivcImageFormat.getAlivcImageFormat(), i, i2, i3, f2, f3, f4, f5, z);
        }
        return -1;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void changeResolution(AlivcResolutionEnum alivcResolutionEnum) {
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Please excute init first ");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.PUSHED && alivcLivePushStats != AlivcLivePushStats.PREVIEWED && alivcLivePushStats != AlivcLivePushStats.INIT) {
            throw new IllegalStateException("changeResolution can only be called in inited or previewed status");
        }
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.changeResolution(AlivcResolutionEnum.GetResolutionWidth(alivcResolutionEnum), AlivcResolutionEnum.GetResolutionHeight(alivcResolutionEnum));
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void destroy() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->destroy");
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.release();
        }
        LivePusherJNI livePusherJNI2 = mNativeAlivcLivePusher;
        if (livePusherJNI2 != null) {
            livePusherJNI2.release();
        }
        this.mDynamicAddsonCount = 0;
        if (this.registeredCallback) {
            try {
                this.mContext.unregisterReceiver(this.mHeadsetPlugReceiver);
                this.mContext.unregisterReceiver(this.mTelephoneReceiver);
            } catch (Exception unused) {
                LogUtil.d("AlivcLivePusher", "unregisterReceiver exception");
            }
            this.registeredCallback = false;
        }
        BluetoothHeadsetUtils bluetoothHeadsetUtils = this.mBluetoothHelper;
        if (bluetoothHeadsetUtils != null) {
            bluetoothHeadsetUtils.stop();
        }
        this.mPushStatus = AlivcLivePushStats.IDLE;
        stop5Interval();
        ThreadPoolExecutor threadPoolExecutor = this.mThreadPoolExecutor;
        if (threadPoolExecutor != null && !threadPoolExecutor.isShutdown()) {
            this.mThreadPoolExecutor.shutdown();
        }
        this.mThreadPoolExecutor = null;
        mNativeAlivcLivePusher = null;
        this.mPushInfoListener = null;
        this.mPushErrorListener = null;
        this.mPushNetworkListener = null;
        this.mPreviewView = null;
        this.mContext = null;
        this.mAlivcLivePushConfig = null;
        this.mErrorMap = null;
        this.mPreviewCallback = null;
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeMessages(18);
        }
        this.mHandler = null;
        BGMPlayerJNI.setContext(null);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void focusCameraAtAdjustedPoint(float f2, float f3, boolean z) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->focusCameraAtAdjustedPoint x: " + f2 + " y: " + f3 + " auto: " + z);
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats == AlivcLivePushStats.PREVIEWED || alivcLivePushStats == AlivcLivePushStats.PUSHED) {
            mNativeAlivcLivePusher.setCameraFocus(z, f2, f3);
            return;
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public int getCurrentExposure() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->getCurrentExposure");
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats == AlivcLivePushStats.PREVIEWED || alivcLivePushStats == AlivcLivePushStats.PUSHED) {
            return mNativeAlivcLivePusher.getCurrentExposureCompensation();
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public AlivcLivePushStats getCurrentStatus() {
        return this.mPushStatus;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public int getCurrentZoom() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->getCurrentZoom");
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.PREVIEWED && alivcLivePushStats != AlivcLivePushStats.PUSHED) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI == null) {
            return 0;
        }
        livePusherJNI.getCameraCurrentZoom();
        return 0;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public AlivcLivePushError getLastError() {
        return this.mLastError;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public AlivcLivePushStatsInfo getLivePushStatsInfo() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->getLivePushStatsInfo");
        if (mNativeAlivcLivePusher == null) {
            return null;
        }
        AlivcLivePushStatsInfo alivcLivePushStatsInfo = new AlivcLivePushStatsInfo();
        String performanceInfo = mNativeAlivcLivePusher.getPerformanceInfo();
        if (performanceInfo == null || "".equals(performanceInfo)) {
            return null;
        }
        HashMap map = new HashMap();
        StringTokenizer stringTokenizer = new StringTokenizer(performanceInfo, "|");
        while (stringTokenizer.hasMoreTokens()) {
            StringTokenizer stringTokenizer2 = new StringTokenizer(stringTokenizer.nextToken(), ":");
            map.put(stringTokenizer2.nextToken(), stringTokenizer2.hasMoreTokens() ? stringTokenizer2.nextToken() : null);
        }
        try {
            alivcLivePushStatsInfo.setVideoCaptureFps(ParameterUtil.getInteger(map, "mVideoCaptureFps"));
            alivcLivePushStatsInfo.setAudioEncodeBitrate(ParameterUtil.getInteger(map, "mAudioEncodeBitrate"));
            alivcLivePushStatsInfo.setVideoRenderFps(ParameterUtil.getInteger(map, "mVideoRenderingFPS"));
            alivcLivePushStatsInfo.setAudioEncodeFps(ParameterUtil.getInteger(map, "mAudioEncodeFps"));
            alivcLivePushStatsInfo.setVideoEncodeMode(AlivcEncodeModeEnum.values()[ParameterUtil.getInteger(map, "mPresetVideoEncoderMode")]);
            alivcLivePushStatsInfo.setVideoEncodeBitrate(ParameterUtil.getInteger(map, "mVideoEncodeBitrate"));
            alivcLivePushStatsInfo.setVideoEncodeFps(ParameterUtil.getInteger(map, "mVideoEncodedFps"));
            alivcLivePushStatsInfo.setTotalFramesOfEncodedVideo(ParameterUtil.getLong(map, "mTotalFramesOfEncodedVideo"));
            alivcLivePushStatsInfo.setTotalTimeOfEncodedVideo(ParameterUtil.getLong(map, "mTotalTimeOfEncodedVideo"));
            alivcLivePushStatsInfo.setVideoEncodeParam(ParameterUtil.getInteger(map, "mPresetVideoEncoderBitrate"));
            alivcLivePushStatsInfo.setAudioUploadBitrate(ParameterUtil.getInteger(map, "mAudioUploadBitrate"));
            alivcLivePushStatsInfo.setVideoUploadBitrate(ParameterUtil.getInteger(map, "mVideoUploadBitrate"));
            alivcLivePushStatsInfo.setAudioPacketsInUploadBuffer(ParameterUtil.getInteger(map, "mAudioPacketsInBuffer"));
            alivcLivePushStatsInfo.setVideoPacketsInUploadBuffer(ParameterUtil.getInteger(map, "mVideoPacketsInBuffer"));
            alivcLivePushStatsInfo.setVideoUploadeFps(ParameterUtil.getInteger(map, "mVideoUploadedFps"));
            alivcLivePushStatsInfo.setAudioUploadFps(ParameterUtil.getInteger(map, "mAudioUploadingPacketsPerSecond"));
            alivcLivePushStatsInfo.setCurrentlyUploadedVideoFramePts(ParameterUtil.getLong(map, "mCurrentlyUploadedVideoFramePts"));
            alivcLivePushStatsInfo.setCurrentlyUploadedAudioFramePts(ParameterUtil.getLong(map, "mCurrentlyUploadedAudioFramePts"));
            alivcLivePushStatsInfo.setPreviousVideoKeyFramePts(ParameterUtil.getLong(map, "mPreviousKeyFramePts"));
            alivcLivePushStatsInfo.setLastVideoPtsInBuffer(ParameterUtil.getLong(map, "mLastVideoFramePTSInQueue"));
            alivcLivePushStatsInfo.setLastAudioPtsInBuffer(ParameterUtil.getLong(map, "mLastAudioFramePTSInQueue"));
            alivcLivePushStatsInfo.setTotalSizeOfUploadedPackets(ParameterUtil.getLong(map, "mTotalSizeOfUploadedPackets"));
            alivcLivePushStatsInfo.setTotalTimeOfUploading(ParameterUtil.getLong(map, "mTotalTimeOfPublishing"));
            alivcLivePushStatsInfo.setTotalFramesOfUploadedVideo(ParameterUtil.getLong(map, "mTotalFramesOfVideoUploaded"));
            alivcLivePushStatsInfo.setTotalDurationOfDropingVideoFrames(ParameterUtil.getLong(map, "mDropDurationOfVideoFrames"));
            alivcLivePushStatsInfo.setTotalTimesOfDropingVideoFrames(ParameterUtil.getLong(map, "mTotalDroppedTimes"));
            alivcLivePushStatsInfo.setTotalTimesOfDisconnect(ParameterUtil.getInteger(map, "mTotalNetworkDisconnectedTimes"));
            alivcLivePushStatsInfo.setTotalTimesOfReconnect(ParameterUtil.getInteger(map, "mTotalNetworkReconnectedTimes"));
            alivcLivePushStatsInfo.setVideoDurationFromeCaptureToUpload(ParameterUtil.getInteger(map, "mVideoDurationFromeCaptureToUpload"));
            alivcLivePushStatsInfo.setAudioDurationFromeCaptureToUpload(ParameterUtil.getInteger(map, "mAudioDurationFromeCaptureToUpload"));
            alivcLivePushStatsInfo.setCurrentUploadPacketSize(ParameterUtil.getInteger(map, "mCurrentUploadingPacketSize"));
            alivcLivePushStatsInfo.setMaxSizeOfVideoPacketsInBuffer(ParameterUtil.getInteger(map, "mMaxVideoPacketSize"));
            alivcLivePushStatsInfo.setMaxSizeOfAudioPacketsInBuffer(ParameterUtil.getInteger(map, "mMaxAudioPacketSize"));
            alivcLivePushStatsInfo.setLastVideoFramePTSInQueue(ParameterUtil.getLong(map, "mLastVideoFramePTSInQueue"));
            alivcLivePushStatsInfo.setLastAudioFramePTSInQueue(ParameterUtil.getLong(map, "mLastAudioFramePTSInQueue"));
            alivcLivePushStatsInfo.setAvPTSInterval(ParameterUtil.getLong(map, "mAvPTSInterval"));
            alivcLivePushStatsInfo.setAudioFrameInEncodeBuffer(ParameterUtil.getInteger(map, "mAudioFramesInEncoderQueue"));
            alivcLivePushStatsInfo.setVideoFramesInEncodeBuffer(ParameterUtil.getInteger(map, "mVideoFramesInEncoderQueue"));
            alivcLivePushStatsInfo.setVideoFramesInRenderBuffer(ParameterUtil.getInteger(map, "mVideoFramesInRenderQueue"));
            alivcLivePushStatsInfo.setVideoRenderConsumingTimePerFrame(ParameterUtil.getInteger(map, "mVideoRenderConsumingTimePerFrame"));
            alivcLivePushStatsInfo.setTotalDroppedAudioFrames(ParameterUtil.getInteger(map, "mTotalDroppedAudioFrames"));
            alivcLivePushStatsInfo.setRtt(ParameterUtil.getInteger(map, "mRtt"));
            alivcLivePushStatsInfo.setVideoLostRate(ParameterUtil.getInteger(map, "mVideoLostRate"));
            alivcLivePushStatsInfo.setAudioLostRate(ParameterUtil.getInteger(map, "mAudioLostRate"));
            alivcLivePushStatsInfo.setVideoReSendBitRate(ParameterUtil.getInteger(map, "mVideoReSendBitRate"));
            alivcLivePushStatsInfo.setAudioReSendBitRate(ParameterUtil.getInteger(map, "mAudioReSendBitRate"));
            alivcLivePushStatsInfo.setVideoEncodingWidth(ParameterUtil.getInteger(map, "mVideoEncodingWidth"));
            alivcLivePushStatsInfo.setVideoEncodingHeight(ParameterUtil.getInteger(map, "mVideoEncodingHeight"));
            alivcLivePushStatsInfo.setVideoEncodingGopSize(ParameterUtil.getInteger(map, "mVideoEncodingGopSize"));
            alivcLivePushStatsInfo.setAudioCapturingSampleRate(ParameterUtil.getInteger(map, "mAudioCapturingSampleRate"));
            alivcLivePushStatsInfo.setCpu((float) AliLiveInfoUtils.getCPUUsageRatio());
            alivcLivePushStatsInfo.setMemory(ParameterUtil.getRunningAppProcessInfo(this.mContext));
            if (TextUtils.isEmpty(mPushUrl) || !mPushUrl.startsWith("rtmp://")) {
                alivcLivePushStatsInfo.setAlivcLivePushPublishType(2);
            } else {
                alivcLivePushStatsInfo.setAlivcLivePushPublishType(1);
            }
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return alivcLivePushStatsInfo;
    }

    public String getLiveTraceId() {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI == null) {
            return null;
        }
        return livePusherJNI.getPusherTraceId();
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public int getMaxZoom() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->getMaxZoom");
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats == AlivcLivePushStats.PREVIEWED || alivcLivePushStats == AlivcLivePushStats.PUSHED) {
            LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
            if (livePusherJNI != null) {
                return livePusherJNI.getCameraMaxZoom();
            }
            return 0;
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public String getPushUrl() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->getPushUrl");
        return mPushUrl;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public int getSupportedMaxExposure() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->getSupportedMaxExposure");
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats == AlivcLivePushStats.PREVIEWED || alivcLivePushStats == AlivcLivePushStats.PUSHED) {
            return mNativeAlivcLivePusher.getMaxExposureCompensation();
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public int getSupportedMinExposure() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->getSupportedMinExposure");
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats == AlivcLivePushStats.PREVIEWED || alivcLivePushStats == AlivcLivePushStats.PUSHED) {
            return mNativeAlivcLivePusher.getMinExposureCompensation();
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void init(Context context, AlivcLivePushConfig alivcLivePushConfig) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->init");
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.IDLE && alivcLivePushStats != AlivcLivePushStats.INIT) {
            throw new IllegalStateException("init state error, current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        this.mContext = context;
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        this.mAudioManager = audioManager;
        audioManager.setMode(0);
        this.mAudioManager.setSpeakerphoneOn(true);
        registerHeadsetPlugReceiver();
        AliLiveInfoUtils.setSDKContext(this.mContext);
        BluetoothHeadsetUtils bluetoothHeadsetUtils = new BluetoothHeadsetUtils(this.mContext);
        this.mBluetoothHelper = bluetoothHeadsetUtils;
        bluetoothHeadsetUtils.start(new BluetoothHeadsetUtils.BlueToothListener() { // from class: com.alivc.live.pusher.AlivcLivePusher.3
            @Override // com.alivc.live.pusher.BluetoothHeadsetUtils.BlueToothListener
            public void onBlueTooth(boolean z) {
                LivePusherJNI.headSetOn = z;
                AudioManager audioManager2 = AlivcLivePusher.this.mAudioManager;
                if (z) {
                    audioManager2.setSpeakerphoneOn(false);
                } else {
                    audioManager2.setMode(0);
                    AlivcLivePusher.this.mAudioManager.setSpeakerphoneOn(true);
                }
                if (AlivcLivePusher.mNativeAlivcLivePusher != null) {
                    AlivcLivePusher.mNativeAlivcLivePusher.setHeadSet(z);
                }
            }
        });
        this.mAlivcLivePushConfig = alivcLivePushConfig;
        checkConfig(alivcLivePushConfig);
        res = this.mAlivcLivePushConfig.getResolution();
        for (AlivcLivePushError alivcLivePushError : AlivcLivePushError.values()) {
            this.mErrorMap.put(Integer.valueOf(alivcLivePushError.getCode()), alivcLivePushError);
        }
        this.mLiveEventReporter = new LiveEventReporter(this.mContext, this, this.mAlivcLivePushConfig);
        LivePusherJNI livePusherJNI = new LivePusherJNI(this.mContext, alivcLivePushConfig, new LivePusherJNI.LivePusherListener() { // from class: com.alivc.live.pusher.AlivcLivePusher.4
            static final /* synthetic */ boolean $assertionsDisabled = false;

            @Override // com.alivc.live.pusher.LivePusherJNI.LivePusherListener
            public void onNotify(final int i, String str, final int i2, final int i3, int i4, int i5, int i6, long j, String str2, String str3) {
                LiveEventReporter liveEventReporter;
                AlivcLivePushConstants.Topic topic;
                String str4;
                Map<String, String> argsStr;
                ThreadPoolExecutor threadPoolExecutor;
                Runnable runnable;
                LiveEventReporter liveEventReporter2;
                AlivcLivePushConstants.Topic topic2;
                String str5;
                Map<String, String> argsStr2;
                AlivcLivePusher alivcLivePusher;
                AlivcLivePushStats alivcLivePushStats2;
                String str6;
                LiveEventReporter liveEventReporter3;
                AlivcLivePushConstants.Topic topic3;
                String str7;
                Map<String, String> argsStr3;
                String str8;
                if (i == AlivcLivePushError.ALIVC_PUSHER_ERROR_SDK_LIVE_PUSH_NETWORK_TOO_POOR.getCode()) {
                    LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Network Too Poor");
                    if (AlivcLivePusher.this.mPushNetworkListener != null) {
                        AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AlivcLivePusher.this.mPushNetworkListener.onNetworkPoor(AlivcLivePusher.this);
                            }
                        });
                    }
                    liveEventReporter2 = AlivcLivePusher.this.mLiveEventReporter;
                    topic2 = PusherNetworkPoorEvent.kTopicType;
                    str5 = PusherNetworkPoorEvent.kTopicValue;
                    argsStr2 = PusherNetworkPoorEvent.getArgsStr(null);
                } else {
                    if (i != LivePushNotification.ALIVC_PUSHER_EVENT_PUSH_NETWORK_RECOVERY.getCode()) {
                        if (i == LivePushNotification.ALIVC_PUSHER_EVENT_PUSH_RECONNECT_START.getCode()) {
                            LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Reconnect Start");
                            if (!AlivcLivePusher.this.isReconnect) {
                                AlivcLivePusher.this.isReconnect = true;
                                if (AlivcLivePusher.this.mPushNetworkListener != null) {
                                    AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.3
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            AlivcLivePusher.this.mPushNetworkListener.onReconnectStart(AlivcLivePusher.this);
                                        }
                                    });
                                }
                            }
                            PusherReconnectStartEvent.Args args = new PusherReconnectStartEvent.Args();
                            liveEventReporter3 = AlivcLivePusher.this.mLiveEventReporter;
                            topic3 = PusherReconnectStartEvent.kTopicType;
                            str7 = PusherReconnectStartEvent.kTopicValue;
                            argsStr3 = PusherReconnectStartEvent.getArgsStr(args);
                        } else if (i == LivePushNotification.ALIVC_PUSHER_EVENT_PUSH_RECONNECT_SUCCESS.getCode()) {
                            LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Reconnect Success");
                            if (AlivcLivePusher.this.mHandler != null) {
                                AlivcLivePusher.this.mHandler.removeMessages(18);
                                AlivcLivePusher.this.mHandler.sendEmptyMessageDelayed(18, 500L);
                            }
                            if (AlivcLivePusher.this.mPushStatus != AlivcLivePushStats.PAUSED) {
                                AlivcLivePusher.this.mPushStatus = AlivcLivePushStats.PUSHED;
                            }
                            liveEventReporter2 = AlivcLivePusher.this.mLiveEventReporter;
                            topic2 = PusherReconnectSuccessEvent.kTopicType;
                            str5 = PusherReconnectSuccessEvent.kTopicValue;
                            argsStr2 = PusherReconnectSuccessEvent.getArgsStr(null);
                        } else {
                            if (i != LivePushNotification.ALIVC_PUSHER_EVENT_PUSH_CONNECTION_LOST.getCode()) {
                                AlivcLivePushError alivcLivePushError2 = AlivcLivePushError.ALIVC_PUSHER_ERROR_SDK_PUSH_RECONNECT_FAIL;
                                if (i == alivcLivePushError2.getCode()) {
                                    LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Reconnect Fail");
                                    AlivcLivePusher.this.isReconnect = false;
                                    if (AlivcLivePusher.this.mHandler != null) {
                                        AlivcLivePusher.this.mHandler.removeMessages(18);
                                    }
                                    if (AlivcLivePusher.this.mPushNetworkListener != null) {
                                        AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.5
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                AlivcLivePusher.this.mPushNetworkListener.onReconnectFail(AlivcLivePusher.this);
                                            }
                                        });
                                    }
                                    AlivcLivePusher.this.mPushStatus = AlivcLivePushStats.ERROR;
                                    AlivcLivePusher.this.mLastError = alivcLivePushError2;
                                    PusherReconnectFailedEvent.Args args2 = new PusherReconnectFailedEvent.Args();
                                    args2.errCode = i;
                                    args2.errMsg = str;
                                    liveEventReporter = AlivcLivePusher.this.mLiveEventReporter;
                                    topic = PusherReconnectFailedEvent.kTopicType;
                                    str4 = PusherReconnectFailedEvent.kTopicValue;
                                    argsStr = PusherReconnectFailedEvent.getArgsStr(args2);
                                } else if (i == AlivcLivePushError.ALIVC_PUSHER_ERROR_SDK_PUSH_SEND_DATA_TIMEOUT.getCode()) {
                                    LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Send Data Timeout");
                                    if (AlivcLivePusher.this.mPushNetworkListener != null) {
                                        AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.6
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                AlivcLivePusher.this.mPushNetworkListener.onSendDataTimeout(AlivcLivePusher.this);
                                            }
                                        });
                                    }
                                    liveEventReporter2 = AlivcLivePusher.this.mLiveEventReporter;
                                    topic2 = PusherSendDataTimeoutEvent.kTopicType;
                                    str5 = PusherSendDataTimeoutEvent.kTopicValue;
                                    argsStr2 = PusherSendDataTimeoutEvent.getArgsStr(null);
                                } else if (i == AlivcLivePushError.ALIVC_PUSHER_ERROR_SDK_PUSH_CONNECT.getCode() || i == AlivcLivePushError.ALIVC_LIVE_ERROR_SYSTEM_RTMP_OOM.getCode() || i == AlivcLivePushError.ALIVC_PUSHER_ERROR_SDK_PUSH_SETUPURL.getCode() || i == AlivcLivePushError.ALIVC_PUSHER_ERROR_SDK_PUSH_CONNECT_STREAM.getCode() || i == AlivcLivePushError.ALIVC_PUSHER_ERROR_SDK_PUSH_START_PUSH_TIMEOUT.getCode()) {
                                    LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Push Connect Fail");
                                    if (AlivcLivePusher.this.mPushNetworkListener != null) {
                                        AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.7
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                AlivcLivePusher.this.mPushNetworkListener.onConnectFail(AlivcLivePusher.this);
                                            }
                                        });
                                    }
                                    AlivcLivePusher.this.mPushStatus = AlivcLivePushStats.ERROR;
                                    AlivcLivePusher.this.mLastError = AlivcLivePushError.getErrorByCode(i);
                                    PusherStartPushFailedEvent.Args args3 = new PusherStartPushFailedEvent.Args();
                                    args3.errCode = i;
                                    args3.errMsg = str;
                                    liveEventReporter = AlivcLivePusher.this.mLiveEventReporter;
                                    topic = PusherStartPushFailedEvent.kTopicType;
                                    str4 = PusherStartPushFailedEvent.kTopicValue;
                                    argsStr = PusherStartPushFailedEvent.getArgsStr(args3);
                                } else {
                                    if (i == LivePushNotification.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_INIT_SUCCESS.getCode()) {
                                        return;
                                    }
                                    if (i == LivePushNotification.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PREVIEW_STARTED.getCode()) {
                                        LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Preview Started");
                                        if (AlivcLivePusher.this.mPushInfoListener != null) {
                                            AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.8
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    AlivcLivePusher.this.mPushInfoListener.onPreviewStarted(AlivcLivePusher.this);
                                                }
                                            });
                                        }
                                        AlivcLivePusher.this.mPushStatus = AlivcLivePushStats.PREVIEWED;
                                        AlivcLivePusher.this.addWaterMark();
                                        return;
                                    }
                                    if (i == LivePushNotification.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PREVIEW_STOPED.getCode()) {
                                        LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Preview Stoped");
                                        if (AlivcLivePusher.this.mPushInfoListener != null) {
                                            AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.9
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    AlivcLivePusher.this.mPushInfoListener.onPreviewStoped(AlivcLivePusher.this);
                                                }
                                            });
                                        }
                                        AlivcLivePusher.this.mPushStatus = AlivcLivePushStats.INIT;
                                        return;
                                    }
                                    if (i == LivePushNotification.ALIVC_PUSHER_EVENT_PUSH_STARTED.getCode()) {
                                        LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Push Started");
                                        AlivcLivePusher.this.mPushStatus = AlivcLivePushStats.PUSHED;
                                        if (AlivcLivePusher.this.mPushInfoListener != null) {
                                            AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.10
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    AlivcLivePusher.this.mPushInfoListener.onPushStarted(AlivcLivePusher.this);
                                                }
                                            });
                                        }
                                        PusherStartPushSuccessEvent.Args args4 = new PusherStartPushSuccessEvent.Args();
                                        args4.url = AlivcLivePusher.mPushUrl;
                                        liveEventReporter3 = AlivcLivePusher.this.mLiveEventReporter;
                                        topic3 = PusherStartPushSuccessEvent.kTopicType;
                                        str7 = PusherStartPushSuccessEvent.kTopicValue;
                                        argsStr3 = PusherStartPushSuccessEvent.getArgsStr(args4);
                                    } else if (i == LivePushNotification.ALIVC_PUSHER_EVENT_PUSH_STOPED.getCode()) {
                                        LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Push Stoped");
                                        if (AlivcLivePusher.this.mPushInfoListener != null) {
                                            AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.11
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    AlivcLivePusher.this.mPushInfoListener.onPushStoped(AlivcLivePusher.this);
                                                }
                                            });
                                        }
                                        PusherStopPushSuccessEvent.Args args5 = new PusherStopPushSuccessEvent.Args();
                                        args5.url = AlivcLivePusher.mPushUrl;
                                        liveEventReporter3 = AlivcLivePusher.this.mLiveEventReporter;
                                        topic3 = PusherStopPushSuccessEvent.kTopicType;
                                        str7 = PusherStopPushSuccessEvent.kTopicValue;
                                        argsStr3 = PusherStopPushSuccessEvent.getArgsStr(args5);
                                    } else if (i == LivePushNotification.ALIVC_PUSHER_EVENT_PUSH_CRASH.getCode()) {
                                        LogUtil.d("AlivcLivePusher", "found SDK crashed!");
                                        liveEventReporter2 = AlivcLivePusher.this.mLiveEventReporter;
                                        topic2 = PusherSDKCrashEvent.kTopicType;
                                        str5 = PusherSDKCrashEvent.kTopicValue;
                                        argsStr2 = PusherSDKCrashEvent.getArgsStr();
                                    } else if (i == LivePushNotification.ALIVC_PUSHER_EVENT_GENERAL_MONITOR.getCode()) {
                                        AlivcLivePushConstants.Topic topic4 = AlivcLivePushConstants.Topic.event;
                                        int i7 = (int) j;
                                        if (i7 == 0) {
                                            topic4 = AlivcLivePushConstants.Topic.action;
                                        } else if (i7 != 1) {
                                            if (i7 == 2) {
                                                topic4 = AlivcLivePushConstants.Topic.error;
                                            } else if (i7 == 3) {
                                                topic4 = AlivcLivePushConstants.Topic.biz;
                                            }
                                        }
                                        topic = topic4;
                                        argsStr = new HashMap<>();
                                        try {
                                            JSONObject jSONObject = new JSONObject(str3);
                                            Iterator<String> itKeys = jSONObject.keys();
                                            while (itKeys.hasNext()) {
                                                String string = itKeys.next().toString();
                                                argsStr.put(string, jSONObject.get(string).toString());
                                            }
                                        } catch (JSONException unused) {
                                            str6 = "Invalid json object: " + str3;
                                            LogUtil.e("AlivcLivePusher", str6);
                                        } catch (Exception e2) {
                                            str6 = "Unknown exception: " + e2.getMessage();
                                            LogUtil.e("AlivcLivePusher", str6);
                                        }
                                        liveEventReporter = AlivcLivePusher.this.mLiveEventReporter;
                                        str4 = str2;
                                    } else {
                                        if (i == LivePushNotification.ALIVC_PUSHER_EVENT_PUSH_DELAY_INFO.getCode()) {
                                            PusherDelayInfoEvent.Args args6 = new PusherDelayInfoEvent.Args();
                                            args6.totalDelay = i2;
                                            args6.captureDelay = i3;
                                            args6.encoderDelay = i4;
                                            args6.sendDelay = i5;
                                            LogUtil.d("AlivcLivePusher", "AlivcLivePusher push delay");
                                            AlivcLivePusher.this.mLiveEventReporter.sendEvent(PusherDelayInfoEvent.kTopicType, PusherDelayInfoEvent.kTopicValue, PusherDelayInfoEvent.getArgsStr(args6));
                                            JSONObject jSONObject2 = new JSONObject();
                                            try {
                                                jSONObject2.put("gdelay", i2);
                                                AlivcLivePusher.this.sendMessageInternal(jSONObject2.toString(), 10, 0, false, true);
                                                return;
                                            } catch (Exception e3) {
                                                e3.printStackTrace();
                                                return;
                                            }
                                        }
                                        if (i == LivePushNotification.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PUSH_PAUSED.getCode()) {
                                            LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Push Paused");
                                            if (AlivcLivePusher.this.mPushInfoListener != null) {
                                                AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.12
                                                    @Override // java.lang.Runnable
                                                    public void run() {
                                                        AlivcLivePusher.this.mPushInfoListener.onPushPauesed(AlivcLivePusher.this);
                                                    }
                                                });
                                            }
                                            liveEventReporter2 = AlivcLivePusher.this.mLiveEventReporter;
                                            topic2 = PusherOnPauseEvent.kTopicType;
                                            str5 = PusherOnPauseEvent.kTopicValue;
                                            argsStr2 = PusherOnPauseEvent.getArgsStr(null);
                                        } else {
                                            if (i != LivePushNotification.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PUSH_RESUMED.getCode()) {
                                                if (i == AlivcLivePushError.ALIVC_FRAMEWORK_RENDER_FIRST_FRAME_PREVIEWED.getCode()) {
                                                    LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Preview First Frame");
                                                    if (AlivcLivePusher.this.mPushInfoListener == null) {
                                                        return;
                                                    }
                                                    threadPoolExecutor = AlivcLivePusher.this.mThreadPoolExecutor;
                                                    runnable = new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.14
                                                        @Override // java.lang.Runnable
                                                        public void run() {
                                                            AlivcLivePusher.this.mPushInfoListener.onFirstFramePreviewed(AlivcLivePusher.this);
                                                        }
                                                    };
                                                } else if (i == LivePushNotification.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PUSH_RESTARTED.getCode()) {
                                                    LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Push Restarted");
                                                    AlivcLivePusher.this.mPushStatus = AlivcLivePushStats.PUSHED;
                                                    if (AlivcLivePusher.this.mPushInfoListener != null) {
                                                        AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.15
                                                            @Override // java.lang.Runnable
                                                            public void run() {
                                                                AlivcLivePusher.this.mPushInfoListener.onPushRestarted(AlivcLivePusher.this);
                                                            }
                                                        });
                                                    }
                                                    liveEventReporter2 = AlivcLivePusher.this.mLiveEventReporter;
                                                    topic2 = PusherOnRestartEvent.kTopicType;
                                                    str5 = PusherOnRestartEvent.kTopicValue;
                                                    argsStr2 = PusherOnRestartEvent.getArgsStr(null);
                                                } else if (i == LivePushNotification.ALIVC_PUSHER_EVENT_PUSH_DROP_FRAME.getCode()) {
                                                    LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Drop Frame");
                                                    PusherDropFrameEvent.PusherDropFrameArgs pusherDropFrameArgs = new PusherDropFrameEvent.PusherDropFrameArgs();
                                                    pusherDropFrameArgs.vpiubbd = i2;
                                                    pusherDropFrameArgs.vpiubad = i3;
                                                    pusherDropFrameArgs.apiubbd = i4;
                                                    pusherDropFrameArgs.apiubad = i5;
                                                    AlivcLivePusher.this.mLiveEventReporter.sendEvent(PusherDropFrameEvent.kTopicType, PusherDropFrameEvent.kTopicValue, PusherDropFrameEvent.getArgsStr(pusherDropFrameArgs));
                                                    if (AlivcLivePusher.this.mPushInfoListener == null) {
                                                        return;
                                                    }
                                                    threadPoolExecutor = AlivcLivePusher.this.mThreadPoolExecutor;
                                                    runnable = new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.16
                                                        @Override // java.lang.Runnable
                                                        public void run() {
                                                            AlivcLivePusher.this.mPushInfoListener.onDropFrame(AlivcLivePusher.this, i2, i3);
                                                            if (AlivcLivePusher.this.mPushNetworkListener != null) {
                                                                AlivcLivePusher.this.mPushNetworkListener.onPacketsLost(AlivcLivePusher.this);
                                                            }
                                                        }
                                                    };
                                                } else if (i == LivePushNotification.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_ADJUST_BITRATE.getCode()) {
                                                    LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Adjust Bitrate");
                                                    PusherAdjustBitrateEvent.Args args7 = new PusherAdjustBitrateEvent.Args();
                                                    args7.oeb = i2 / 1000;
                                                    args7.neb = i3 / 1000;
                                                    Map performanceMap = AlivcLivePusher.this.getPerformanceMap();
                                                    if (performanceMap != null) {
                                                        args7.ceb = ParameterUtil.getInteger(performanceMap, "mVideoEncodeBitrate") + ParameterUtil.getInteger(performanceMap, "mAudioEncodeBitrate");
                                                        args7.cub = ParameterUtil.getInteger(performanceMap, "mAudioUploadBitrate") + ParameterUtil.getInteger(performanceMap, "mVideoUploadBitrate");
                                                    }
                                                    AlivcLivePusher.this.mLiveEventReporter.sendEvent(PusherAdjustBitrateEvent.kTopicType, PusherAdjustBitrateEvent.kTopicValue, PusherAdjustBitrateEvent.getArgsStr(args7));
                                                    if (AlivcLivePusher.this.mPushInfoListener == null) {
                                                        return;
                                                    }
                                                    threadPoolExecutor = AlivcLivePusher.this.mThreadPoolExecutor;
                                                    runnable = new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.17
                                                        @Override // java.lang.Runnable
                                                        public void run() {
                                                            AlivcLivePusher.this.mPushInfoListener.onAdjustBitRate(AlivcLivePusher.this, i2 / 1000, i3 / 1000);
                                                        }
                                                    };
                                                } else if (i == LivePushNotification.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_CHANGE_FPS.getCode()) {
                                                    LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Change FPS");
                                                    PusherAdjustFpsEvent.Args args8 = new PusherAdjustFpsEvent.Args();
                                                    args8.oldFps = i2;
                                                    args8.newFps = i3;
                                                    AlivcLivePusher.this.mLiveEventReporter.sendEvent(PusherAdjustFpsEvent.kTopicType, PusherAdjustFpsEvent.kTopicValue, PusherAdjustFpsEvent.getArgsStr(args8));
                                                    if (AlivcLivePusher.this.mPushInfoListener == null) {
                                                        return;
                                                    }
                                                    threadPoolExecutor = AlivcLivePusher.this.mThreadPoolExecutor;
                                                    runnable = new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.18
                                                        @Override // java.lang.Runnable
                                                        public void run() {
                                                            AlivcLivePusher.this.mPushInfoListener.onAdjustFps(AlivcLivePusher.this, i2, i3);
                                                        }
                                                    };
                                                } else {
                                                    if (i == LivePushNotification.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_CHANGE_RESOLUTION.getCode()) {
                                                        return;
                                                    }
                                                    if (i == LivePushNotification.ALIVC_PUSHER_EVENT_PUSH_SENDED_FIRST_AV.getCode()) {
                                                        PusherFirstFrameSentEvent.Args args9 = new PusherFirstFrameSentEvent.Args();
                                                        args9.vutMs = i3;
                                                        args9.autMs = i2;
                                                        args9.resolution = AlivcLivePusher.this.mAlivcLivePushConfig.getResolution().toString().substring(11);
                                                        args9.st = AlivcLivePusher.this.mAlivcLivePushConfig.getAudioChannels() == 1 ? "single" : "dual";
                                                        args9.ao = AlivcLivePusher.this.mAlivcLivePushConfig.isAudioOnly();
                                                        args9.vo = AlivcLivePusher.this.mAlivcLivePushConfig.isVideoOnly();
                                                        args9.he = AlivcLivePusher.this.mAlivcLivePushConfig.getVideoEncodeMode().equals(AlivcEncodeModeEnum.Encode_MODE_HARD);
                                                        args9.wc = AlivcLivePusher.this.mAlivcLivePushConfig.getWaterMarkInfos().size();
                                                        args9.pum = AlivcLivePusher.this.mAlivcLivePushConfig.isPushMirror();
                                                        args9.fps = AlivcLivePusher.this.mAlivcLivePushConfig.getFps();
                                                        args9.ivb = AlivcLivePusher.this.mAlivcLivePushConfig.getInitialVideoBitrate();
                                                        args9.mavb = AlivcLivePusher.this.mAlivcLivePushConfig.getTargetVideoBitrate();
                                                        args9.mivb = AlivcLivePusher.this.mAlivcLivePushConfig.getMinVideoBitrate();
                                                        args9.asr = AlivcLivePusher.this.mAlivcLivePushConfig.getAudioSamepleRate().getAudioSampleRate();
                                                        args9.po = AlivcLivePusher.this.mAlivcLivePushConfig.getPreviewOrientation();
                                                        args9.ct = AlivcLivePusher.this.mAlivcLivePushConfig.getCameraType();
                                                        args9.flash = AlivcLivePusher.this.mAlivcLivePushConfig.isFlash();
                                                        args9.crmc = AlivcLivePusher.this.mAlivcLivePushConfig.getConnectRetryCount();
                                                        args9.cri = AlivcLivePusher.this.mAlivcLivePushConfig.getConnectRetryInterval();
                                                        args9.prm = AlivcLivePusher.this.mAlivcLivePushConfig.isPreviewMirror();
                                                        args9.gop = AlivcLivePusher.this.mAlivcLivePushConfig.getVideoEncodeGop();
                                                        args9.utm = (AlivcLivePusher.this.mAlivcLivePushConfig.getConnectRetryCount() * AlivcLivePusher.this.mAlivcLivePushConfig.getConnectRetryInterval()) / 1000;
                                                        AlivcLivePusher.this.mLiveEventReporter.sendEvent(PusherFirstFrameSentEvent.kTopicType, PusherFirstFrameSentEvent.kTopicValue, PusherFirstFrameSentEvent.getArgsStr(args9));
                                                        if (AlivcLivePusher.this.mPushInfoListener == null) {
                                                            return;
                                                        }
                                                        threadPoolExecutor = AlivcLivePusher.this.mThreadPoolExecutor;
                                                        runnable = new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.19
                                                            @Override // java.lang.Runnable
                                                            public void run() {
                                                                AlivcLivePusher.this.mPushInfoListener.onFirstAVFramePushed(AlivcLivePusher.this);
                                                            }
                                                        };
                                                    } else {
                                                        if (i == LivePushNotification.ALIVC_PUSHER_EVENT_CAPTURE_OPEN_CAMERA_SUCCESS.getCode() || i == LivePushNotification.ALIVC_PUSHER_EVENT_CAPTURE_OPEN_MIC_SUCCESS.getCode() || i == LivePushNotification.ALIVC_PUSHER_EVENT_CAPTURE_CLOSE_CAMERA_SUCCESS.getCode() || i == LivePushNotification.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_OPEN_VIDEO_ENCODER_SUCCESS.getCode() || i == LivePushNotification.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_CAPTURE_VIDEO_SAMPLES_OVERFLOW.getCode()) {
                                                            return;
                                                        }
                                                        if (i != LivePushNotification.ALIVC_PUSHER_EVENT_PUSH_SENDED_SEI.getCode()) {
                                                            if (i == AlivcLivePushError.ALIVC_PUSHER_ERROR_BGM_OPEN_FAILED.getCode()) {
                                                                AlivcLivePusher.this.mPlayStats = AlivcLivePlayStats.IDLE;
                                                                if (AlivcLivePusher.this.mPushBGMListener != null) {
                                                                    AlivcLivePusher.this.mPushBGMListener.onOpenFailed();
                                                                }
                                                                if (AlivcLivePusher.mNativeAlivcLivePusher != null) {
                                                                    AlivcLivePusher.mNativeAlivcLivePusher.stopBGM();
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            if (i == AlivcLivePushError.ALIVC_PUSHER_ERROR_BGM_TIMEOUT.getCode()) {
                                                                AlivcLivePusher.this.mPlayStats = AlivcLivePlayStats.IDLE;
                                                                if (AlivcLivePusher.this.mPushBGMListener != null) {
                                                                    AlivcLivePusher.this.mPushBGMListener.onDownloadTimeout();
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            if (i == LivePushNotification.ALIVC_PUSHER_EVENT_BGM_OPEN_SUCCESS.getCode()) {
                                                                AlivcLivePusher.this.mPlayStats = AlivcLivePlayStats.STARTED;
                                                                if (AlivcLivePusher.this.mPushBGMListener != null) {
                                                                    AlivcLivePusher.this.mPushBGMListener.onStarted();
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            if (i == LivePushNotification.ALIVC_PUSHER_EVENT_BGM_STOP_SUCCESS.getCode()) {
                                                                AlivcLivePusher.this.mPlayStats = AlivcLivePlayStats.STOPED;
                                                                if (AlivcLivePusher.this.mPushBGMListener != null) {
                                                                    AlivcLivePusher.this.mPushBGMListener.onStoped();
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            if (i == LivePushNotification.ALIVC_PUSHER_EVENT_BGM_PAUSE_SUCCESS.getCode()) {
                                                                AlivcLivePusher.this.mPlayStats = AlivcLivePlayStats.PAUSED;
                                                                if (AlivcLivePusher.this.mPushBGMListener != null) {
                                                                    AlivcLivePusher.this.mPushBGMListener.onPaused();
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            if (i == LivePushNotification.ALIVC_PUSHER_EVENT_BGM_RESUME_SUCCESS.getCode()) {
                                                                AlivcLivePusher.this.mPlayStats = AlivcLivePlayStats.STARTED;
                                                                if (AlivcLivePusher.this.mPushBGMListener != null) {
                                                                    AlivcLivePusher.this.mPushBGMListener.onResumed();
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            if (i == LivePushNotification.ALIVC_PUSHER_EVENT_BGM_COMPLETED.getCode()) {
                                                                if (AlivcLivePusher.this.mPushBGMListener != null) {
                                                                    AlivcLivePusher.this.mPushBGMListener.onCompleted();
                                                                }
                                                                AlivcLivePusher.this.mPlayStats = AlivcLivePlayStats.IDLE;
                                                                return;
                                                            }
                                                            if (i == LivePushNotification.ALIVC_PUSHER_EVENT_BGM_PROGRESS.getCode()) {
                                                                if (AlivcLivePusher.this.mPushBGMListener != null) {
                                                                    AlivcLivePusher.this.mPushBGMListener.onProgress(i2, i3);
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            if (i == LivePushNotification.ALIVC_PUSHER_EVENT_CAPTURE_OPEN_SCREENCAPTURE_SUCCESS.getCode() || i == LivePushNotification.ALIVC_PUSHER_EVENT_CAPTURE_CLOSE_SCREENCAPTURE_SUCCESS.getCode()) {
                                                                return;
                                                            }
                                                            if (i == LivePushNotification.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_GL_CONTEXT_CREATED.getCode()) {
                                                                if (AlivcLivePusher.this.mRenderContextListener != null) {
                                                                    AlivcLivePusher.this.mRenderContextListener.onSharedContextCreated(j);
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            if (i == LivePushNotification.ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_GL_CONTEXT_DESTROYED.getCode()) {
                                                                if (AlivcLivePusher.this.mRenderContextListener != null) {
                                                                    AlivcLivePusher.this.mRenderContextListener.onSharedContextDestroyed(j);
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            if (i > 805371904 && i < 805437440) {
                                                                LogUtil.d("AlivcLivePusher", "AlivcLivePusher SystemError Callback error: " + i);
                                                                if (AlivcLivePusher.this.mErrorMap.get(Integer.valueOf(i)) != null) {
                                                                    ((AlivcLivePushError) AlivcLivePusher.this.mErrorMap.get(Integer.valueOf(i))).setMsg(str);
                                                                }
                                                                if (AlivcLivePusher.this.mPushErrorListener != null) {
                                                                    AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.21
                                                                        @Override // java.lang.Runnable
                                                                        public void run() {
                                                                            AlivcLivePushErrorListener alivcLivePushErrorListener = AlivcLivePusher.this.mPushErrorListener;
                                                                            AlivcLivePusher alivcLivePusher2 = AlivcLivePusher.this;
                                                                            alivcLivePushErrorListener.onSystemError(alivcLivePusher2, (AlivcLivePushError) alivcLivePusher2.mErrorMap.get(Integer.valueOf(i)));
                                                                        }
                                                                    });
                                                                }
                                                                PusherSystemErrorEvent.Args args10 = new PusherSystemErrorEvent.Args();
                                                                Map performanceMap2 = AlivcLivePusher.this.getPerformanceMap();
                                                                if (performanceMap2 != null) {
                                                                    args10.totalUploadSize = ParameterUtil.getLong(performanceMap2, "mTotalSizeOfUploadedPackets");
                                                                    args10.totalTime = ParameterUtil.getLong(performanceMap2, "mTotalTimeOfPublishing");
                                                                    args10.error_code = i;
                                                                    if (AlivcLivePusher.this.mErrorMap.get(Integer.valueOf(i)) != null) {
                                                                        args10.error_msg = str;
                                                                    }
                                                                    AlivcLivePusher.this.mLiveEventReporter.sendEvent(PusherSystemErrorEvent.kTopicType, PusherSystemErrorEvent.kTopicValue, PusherSystemErrorEvent.getArgsStr(args10));
                                                                }
                                                                AlivcLivePusher.this.mPushStatus = AlivcLivePushStats.ERROR;
                                                                AlivcLivePusher.this.mLastError = AlivcLivePushError.getErrorByCode(i);
                                                                return;
                                                            }
                                                            LogUtil.d("AlivcLivePusher", "AlivcLivePusher SDKError Callback error: 0x" + Integer.toHexString(i));
                                                            if (AlivcLivePusher.this.mErrorMap.get(Integer.valueOf(i)) != null) {
                                                                ((AlivcLivePushError) AlivcLivePusher.this.mErrorMap.get(Integer.valueOf(i))).setMsg(str);
                                                            }
                                                            if (AlivcLivePusher.this.mPushErrorListener != null) {
                                                                AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.22
                                                                    @Override // java.lang.Runnable
                                                                    public void run() {
                                                                        AlivcLivePushErrorListener alivcLivePushErrorListener = AlivcLivePusher.this.mPushErrorListener;
                                                                        AlivcLivePusher alivcLivePusher2 = AlivcLivePusher.this;
                                                                        alivcLivePushErrorListener.onSDKError(alivcLivePusher2, (AlivcLivePushError) alivcLivePusher2.mErrorMap.get(Integer.valueOf(i)));
                                                                    }
                                                                });
                                                            }
                                                            PusherSdkErrorEvent.Args args11 = new PusherSdkErrorEvent.Args();
                                                            Map performanceMap3 = AlivcLivePusher.this.getPerformanceMap();
                                                            if (performanceMap3 != null) {
                                                                args11.totalUploadSize = ParameterUtil.getLong(performanceMap3, "mTotalSizeOfUploadedPackets");
                                                                args11.totalTime = ParameterUtil.getLong(performanceMap3, "mTotalTimeOfPublishing");
                                                                args11.error_code = i;
                                                                if (AlivcLivePusher.this.mErrorMap.get(Integer.valueOf(i)) != null) {
                                                                    args11.error_msg = str;
                                                                }
                                                                AlivcLivePusher.this.mLiveEventReporter.sendEvent(PusherSdkErrorEvent.kTopicType, PusherSdkErrorEvent.kTopicValue, PusherSdkErrorEvent.getArgsStr(args11));
                                                            }
                                                            AlivcLivePusher.this.mPushStatus = AlivcLivePushStats.ERROR;
                                                            AlivcLivePusher.this.mLastError = AlivcLivePushError.getErrorByCode(i);
                                                            LogUtil.d("AlivcLivePusher", "error is " + i + " msg is " + i);
                                                            return;
                                                        }
                                                        if (AlivcLivePusher.this.mPushNetworkListener == null) {
                                                            return;
                                                        }
                                                        threadPoolExecutor = AlivcLivePusher.this.mThreadPoolExecutor;
                                                        runnable = new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.20
                                                            @Override // java.lang.Runnable
                                                            public void run() {
                                                                AlivcLivePusher.this.mPushNetworkListener.onSendMessage(AlivcLivePusher.this);
                                                            }
                                                        };
                                                    }
                                                }
                                                threadPoolExecutor.execute(runnable);
                                                return;
                                            }
                                            LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Push Resumed");
                                            if (AlivcLivePusher.mNativeAlivcLivePusher.isPushing()) {
                                                alivcLivePusher = AlivcLivePusher.this;
                                                alivcLivePushStats2 = AlivcLivePushStats.PUSHED;
                                            } else {
                                                alivcLivePusher = AlivcLivePusher.this;
                                                alivcLivePushStats2 = AlivcLivePushStats.PREVIEWED;
                                            }
                                            alivcLivePusher.mPushStatus = alivcLivePushStats2;
                                            if (AlivcLivePusher.this.mPushInfoListener != null) {
                                                AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.13
                                                    @Override // java.lang.Runnable
                                                    public void run() {
                                                        AlivcLivePusher.this.mPushInfoListener.onPushResumed(AlivcLivePusher.this);
                                                    }
                                                });
                                            }
                                            liveEventReporter2 = AlivcLivePusher.this.mLiveEventReporter;
                                            topic2 = PusherOnResumeEvent.kTopicType;
                                            str5 = PusherOnResumeEvent.kTopicValue;
                                            argsStr2 = PusherOnResumeEvent.getArgsStr(null);
                                        }
                                    }
                                }
                                liveEventReporter.sendEvent(topic, str4, argsStr);
                                return;
                            }
                            LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Connection Lost");
                            if (AlivcLivePusher.this.mPushNetworkListener != null) {
                                AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.4
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        AlivcLivePusher.this.mPushNetworkListener.onConnectionLost(AlivcLivePusher.this);
                                    }
                                });
                            }
                            PusherConnectionLostEvent.Args args12 = new PusherConnectionLostEvent.Args();
                            if (i2 != 0) {
                                str8 = i2 == 1 ? "artc_" : "rtmp_";
                                args12.reason += String.valueOf(i3);
                                liveEventReporter3 = AlivcLivePusher.this.mLiveEventReporter;
                                topic3 = PusherConnectionLostEvent.kTopicType;
                                str7 = PusherConnectionLostEvent.kTopicValue;
                                argsStr3 = PusherConnectionLostEvent.getArgsStr(args12);
                            }
                            args12.reason = str8;
                            args12.reason += String.valueOf(i3);
                            liveEventReporter3 = AlivcLivePusher.this.mLiveEventReporter;
                            topic3 = PusherConnectionLostEvent.kTopicType;
                            str7 = PusherConnectionLostEvent.kTopicValue;
                            argsStr3 = PusherConnectionLostEvent.getArgsStr(args12);
                        }
                        liveEventReporter3.sendEvent(topic3, str7, argsStr3);
                        return;
                    }
                    LogUtil.d("AlivcLivePusher", "AlivcLivePusher Callback Network Recovery");
                    if (AlivcLivePusher.this.mPushNetworkListener != null) {
                        AlivcLivePusher.this.mThreadPoolExecutor.execute(new Runnable() { // from class: com.alivc.live.pusher.AlivcLivePusher.4.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AlivcLivePusher.this.mPushNetworkListener.onNetworkRecovery(AlivcLivePusher.this);
                            }
                        });
                    }
                    liveEventReporter2 = AlivcLivePusher.this.mLiveEventReporter;
                    topic2 = PusherNetworkRecoveryEvent.kTopicType;
                    str5 = PusherNetworkRecoveryEvent.kTopicValue;
                    argsStr2 = PusherNetworkRecoveryEvent.getArgsStr(null);
                }
                liveEventReporter2.sendEvent(topic2, str5, argsStr2);
            }
        });
        mNativeAlivcLivePusher = livePusherJNI;
        livePusherJNI.init();
        BGMPlayerJNI.setContext(this.mContext);
        setLogLevel(this.mLogLevel);
        this.mPushStatus = AlivcLivePushStats.INIT;
    }

    public boolean inputMixAudioData(int i, byte[] bArr, int i2, long j) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            return livePusherJNI.inputMixAudioData(i, bArr, i2, j);
        }
        return false;
    }

    public boolean inputMixAudioPtr(int i, long j, int i2, long j2) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            return livePusherJNI.inputMixAudioPtr(i, j, i2, j2);
        }
        return false;
    }

    public void inputMixTexture(int i, int i2, int i3, int i4, long j, int i5) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.inputMixTexture(i, i2, i3, i4, j, i5);
        }
    }

    public void inputMixVideoData(int i, byte[] bArr, int i2, int i3, int i4, int i5, long j, int i6) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.inputMixVideoData(i, bArr, i2, i3, i4, i5, j, i6);
        }
    }

    public void inputMixVideoPtr(int i, long j, int i2, int i3, int i4, int i5, long j2, int i6) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.inputMixVideoPtr(i, j, i2, i3, i4, i5, j2, i6);
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void inputStreamAudioData(byte[] bArr, int i, int i2, int i3, long j) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.inputStreamAudioData(bArr, i, i2, i3, j);
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void inputStreamAudioPtr(long j, int i, int i2, int i3, long j2) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.inputStreamAudioPtr(j, i, i2, i3, j2);
        }
    }

    public void inputStreamTexture(int i, int i2, int i3, int i4, long j, int i5, long j2) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.inputStreamTexture(i, i2, i3, i4, j, i5, j2);
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void inputStreamVideoData(byte[] bArr, int i, int i2, int i3, int i4, long j, int i5) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.inputStreamVideoData(bArr, i, i2, i3, i4, j, i5);
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void inputStreamVideoPtr(long j, int i, int i2, int i3, int i4, long j2, int i5) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.inputStreamVideoPtr(j, i, i2, i3, i4, j2, i5);
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public boolean isCameraSupportAutoFocus() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->isCameraSupportAutoFocus");
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats == AlivcLivePushStats.PREVIEWED || alivcLivePushStats == AlivcLivePushStats.PUSHED) {
            return mNativeAlivcLivePusher.isCameraSupportAutoFocus();
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public boolean isCameraSupportFlash() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->isCameraSupportFlash");
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats == AlivcLivePushStats.PREVIEWED || alivcLivePushStats == AlivcLivePushStats.PUSHED) {
            return mNativeAlivcLivePusher.isCameraSupportFlash();
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public boolean isNetworkPushing() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->isNetworkPushing");
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            return livePusherJNI.isNetworkPushing();
        }
        return false;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public boolean isPushing() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->isPushing");
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            return livePusherJNI.isPushing();
        }
        return false;
    }

    public int mixStreamChangePosition(int i, float f2, float f3, float f4, float f5) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            return livePusherJNI.mixStreamChangePosition(i, f2, f3, f4, f5);
        }
        return -1;
    }

    public void mixStreamMirror(int i, boolean z) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.setMixStreamMirror(i, z);
        }
    }

    public int mixStreamRequireMain(int i, boolean z) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            return livePusherJNI.mixStreamRequireMain(i, z);
        }
        return -1;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void pause() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->pause");
        if (this.mAlivcLivePushConfig.isExternMainStream()) {
            return;
        }
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.PUSHED && alivcLivePushStats != AlivcLivePushStats.PAUSED && alivcLivePushStats != AlivcLivePushStats.PREVIEWED) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        this.mPushStatus = AlivcLivePushStats.PAUSED;
        mNativeAlivcLivePusher.pause();
        PusherPauseEvent.mLastPauseTime = System.currentTimeMillis();
        PusherPauseEvent.Args args = new PusherPauseEvent.Args();
        Map<String, String> performanceMap = getPerformanceMap();
        if (performanceMap != null) {
            args.isPauseScreen = false;
            args.totalUploadSize = ParameterUtil.getLong(performanceMap, "mTotalSizeOfUploadedPackets");
            args.totalTime = ParameterUtil.getLong(performanceMap, "mTotalTimeOfPublishing");
            this.mLiveEventReporter.sendEvent(PusherPauseEvent.kTopicType, PusherPauseEvent.kTopicValue, PusherPauseEvent.getArgsStr(args));
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void pauseBGM() {
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Invalid parameter");
        }
        if (this.mPlayStats == AlivcLivePlayStats.STARTED) {
            mNativeAlivcLivePusher.pauseBGM();
            return;
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePlayStats.values()[this.mPlayStats.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void pauseScreenCapture() {
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.PUSHED && alivcLivePushStats != AlivcLivePushStats.PAUSED && alivcLivePushStats != AlivcLivePushStats.PREVIEWED) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        this.mPushStatus = AlivcLivePushStats.PAUSED;
        PusherPauseEvent.mLastPauseTime = System.currentTimeMillis();
        mNativeAlivcLivePusher.pauseScreenCapture();
        PusherPauseEvent.Args args = new PusherPauseEvent.Args();
        Map<String, String> performanceMap = getPerformanceMap();
        if (performanceMap != null) {
            args.isPauseScreen = true;
            args.totalUploadSize = ParameterUtil.getLong(performanceMap, "mTotalSizeOfUploadedPackets");
            args.totalTime = ParameterUtil.getLong(performanceMap, "mTotalTimeOfPublishing");
            this.mLiveEventReporter.sendEvent(PusherPauseEvent.kTopicType, PusherPauseEvent.kTopicValue, PusherPauseEvent.getArgsStr(args));
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void reconnectPushAsync(String str) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->reconnectPushAsync");
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        AlivcLivePushStats alivcLivePushStats2 = AlivcLivePushStats.PUSHED;
        if (alivcLivePushStats != alivcLivePushStats2 && alivcLivePushStats != AlivcLivePushStats.PAUSED && alivcLivePushStats != AlivcLivePushStats.ERROR) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        if ((str == null || "".equals(str)) && isNetworkPushing()) {
            return;
        }
        if (str != null && !"".equals(str)) {
            mPushUrl = str;
            getNetworkTime();
        }
        if (mNativeAlivcLivePusher.reconnect(str, false) != 0) {
            throw new IllegalStateException("reconnect push async error");
        }
        this.isReconnect = false;
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeMessages(18);
        }
        this.mPushStatus = alivcLivePushStats2;
        if (this.mAlivcLivePushConfig.getMediaProjectionPermissionResultData() != null) {
            this.mScreenStatus = ScreenRecordStatus.SCREEN_RECORD_NORMAL;
        }
        PusherReconnectEvent.Args args = new PusherReconnectEvent.Args();
        Map<String, String> performanceMap = getPerformanceMap();
        if (performanceMap != null) {
            args.vutMs = ParameterUtil.getLong(performanceMap, "mVideoDurationFromeCaptureToUpload");
            args.autMs = ParameterUtil.getLong(performanceMap, "mAudioDurationFromeCaptureToUpload");
            this.mLiveEventReporter.sendEvent(PusherReconnectEvent.kTopicType, PusherReconnectEvent.kTopicValue, PusherReconnectEvent.getArgsStr(args));
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void removeDynamicsAddons(int i) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            this.mDynamicAddsonCount--;
            livePusherJNI.removeDynamicsAddons(i);
        }
    }

    public void removeMixAudio(int i) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.removeMixAudio(i);
        }
    }

    public void removeMixVideo(int i) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.removeMixVideo(i);
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void restartPush() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->restartPush");
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        if (this.mPreviewView == null && this.mAlivcLivePushConfig.getMediaProjectionPermissionResultData() == null && !this.mAlivcLivePushConfig.isAudioOnly()) {
            throw new IllegalArgumentException("illegal argument");
        }
        if ((this.mAlivcLivePushConfig.isAudioOnly() || this.mAlivcLivePushConfig.isVideoOnly()) && mPushUrl.startsWith("artc://")) {
            throw new IllegalArgumentException("RTC protocol don't support audio/video only stream");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        AlivcLivePushStats alivcLivePushStats2 = AlivcLivePushStats.PUSHED;
        if (alivcLivePushStats != alivcLivePushStats2 && alivcLivePushStats != AlivcLivePushStats.ERROR) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        this.mDynamicAddsonCount = 0;
        stop5Interval();
        if (mNativeAlivcLivePusher.restartPush(this.mPreviewView.getHolder().getSurface(), true, 1000) != 0) {
            throw new IllegalStateException("restart push error");
        }
        this.mPushStatus = alivcLivePushStats2;
        if (this.mAlivcLivePushConfig.getMediaProjectionPermissionResultData() != null) {
            this.mScreenStatus = ScreenRecordStatus.SCREEN_RECORD_NORMAL;
        }
        mNativeAlivcLivePusher.addPushImage(this.mAlivcLivePushConfig.getPausePushImage() == null ? "" : this.mAlivcLivePushConfig.getPausePushImage(), this.mAlivcLivePushConfig.getNetworkPoorPushImage() != null ? this.mAlivcLivePushConfig.getNetworkPoorPushImage() : "");
        reportStartPushEvent(true, true);
        startScheduleExecutor();
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void restartPushAync() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->restartPushAync");
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        if (this.mPreviewView == null && this.mAlivcLivePushConfig.getMediaProjectionPermissionResultData() == null && !this.mAlivcLivePushConfig.isAudioOnly()) {
            throw new IllegalArgumentException("illegal argument");
        }
        if ((this.mAlivcLivePushConfig.isAudioOnly() || this.mAlivcLivePushConfig.isVideoOnly()) && mPushUrl.startsWith("artc://")) {
            throw new IllegalArgumentException("RTC protocol don't support audio/video only stream");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.PUSHED && alivcLivePushStats != AlivcLivePushStats.ERROR) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        if (mNativeAlivcLivePusher.restartPush(this.mPreviewView.getHolder().getSurface(), false, 1000) != 0) {
            throw new IllegalStateException("restart push aysnc error");
        }
        this.mPushStatus = AlivcLivePushStats.RESTARTING;
        mNativeAlivcLivePusher.addPushImage(this.mAlivcLivePushConfig.getPausePushImage() == null ? "" : this.mAlivcLivePushConfig.getPausePushImage(), this.mAlivcLivePushConfig.getNetworkPoorPushImage() != null ? this.mAlivcLivePushConfig.getNetworkPoorPushImage() : "");
        stop5Interval();
        reportStartPushEvent(true, false);
        startScheduleExecutor();
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void resume() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->resume");
        if (this.mAlivcLivePushConfig.isExternMainStream()) {
            return;
        }
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.PAUSED && alivcLivePushStats != AlivcLivePushStats.ERROR) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        mNativeAlivcLivePusher.resume(true);
        PusherResumeEvent.Args args = new PusherResumeEvent.Args();
        Map<String, String> performanceMap = getPerformanceMap();
        if (performanceMap != null) {
            args.sync = true;
            args.isResumeScreen = false;
            args.totalUploadSize = ParameterUtil.getLong(performanceMap, "mTotalSizeOfUploadedPackets");
            args.totalTime = ParameterUtil.getLong(performanceMap, "mTotalTimeOfPublishing");
            if (PusherPauseEvent.mLastPauseTime == 0) {
                args.cost = 0L;
            } else {
                args.cost = System.currentTimeMillis() - PusherPauseEvent.mLastPauseTime;
            }
            this.mLiveEventReporter.sendEvent(PusherResumeEvent.kTopicType, PusherResumeEvent.kTopicValue, PusherResumeEvent.getArgsStr(args));
        }
        PusherPauseEvent.mLastPauseTime = 0L;
        this.mPushStatus = mNativeAlivcLivePusher.isPushing() ? AlivcLivePushStats.PUSHED : AlivcLivePushStats.PREVIEWED;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void resumeAsync() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->resumeAsync");
        if (this.mAlivcLivePushConfig.isExternMainStream()) {
            return;
        }
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.PAUSED && alivcLivePushStats != AlivcLivePushStats.ERROR) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        this.mPushStatus = AlivcLivePushStats.RESUMING;
        mNativeAlivcLivePusher.resume(false);
        PusherResumeEvent.Args args = new PusherResumeEvent.Args();
        Map<String, String> performanceMap = getPerformanceMap();
        if (performanceMap != null) {
            args.sync = false;
            args.isResumeScreen = false;
            args.totalUploadSize = ParameterUtil.getLong(performanceMap, "mTotalSizeOfUploadedPackets");
            args.totalTime = ParameterUtil.getLong(performanceMap, "mTotalTimeOfPublishing");
            if (PusherPauseEvent.mLastPauseTime == 0) {
                args.cost = 0L;
            } else {
                args.cost = System.currentTimeMillis() - PusherPauseEvent.mLastPauseTime;
            }
            this.mLiveEventReporter.sendEvent(PusherResumeEvent.kTopicType, PusherResumeEvent.kTopicValue, PusherResumeEvent.getArgsStr(args));
        }
        PusherPauseEvent.mLastPauseTime = 0L;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void resumeBGM() {
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Invalid parameter");
        }
        if (this.mPlayStats == AlivcLivePlayStats.PAUSED) {
            mNativeAlivcLivePusher.resumeBGM();
            return;
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePlayStats.values()[this.mPlayStats.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void resumeScreenCapture() {
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        if (this.mPushStatus != AlivcLivePushStats.PAUSED) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        mNativeAlivcLivePusher.resumeScreenCapture();
        PusherResumeEvent.Args args = new PusherResumeEvent.Args();
        Map<String, String> performanceMap = getPerformanceMap();
        if (performanceMap != null) {
            args.sync = true;
            args.isResumeScreen = true;
            args.totalUploadSize = ParameterUtil.getLong(performanceMap, "mTotalSizeOfUploadedPackets");
            args.totalTime = ParameterUtil.getLong(performanceMap, "mTotalTimeOfPublishing");
            args.cost = System.currentTimeMillis() - PusherPauseEvent.mLastPauseTime;
            this.mLiveEventReporter.sendEvent(PusherResumeEvent.kTopicType, PusherResumeEvent.kTopicValue, PusherResumeEvent.getArgsStr(args));
        }
        PusherPauseEvent.mLastPauseTime = 0L;
        this.mPushStatus = mNativeAlivcLivePusher.isPushing() ? AlivcLivePushStats.PUSHED : AlivcLivePushStats.PREVIEWED;
    }

    public void sendMessage(String str, int i, int i2, boolean z) {
        sendMessageInternal(str, i, i2, z, false);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setAudioDenoise(boolean z) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.setAudioDenoise(z);
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setAutoFocus(boolean z) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->setAutoFocus auto: " + z);
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats == AlivcLivePushStats.PREVIEWED || alivcLivePushStats == AlivcLivePushStats.PUSHED) {
            mNativeAlivcLivePusher.setCameraFocus(z, 0.0f, 0.0f);
            return;
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setBGMEarsBack(boolean z) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.setEarsBack(z);
        }
        PusherSetBGMEarsBackEvent.Args args = new PusherSetBGMEarsBackEvent.Args();
        args.value = z;
        args.bh = getBlueToothHeadSetOn() ? 1 : 0;
        args.eh = getHeadSetPlugOn() ? 1 : 0;
        LiveEventReporter liveEventReporter = this.mLiveEventReporter;
        if (liveEventReporter != null) {
            liveEventReporter.sendEvent(PusherSetBGMEarsBackEvent.kTopicType, PusherSetBGMEarsBackEvent.kTopicValue, PusherSetBGMEarsBackEvent.getArgsStr(args));
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setBGMLoop(boolean z) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.setBGMLoop(z);
        }
        PusherSetBGMLoopEvent.Args args = new PusherSetBGMLoopEvent.Args();
        args.value = z;
        this.mLiveEventReporter.sendEvent(PusherSetBGMLoopEvent.kTopicType, PusherSetBGMLoopEvent.kTopicValue, PusherSetBGMLoopEvent.getArgsStr(args));
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setBGMVolume(int i) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            if (i > 0 && i < 10) {
                i = 10;
            }
            this.mBGMVolume = i;
            livePusherJNI.setBackgroundMusicVolume(i / 10);
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setCaptureVolume(int i) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            if (i > 0 && i < 10) {
                i = 10;
            }
            this.mCaptureVolume = i;
            livePusherJNI.setAudioVolume(i / 10);
        }
    }

    public void setCustomDetect(AlivcLivePushCustomDetect alivcLivePushCustomDetect) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.setCustomDetect(alivcLivePushCustomDetect);
            Thread.currentThread();
        }
    }

    public void setCustomFilter(AlivcLivePushCustomFilter alivcLivePushCustomFilter) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.setCustomFilter(alivcLivePushCustomFilter);
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setExposure(int i) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->setExposure exposure: " + i);
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats == AlivcLivePushStats.PREVIEWED || alivcLivePushStats == AlivcLivePushStats.PUSHED) {
            mNativeAlivcLivePusher.setExposureCompensation(i);
            return;
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setFlash(boolean z) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->setFlash flash: " + z);
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.PREVIEWED && alivcLivePushStats != AlivcLivePushStats.PUSHED) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        mNativeAlivcLivePusher.setFlash(z);
        this.mAlivcLivePushConfig.setFlash(z);
        PusherSetFlashEvent.Args args = new PusherSetFlashEvent.Args();
        args.isOpen = z;
        this.mLiveEventReporter.sendEvent(PusherSetFlashEvent.kTopicType, PusherSetFlashEvent.kTopicValue, PusherSetFlashEvent.getArgsStr(args));
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setLivePushBGMListener(AlivcLivePushBGMListener alivcLivePushBGMListener) {
        this.mPushBGMListener = alivcLivePushBGMListener;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setLivePushErrorListener(AlivcLivePushErrorListener alivcLivePushErrorListener) {
        this.mPushErrorListener = alivcLivePushErrorListener;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setLivePushInfoListener(AlivcLivePushInfoListener alivcLivePushInfoListener) {
        this.mPushInfoListener = alivcLivePushInfoListener;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setLivePushNetworkListener(AlivcLivePushNetworkListener alivcLivePushNetworkListener) {
        this.mPushNetworkListener = alivcLivePushNetworkListener;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setLivePushRenderContextListener(AlivcLivePusherRenderContextListener alivcLivePusherRenderContextListener) {
        this.mRenderContextListener = alivcLivePusherRenderContextListener;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setLogDirPath(String str) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->setLogDirPath: " + str);
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        livePusherJNI.setLogDirPath(str);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setLogLevel(AlivcLivePushLogLevel alivcLivePushLogLevel) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->setLogLevel");
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        if (alivcLivePushLogLevel.getLevel() > AlivcLivePushLogLevel.AlivcLivePushLogLevelWarn.getLevel()) {
            LogUtil.disableDebug();
        } else {
            LogUtil.enalbeDebug();
        }
        mNativeAlivcLivePusher.setLogLevel(alivcLivePushLogLevel.getLevel());
    }

    public void setMainStreamPosition(float f2, float f3, float f4, float f5) {
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.setMainStreamPosition(f2, f3, f4, f5);
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setMinVideoBitrate(int i) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->setMinVideoBitrate minVideoBitrate: " + i);
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats == AlivcLivePushStats.PREVIEWED || alivcLivePushStats == AlivcLivePushStats.PUSHED) {
            mNativeAlivcLivePusher.setVideoBitrateRange(i, 0, 0);
            return;
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setMute(boolean z) {
        LiveEventReporter liveEventReporter;
        AlivcLivePushConstants.Topic topic;
        String str;
        Map<String, String> argsStr;
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->setMute mute: " + z);
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.PREVIEWED && alivcLivePushStats != AlivcLivePushStats.PUSHED && alivcLivePushStats != AlivcLivePushStats.PAUSED) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        mNativeAlivcLivePusher.setMute(z);
        this.mMute = z;
        if (z) {
            PusherMuteOnEvent.Args args = new PusherMuteOnEvent.Args();
            liveEventReporter = this.mLiveEventReporter;
            topic = PusherMuteOffEvent.kTopicType;
            str = PusherMuteOffEvent.kTopicValue;
            argsStr = PusherMuteOnEvent.getArgsStr(args);
        } else {
            PusherMuteOffEvent.Args args2 = new PusherMuteOffEvent.Args();
            liveEventReporter = this.mLiveEventReporter;
            topic = PusherMuteOffEvent.kTopicType;
            str = PusherMuteOffEvent.kTopicValue;
            argsStr = PusherMuteOffEvent.getArgsStr(args2);
        }
        liveEventReporter.sendEvent(topic, str, argsStr);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setPreviewMirror(boolean z) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->setPreviewMirror previewMirror: " + z);
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats == AlivcLivePushStats.PREVIEWED || alivcLivePushStats == AlivcLivePushStats.PUSHED) {
            mNativeAlivcLivePusher.setPreviewMirror(z);
            return;
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setPreviewMode(AlivcPreviewDisplayMode alivcPreviewDisplayMode) {
        if (mNativeAlivcLivePusher == null || this.mAlivcLivePushConfig.getMediaProjectionPermissionResultData() != null) {
            return;
        }
        mNativeAlivcLivePusher.setDisplayMode(alivcPreviewDisplayMode.getPreviewDisplayMode());
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setPreviewOrientation(AlivcPreviewOrientationEnum alivcPreviewOrientationEnum) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->setPreviewOrientation");
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.PREVIEWED && alivcLivePushStats != AlivcLivePushStats.PUSHED) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.setOrientaion(alivcPreviewOrientationEnum.getOrientation());
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setPushMirror(boolean z) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->setPushMirror pushMirror: " + z);
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats == AlivcLivePushStats.PREVIEWED || alivcLivePushStats == AlivcLivePushStats.PUSHED) {
            mNativeAlivcLivePusher.setPusherMirror(z);
            return;
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setQualityMode(AlivcQualityModeEnum alivcQualityModeEnum) {
        if (alivcQualityModeEnum.equals(AlivcQualityModeEnum.QM_CUSTOM)) {
            throw new IllegalStateException("Cannot set QM_CUSTOM dynamically");
        }
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.setQualityMode(alivcQualityModeEnum.getQualityMode());
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setScreenOrientation(int i) {
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Please excute init first ");
        }
        if (this.mAlivcLivePushConfig.getMediaProjectionPermissionResultData() == null) {
            throw new IllegalStateException("Not in ScreenCapture Mode");
        }
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.setScreenOrientation(i);
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setTargetVideoBitrate(int i) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->setTargetVideoBitrate targetVideoBitrate: " + i);
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats == AlivcLivePushStats.PREVIEWED || alivcLivePushStats == AlivcLivePushStats.PUSHED) {
            mNativeAlivcLivePusher.setVideoBitrateRange(0, i, i);
            return;
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setWaterMarkVisible(boolean z) {
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        if (this.mPushStatus != AlivcLivePushStats.PREVIEWED) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.setWaterMarkVisible(z);
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void setZoom(int i) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->setZoom zoom: " + i);
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats == AlivcLivePushStats.PREVIEWED || alivcLivePushStats == AlivcLivePushStats.PUSHED) {
            mNativeAlivcLivePusher.setCameraZoom(i);
            return;
        }
        throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void snapshot(int i, int i2, AlivcSnapshotListener alivcSnapshotListener) {
        this.mSnapshotListener = alivcSnapshotListener;
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.snapshot(i, i2, this.mInnerSnapshotListener);
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void startBGMAsync(String str) {
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Invalid parameter");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats == AlivcLivePushStats.IDLE || alivcLivePushStats == AlivcLivePushStats.ERROR) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        AlivcLivePlayStats alivcLivePlayStats = this.mPlayStats;
        if (alivcLivePlayStats == AlivcLivePlayStats.IDLE || alivcLivePlayStats == AlivcLivePlayStats.STOPED) {
            PusherSetBGMEvent.Args args = new PusherSetBGMEvent.Args();
            args.isOpen = true;
            args.music = getBGMVolume();
            args.voice = getCaptureVolume();
            this.mLiveEventReporter.sendEvent(PusherSetBGMEvent.kTopicType, PusherSetBGMEvent.kTopicValue, PusherSetBGMEvent.getArgsStr(args));
        }
        mNativeAlivcLivePusher.resumeBGM();
        mNativeAlivcLivePusher.stopBGM();
        mNativeAlivcLivePusher.startBGMAsync(str);
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public int startCamera(SurfaceView surfaceView) {
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Please excute init first ");
        }
        if (this.mAlivcLivePushConfig.getMediaProjectionPermissionResultData() == null) {
            throw new IllegalStateException("Not in ScreenCapture Mode");
        }
        if (!this.mScreenStatus.equals(ScreenRecordStatus.SCREEN_RECORD_NORMAL)) {
            throw new IllegalStateException("you should start push screen first");
        }
        if (mNativeAlivcLivePusher == null) {
            return -1;
        }
        int iStartCamera = mNativeAlivcLivePusher.startCamera(surfaceView != null ? surfaceView.getHolder().getSurface() : null);
        this.mScreenStatus = ScreenRecordStatus.SCREEN_RECORD_CAMERA_START;
        return iStartCamera;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public int startCameraMix(float f2, float f3, float f4, float f5) {
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Please excute init first ");
        }
        if (this.mAlivcLivePushConfig.getMediaProjectionPermissionResultData() == null) {
            throw new IllegalStateException("Not in ScreenCapture Mode");
        }
        if (!this.mScreenStatus.equals(ScreenRecordStatus.SCREEN_RECORD_CAMERA_START)) {
            throw new IllegalStateException("You should start camera first");
        }
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI == null) {
            return -1;
        }
        int iStartCameraMix = livePusherJNI.startCameraMix(f2, f3, f4, f5);
        this.mScreenStatus = ScreenRecordStatus.SCREEN_RECORD_CAMERA_MIX_START;
        return iStartCameraMix;
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void startPreview(SurfaceView surfaceView) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->startPreview");
        PusherStartPreviewEvent.Args args = new PusherStartPreviewEvent.Args();
        args.sync = true;
        this.mLiveEventReporter.sendEvent(PusherStartPreviewEvent.kTopicType, PusherStartPreviewEvent.kTopicValue, PusherStartPreviewEvent.getArgsStr(args));
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.INIT && alivcLivePushStats != AlivcLivePushStats.PREVIEWED) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        this.mPreviewView = surfaceView;
        if (surfaceView == null) {
            if (mNativeAlivcLivePusher.startPreview(null, true) != 0) {
                throw new IllegalStateException("start preview error");
            }
        } else {
            if (mNativeAlivcLivePusher.startPreview(surfaceView.getHolder().getSurface(), true) != 0) {
                throw new IllegalStateException("start preview error");
            }
            surfaceView.getHolder().addCallback(this.mPreviewCallback);
        }
        this.mPushStatus = AlivcLivePushStats.PREVIEWED;
        this.mAlivcLivePushConfig.getMediaProjectionPermissionResultData();
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void startPreviewAysnc(SurfaceView surfaceView) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->startPreviewAysnc");
        PusherStartPreviewEvent.Args args = new PusherStartPreviewEvent.Args();
        args.sync = false;
        this.mLiveEventReporter.sendEvent(PusherStartPreviewEvent.kTopicType, PusherStartPreviewEvent.kTopicValue, PusherStartPreviewEvent.getArgsStr(args));
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.INIT && alivcLivePushStats != AlivcLivePushStats.PREVIEWED) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        this.mPushStatus = AlivcLivePushStats.PREVIEING;
        this.mPreviewView = surfaceView;
        if (surfaceView == null) {
            if (mNativeAlivcLivePusher.startPreview(null, false) != 0) {
                throw new IllegalStateException("start preview aysnc error");
            }
        } else {
            if (mNativeAlivcLivePusher.startPreview(surfaceView.getHolder().getSurface(), false) != 0) {
                throw new IllegalStateException("start preview aysnc error");
            }
            surfaceView.getHolder().addCallback(this.mPreviewCallback);
        }
        this.mPushStatus = AlivcLivePushStats.PREVIEWED;
        this.mAlivcLivePushConfig.getMediaProjectionPermissionResultData();
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void startPush(String str) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->startPush");
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        if ((this.mAlivcLivePushConfig.isAudioOnly() || this.mAlivcLivePushConfig.isVideoOnly()) && str.startsWith("artc://")) {
            throw new IllegalArgumentException("RTC protocol don't support audio/video only stream");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.PREVIEWED && alivcLivePushStats != AlivcLivePushStats.INIT && alivcLivePushStats != AlivcLivePushStats.PUSHED) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        if (alivcLivePushStats.equals(AlivcLivePushStats.INIT)) {
            this.mPreviewView = null;
            if (mNativeAlivcLivePusher.startPreview(null, true) != 0) {
                throw new IllegalStateException("start push error : create gl resource failed");
            }
        }
        mPushUrl = str;
        if (str.contains(AUTH_KEY)) {
            getNetworkTime();
        }
        this.mLiveEventReporter.refreshPushId();
        if (mNativeAlivcLivePusher.startPush(str, true) != 0) {
            throw new IllegalStateException("start push error");
        }
        AlivcLivePushStats alivcLivePushStats2 = this.mPushStatus;
        AlivcLivePushStats alivcLivePushStats3 = AlivcLivePushStats.PUSHED;
        if (alivcLivePushStats2 != alivcLivePushStats3) {
            this.mPushStatus = alivcLivePushStats3;
            if (this.mAlivcLivePushConfig.getMediaProjectionPermissionResultData() != null) {
                this.mScreenStatus = ScreenRecordStatus.SCREEN_RECORD_NORMAL;
            }
        }
        reportStartPushEvent(false, true);
        mNativeAlivcLivePusher.addPushImage(this.mAlivcLivePushConfig.getPausePushImage() == null ? "" : this.mAlivcLivePushConfig.getPausePushImage(), this.mAlivcLivePushConfig.getNetworkPoorPushImage() != null ? this.mAlivcLivePushConfig.getNetworkPoorPushImage() : "");
        startScheduleExecutor();
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void startPushAysnc(String str) {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->startPushAysnc");
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.PREVIEWED && alivcLivePushStats != AlivcLivePushStats.INIT && alivcLivePushStats != AlivcLivePushStats.PUSHED) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        if ((this.mAlivcLivePushConfig.isAudioOnly() || this.mAlivcLivePushConfig.isVideoOnly()) && str.startsWith("artc://")) {
            throw new IllegalArgumentException("RTC protocol don't support audio/video only stream");
        }
        if (this.mPushStatus.equals(AlivcLivePushStats.INIT)) {
            this.mPreviewView = null;
            if (mNativeAlivcLivePusher.startPreview(null, true) != 0) {
                throw new IllegalStateException("start push error : create gl resource failed");
            }
        }
        mPushUrl = str;
        if (str.contains(AUTH_KEY)) {
            getNetworkTime();
        }
        this.mLiveEventReporter.refreshPushId();
        if (mNativeAlivcLivePusher.startPush(str, false) != 0) {
            throw new IllegalStateException("start push aysnc error");
        }
        AlivcLivePushStats alivcLivePushStats2 = this.mPushStatus;
        AlivcLivePushStats alivcLivePushStats3 = AlivcLivePushStats.PUSHED;
        if (alivcLivePushStats2 != alivcLivePushStats3) {
            this.mPushStatus = alivcLivePushStats3;
            if (this.mAlivcLivePushConfig.getMediaProjectionPermissionResultData() != null) {
                this.mScreenStatus = ScreenRecordStatus.SCREEN_RECORD_NORMAL;
            }
        }
        reportStartPushEvent(false, false);
        mNativeAlivcLivePusher.addPushImage(this.mAlivcLivePushConfig.getPausePushImage() == null ? "" : this.mAlivcLivePushConfig.getPausePushImage(), this.mAlivcLivePushConfig.getNetworkPoorPushImage() != null ? this.mAlivcLivePushConfig.getNetworkPoorPushImage() : "");
        startScheduleExecutor();
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void stopBGMAsync() {
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Invalid parameter");
        }
        if (this.mPlayStats == AlivcLivePlayStats.IDLE) {
            throw new IllegalStateException("status error current state is " + AlivcLivePlayStats.values()[this.mPlayStats.ordinal()]);
        }
        mNativeAlivcLivePusher.stopBGM();
        PusherSetBGMEvent.Args args = new PusherSetBGMEvent.Args();
        args.isOpen = false;
        args.music = getBGMVolume();
        args.voice = getCaptureVolume();
        this.mLiveEventReporter.sendEvent(PusherSetBGMEvent.kTopicType, PusherSetBGMEvent.kTopicValue, PusherSetBGMEvent.getArgsStr(args));
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void stopCamera() {
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Please excute init first ");
        }
        if (this.mAlivcLivePushConfig.getMediaProjectionPermissionResultData() == null) {
            throw new IllegalStateException("Not in ScreenCapture Mode");
        }
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.stopCamera();
            this.mScreenStatus = ScreenRecordStatus.SCREEN_RECORD_NORMAL;
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void stopCameraMix() {
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Please excute init first ");
        }
        if (this.mAlivcLivePushConfig.getMediaProjectionPermissionResultData() == null) {
            throw new IllegalStateException("Not in ScreenCapture Mode");
        }
        LivePusherJNI livePusherJNI = mNativeAlivcLivePusher;
        if (livePusherJNI != null) {
            livePusherJNI.stopCameraMix();
            this.mScreenStatus = ScreenRecordStatus.SCREEN_RECORD_CAMERA_START;
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void stopPreview() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->stopPreview");
        this.mLiveEventReporter.sendEvent(PusherStopPreviewEvent.kTopicType, PusherStopPreviewEvent.kTopicValue, PusherStopPreviewEvent.getArgsStr(null));
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        this.mDynamicAddsonCount = 0;
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        AlivcLivePushStats alivcLivePushStats2 = AlivcLivePushStats.INIT;
        if (alivcLivePushStats == alivcLivePushStats2 || alivcLivePushStats == AlivcLivePushStats.PREVIEWED) {
            if (mNativeAlivcLivePusher.stopPreview() != 0) {
                throw new IllegalStateException("stop preview error");
            }
            this.mPushStatus = alivcLivePushStats2;
        } else {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void stopPush() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->stopPush");
        PusherStopPushEvent.Args args = new PusherStopPushEvent.Args();
        Map<String, String> performanceMap = getPerformanceMap();
        if (performanceMap != null) {
            args.totalUploadSize = ParameterUtil.getLong(performanceMap, "mTotalSizeOfUploadedPackets");
            args.totalTime = ParameterUtil.getLong(performanceMap, "mTotalTimeOfPublishing");
            this.mLiveEventReporter.sendEvent(PusherStopPushEvent.kTopicType, PusherStopPushEvent.kTopicValue, PusherStopPushEvent.getArgsStr(args));
        }
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("Illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        AlivcLivePushStats alivcLivePushStats2 = AlivcLivePushStats.PREVIEWED;
        if (alivcLivePushStats != alivcLivePushStats2 && alivcLivePushStats != AlivcLivePushStats.PUSHED && alivcLivePushStats != AlivcLivePushStats.PAUSED && alivcLivePushStats != AlivcLivePushStats.ERROR) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        if (mNativeAlivcLivePusher.stopPush() != 0) {
            throw new IllegalStateException("stop push error");
        }
        this.mPushStatus = alivcLivePushStats2;
        if (this.mPreviewView == null) {
            mNativeAlivcLivePusher.stopPreview();
            this.mPushStatus = AlivcLivePushStats.INIT;
        }
        stop5Interval();
    }

    @Override // com.alivc.live.pusher.ILivePusher
    public void switchCamera() {
        LogUtil.d("AlivcLivePusher", "AlivcLivePusher-->switchCamera");
        if (mNativeAlivcLivePusher == null) {
            throw new IllegalStateException("illegal State, you should init first");
        }
        AlivcLivePushStats alivcLivePushStats = this.mPushStatus;
        if (alivcLivePushStats != AlivcLivePushStats.PREVIEWED && alivcLivePushStats != AlivcLivePushStats.PUSHED) {
            throw new IllegalStateException("status error current state is " + AlivcLivePushStats.values()[this.mPushStatus.ordinal()]);
        }
        mNativeAlivcLivePusher.switchCamera();
        int cameraType = this.mAlivcLivePushConfig.getCameraType();
        AlivcLivePushCameraTypeEnum alivcLivePushCameraTypeEnum = AlivcLivePushCameraTypeEnum.CAMERA_TYPE_FRONT;
        if (cameraType == alivcLivePushCameraTypeEnum.getCameraId()) {
            this.mAlivcLivePushConfig.setCameraType(AlivcLivePushCameraTypeEnum.CAMERA_TYPE_BACK);
        } else {
            this.mAlivcLivePushConfig.setCameraType(alivcLivePushCameraTypeEnum);
        }
        PusherSwitchCameraEvent.Args args = new PusherSwitchCameraEvent.Args();
        args.isFrontCamera = this.mAlivcLivePushConfig.getCameraType() == alivcLivePushCameraTypeEnum.getCameraId();
        this.mLiveEventReporter.sendEvent(PusherSwitchCameraEvent.kTopicType, PusherSwitchCameraEvent.kTopicValue, PusherSwitchCameraEvent.getArgsStr(args));
    }
}
