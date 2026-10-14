package com.alivc.live.pusher;

import com.amap.api.fence.GeoFence;
import com.tencent.tauth.AuthActivity;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
public class AlivcLivePushConstants {
    public static final int DEFAULT_MAX_CONTROL_FAILED_TIME = 3;
    public static final int DEFAULT_MAX_DIFF_PTS = 300;
    public static final int DEFAULT_MAX_TIMEOUT_COUNT = 10;
    public static final int DEFAULT_MIN_BITRATE_CONTROL_INTERVAL = 5000000;
    public static final int DEFAULT_NEED_UPBPS_CACHE_SIZE = 2;
    public static final int DEFAULT_QUEUESIZE_NEED_BITRATE_CONTROL = 60;
    public static final int DEFAULT_RTMP_UPBPS_MIN_FREE_PERCENTAGE = 20;
    public static final int DEFAULT_START_ALRAM_PACKET_SIZE = 60;
    public static final int DEFAULT_START_DROP_GOP_PACKET_SIZE = 200;
    public static final int DEFAULT_STOP_ALARM_PACKET_SIZE = 20;
    public static final int DEFAULT_STOP_DROP_GOP_PACKET_SIZE = 40;
    public static final int DEFAULT_UPBPS_REQUEST_FREE_DURATION = 20000000;
    public static final boolean DEFAULT_VALUE_AUDIO_ONLY = false;
    public static final boolean DEFAULT_VALUE_AUTO_FOCUS = true;
    public static final boolean DEFAULT_VALUE_FLASH = false;
    public static final int DEFAULT_VALUE_INT_AUDIO_RETRY_COUNT = 5;
    public static final int DEFAULT_VALUE_INT_AUDIO_SAMPLE_RATE = 32000;
    public static final int DEFAULT_VALUE_INT_CAMERA_TYPE = 1;
    public static final AlivcResolutionEnum DEFAULT_VALUE_INT_DEFINITION = AlivcResolutionEnum.RESOLUTION_540P;
    public static final int DEFAULT_VALUE_INT_INIT_BITRATE = 1000;
    public static final int DEFAULT_VALUE_INT_MIN_BITRATE = 300;
    public static final int DEFAULT_VALUE_INT_RETRY_INTERVAL = 1000;
    public static final int DEFAULT_VALUE_INT_SCREEN_ORIENTATION = 1;
    public static final int DEFAULT_VALUE_INT_TARGET_BITRATE = 1200;
    public static final int DEFAULT_VALUE_INT_VIDEO_FPS = 20;
    public static final boolean DEFAULT_VALUE_PREVIEW_MIRROR = false;
    public static final boolean DEFAULT_VALUE_PUSH_MIRROR = false;
    public static final boolean DEFAULT_VALUE_VIDEO_ONLY = false;
    public static final int RESOLUTION_1080 = 1080;
    public static final int RESOLUTION_1280 = 1280;
    public static final int RESOLUTION_180 = 180;
    public static final int RESOLUTION_1920 = 1920;
    public static final int RESOLUTION_240 = 240;
    public static final int RESOLUTION_320 = 320;
    public static final int RESOLUTION_360 = 360;
    public static final int RESOLUTION_480 = 480;
    public static final int RESOLUTION_540 = 540;
    public static final int RESOLUTION_640 = 640;
    public static final int RESOLUTION_720 = 720;
    public static final int RESOLUTION_848 = 848;
    public static final int RESOLUTION_960 = 960;

    public enum BITRATE_180P {
        DEFAULT_VALUE_INT_TARGET_BITRATE(Videoio.CAP_PROP_XI_DOWNSAMPLING),
        DEFAULT_VALUE_INT_MIN_BITRATE(100),
        DEFAULT_VALUE_INT_INIT_BITRATE(Videoio.CAP_PROP_XI_DOWNSAMPLING);

        private int bitrate;

        BITRATE_180P(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_180P_FLUENCY_FIRST {
        DEFAULT_VALUE_INT_TARGET_BITRATE(250),
        DEFAULT_VALUE_INT_MIN_BITRATE(100),
        DEFAULT_VALUE_INT_INIT_BITRATE(200);

        private int bitrate;

        BITRATE_180P_FLUENCY_FIRST(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_180P_RESOLUTION_FIRST {
        DEFAULT_VALUE_INT_TARGET_BITRATE(Videoio.CAP_PROP_XI_ACQ_TRANSPORT_BUFFER_SIZE),
        DEFAULT_VALUE_INT_MIN_BITRATE(120),
        DEFAULT_VALUE_INT_INIT_BITRATE(300);

        private int bitrate;

        BITRATE_180P_RESOLUTION_FIRST(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_240P {
        DEFAULT_VALUE_INT_TARGET_BITRATE(Videoio.CAP_UNICAP),
        DEFAULT_VALUE_INT_MIN_BITRATE(100),
        DEFAULT_VALUE_INT_INIT_BITRATE(Videoio.CAP_UNICAP);

        private int bitrate;

        BITRATE_240P(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_240P_FLUENCY_FIRST {
        DEFAULT_VALUE_INT_TARGET_BITRATE(350),
        DEFAULT_VALUE_INT_MIN_BITRATE(120),
        DEFAULT_VALUE_INT_INIT_BITRATE(300);

        private int bitrate;

        BITRATE_240P_FLUENCY_FIRST(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_240P_RESOLUTION_FIRST {
        DEFAULT_VALUE_INT_TARGET_BITRATE(750),
        DEFAULT_VALUE_INT_MIN_BITRATE(180),
        DEFAULT_VALUE_INT_INIT_BITRATE(Videoio.CAP_PROP_XI_WB_KB);

        private int bitrate;

        BITRATE_240P_RESOLUTION_FIRST(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_360P {
        DEFAULT_VALUE_INT_TARGET_BITRATE(Videoio.CAP_UNICAP),
        DEFAULT_VALUE_INT_MIN_BITRATE(200),
        DEFAULT_VALUE_INT_INIT_BITRATE(Videoio.CAP_UNICAP);

        private int bitrate;

        BITRATE_360P(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_360P_FLUENCY_FIRST {
        DEFAULT_VALUE_INT_TARGET_BITRATE(Videoio.CAP_UNICAP),
        DEFAULT_VALUE_INT_MIN_BITRATE(200),
        DEFAULT_VALUE_INT_INIT_BITRATE(Videoio.CAP_PROP_XI_DOWNSAMPLING);

        private int bitrate;

        BITRATE_360P_FLUENCY_FIRST(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_360P_RESOLUTION_FIRST {
        DEFAULT_VALUE_INT_TARGET_BITRATE(1000),
        DEFAULT_VALUE_INT_MIN_BITRATE(300),
        DEFAULT_VALUE_INT_INIT_BITRATE(Videoio.CAP_UNICAP);

        private int bitrate;

        BITRATE_360P_RESOLUTION_FIRST(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_480P {
        DEFAULT_VALUE_INT_TARGET_BITRATE(800),
        DEFAULT_VALUE_INT_MIN_BITRATE(200),
        DEFAULT_VALUE_INT_INIT_BITRATE(800);

        private int bitrate;

        BITRATE_480P(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_480P_FLUENCY_FIRST {
        DEFAULT_VALUE_INT_TARGET_BITRATE(800),
        DEFAULT_VALUE_INT_MIN_BITRATE(300),
        DEFAULT_VALUE_INT_INIT_BITRATE(Videoio.CAP_UNICAP);

        private int bitrate;

        BITRATE_480P_FLUENCY_FIRST(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_480P_RESOLUTION_FIRST {
        DEFAULT_VALUE_INT_TARGET_BITRATE(1200),
        DEFAULT_VALUE_INT_MIN_BITRATE(300),
        DEFAULT_VALUE_INT_INIT_BITRATE(800);

        private int bitrate;

        BITRATE_480P_RESOLUTION_FIRST(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_540P {
        DEFAULT_VALUE_INT_TARGET_BITRATE(800),
        DEFAULT_VALUE_INT_MIN_BITRATE(200),
        DEFAULT_VALUE_INT_INIT_BITRATE(800);

        private int bitrate;

        BITRATE_540P(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_540P_FLUENCY_FIRST {
        DEFAULT_VALUE_INT_TARGET_BITRATE(1000),
        DEFAULT_VALUE_INT_MIN_BITRATE(300),
        DEFAULT_VALUE_INT_INIT_BITRATE(800);

        private int bitrate;

        BITRATE_540P_FLUENCY_FIRST(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_540P_RESOLUTION_FIRST {
        DEFAULT_VALUE_INT_TARGET_BITRATE(Videoio.CAP_MSMF),
        DEFAULT_VALUE_INT_MIN_BITRATE(Videoio.CAP_UNICAP),
        DEFAULT_VALUE_INT_INIT_BITRATE(1000);

        private int bitrate;

        BITRATE_540P_RESOLUTION_FIRST(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_720P {
        DEFAULT_VALUE_INT_TARGET_BITRATE(1200),
        DEFAULT_VALUE_INT_MIN_BITRATE(200),
        DEFAULT_VALUE_INT_INIT_BITRATE(1200);

        private int bitrate;

        BITRATE_720P(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_720P_FLUENCY_FIRST {
        DEFAULT_VALUE_INT_TARGET_BITRATE(1200),
        DEFAULT_VALUE_INT_MIN_BITRATE(300),
        DEFAULT_VALUE_INT_INIT_BITRATE(1000);

        private int bitrate;

        BITRATE_720P_FLUENCY_FIRST(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    public enum BITRATE_720P_RESOLUTION_FIRST {
        DEFAULT_VALUE_INT_TARGET_BITRATE(2000),
        DEFAULT_VALUE_INT_MIN_BITRATE(Videoio.CAP_UNICAP),
        DEFAULT_VALUE_INT_INIT_BITRATE(1500);

        private int bitrate;

        BITRATE_720P_RESOLUTION_FIRST(int i) {
            this.bitrate = i;
        }

        public int getBitrate() {
            return this.bitrate;
        }
    }

    enum PublishStatus {
        UINITED(0),
        INITED(1),
        PREPARED(2),
        PUBLISH_STARTED(3),
        PUBLISH_STOPED(4),
        RELEASED(5);

        private int status;

        PublishStatus(int i) {
            this.status = i;
        }
    }

    enum Status {
        STOPED,
        PAUSED,
        RUNNING
    }

    public enum Topic {
        action(AuthActivity.ACTION_KEY),
        event(GeoFence.BUNDLE_KEY_FENCESTATUS),
        error("error"),
        biz("biz");

        private String mValue;

        Topic(String str) {
            this.mValue = str;
        }

        public String getValue() {
            return this.mValue;
        }
    }
}
