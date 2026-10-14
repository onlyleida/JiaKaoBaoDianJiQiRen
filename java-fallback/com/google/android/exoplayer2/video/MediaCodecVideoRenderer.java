package com.google.android.exoplayer2.video;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import com.alivc.live.pusher.AlivcLivePushConstants;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.mediacodec.MediaCodecAdapter;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecInfo;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecSelector;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MediaFormatUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.TraceUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.y0;
import com.google.android.gms.common.Scopes;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.google.common.primitives.UnsignedBytes;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import okio.Utf8;

/* JADX INFO: loaded from: classes5.dex */
public class MediaCodecVideoRenderer extends MediaCodecRenderer {
    private static final float INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR = 1.5f;
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    private static final int[] STANDARD_LONG_EDGE_VIDEO_PX = null;
    private static final String TAG = "MediaCodecVideoRenderer";
    private static final long TUNNELING_EOS_PRESENTATION_TIME_US = Long.MAX_VALUE;
    private static boolean deviceNeedsSetOutputSurfaceWorkaround;
    private static boolean evaluatedDeviceNeedsSetOutputSurfaceWorkaround;
    private final long allowedJoiningTimeMs;
    private int buffersInCodecCount;
    private boolean codecHandlesHdr10PlusOutOfBandMetadata;
    private CodecMaxValues codecMaxValues;
    private boolean codecNeedsSetOutputSurfaceWorkaround;
    private int consecutiveDroppedFrameCount;
    private final Context context;
    private int currentHeight;
    private float currentPixelWidthHeightRatio;
    private int currentUnappliedRotationDegrees;
    private int currentWidth;
    private final boolean deviceNeedsNoPostProcessWorkaround;
    private long droppedFrameAccumulationStartTimeMs;
    private int droppedFrames;
    private Surface dummySurface;
    private final VideoRendererEventListener.EventDispatcher eventDispatcher;
    private VideoFrameMetadataListener frameMetadataListener;
    private final VideoFrameReleaseHelper frameReleaseHelper;
    private boolean haveReportedFirstFrameRenderedForCurrentSurface;
    private long initialPositionUs;
    private long joiningDeadlineMs;
    private long lastBufferPresentationTimeUs;
    private long lastRenderRealtimeUs;
    private final int maxDroppedFramesToNotify;
    private boolean mayRenderFirstFrameAfterEnableIfNotStarted;
    private boolean renderedFirstFrameAfterEnable;
    private boolean renderedFirstFrameAfterReset;
    private VideoSize reportedVideoSize;
    private int scalingMode;
    private Surface surface;
    private long totalVideoFrameProcessingOffsetUs;
    private boolean tunneling;
    private int tunnelingAudioSessionId;
    OnFrameRenderedListenerV23 tunnelingOnFrameRenderedListener;
    private int videoFrameProcessingOffsetCount;

    protected static final class CodecMaxValues {
        public final int height;
        public final int inputSize;
        public final int width;

        public CodecMaxValues(int r1, int r2, int r3) {
            this.width = r1;
            this.height = r2;
            this.inputSize = r3;
        }
    }

    private final class OnFrameRenderedListenerV23 implements MediaCodecAdapter.OnFrameRenderedListener, Handler.Callback {
        private static final int HANDLE_FRAME_RENDERED = 0;
        private final Handler handler;
        final /* synthetic */ MediaCodecVideoRenderer this$0;

        public OnFrameRenderedListenerV23(MediaCodecVideoRenderer r1, MediaCodecAdapter r2) {
            this.this$0 = r1;
            Handler r3 = Util.createHandlerForCurrentLooper(this);
            this.handler = r3;
            r2.setOnFrameRenderedListener(this, r3);
        }

        private void handleFrameRendered(long r5) {
            MediaCodecVideoRenderer r0 = this.this$0;
            if (this == r0.tunnelingOnFrameRenderedListener) goto L6;
            return;
        L6:
            if (r5 != Long.MAX_VALUE) goto L13;
            MediaCodecVideoRenderer.access$000(r0);
            return;
        L13:
            r0.onProcessedTunneledBuffer(r5);     // Catch: ExoPlaybackException -> L10
            return;
        L10:
            e = move-exception;
            MediaCodecVideoRenderer.access$100(this.this$0, e);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message r3) {
            if (r3.what == 0) goto L6;
            return false;
        L6:
            handleFrameRendered(Util.toLong(r3.arg1, r3.arg2));
            return true;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.OnFrameRenderedListener
        public void onFrameRendered(MediaCodecAdapter r3, long r4, long r6) {
            if (Util.SDK_INT >= 30) goto L5;
            Message r5 = Message.obtain(this.handler, 0, (int) (r4 >> 32), (int) r4);
            this.handler.sendMessageAtFrontOfQueue(r5);
            return;
        L5:
            handleFrameRendered(r4);
        }
    }

    static {
        STANDARD_LONG_EDGE_VIDEO_PX = new int[]{AlivcLivePushConstants.RESOLUTION_1920, 1600, 1440, 1280, AlivcLivePushConstants.RESOLUTION_960, 854, 640, 540, 480};
    }

    public MediaCodecVideoRenderer(Context r3, MediaCodecSelector r4) {
        this(r3, r4, 0);
    }

    static /* synthetic */ void access$000(MediaCodecVideoRenderer r0) {
        r0.onProcessedTunneledEndOfStream();
    }

    static /* synthetic */ void access$100(MediaCodecVideoRenderer r0, ExoPlaybackException r1) {
        r0.setPendingPlaybackException(r1);
    }

    private void clearRenderedFirstFrame() {
        this.renderedFirstFrameAfterReset = false;
        if (Util.SDK_INT >= 23) goto L5;
        return;
    L5:
        if (this.tunneling == false) goto L11;
        MediaCodecAdapter r0 = getCodec();
        if (r0 == null) goto L12;
        this.tunnelingOnFrameRenderedListener = new OnFrameRenderedListenerV23(this, r0);
        return;
    L12:
        return;
    }

    private void clearReportedVideoSize() {
        this.reportedVideoSize = null;
    }

    private static void configureTunnelingV21(MediaFormat r2, int r3) {
        r2.setFeatureEnabled("tunneled-playback", true);
        r2.setInteger("audio-session-id", r3);
    }

    private static boolean deviceNeedsNoPostProcessWorkaround() {
        return "NVIDIA".equals(Util.MANUFACTURER);
    }

    private static boolean evaluateDeviceNeedsSetOutputSurfaceWorkaround() {
        int r0 = Util.SDK_INT;
        byte r1 = 6;
        byte r6 = 2;
        if (r0 > 28) goto L39;
        String r10 = Util.DEVICE;
        r10.hashCode();
        switch(r10.hashCode()) {
            case -1339091551: goto L32;
            case -1220081023: goto L28;
            case -1220066608: goto L24;
            case -1012436106: goto L20;
            case -64886864: goto L16;
            case 3415681: goto L12;
            case 825323514: goto L8;
            default: goto L6;
        };
    L6:
        byte r11 = -1;
    L35:
        switch(r11) {
            case 0: goto L37;
            case 1: goto L37;
            case 2: goto L37;
            case 3: goto L37;
            case 4: goto L37;
            case 5: goto L37;
            case 6: goto L37;
            default: goto L39;
        };
    L37:
        return true;
    L8:
        if (r10.equals("machuca") == false) goto L6;
        r11 = 6;
        goto L35
    L12:
        if (r10.equals("once") == false) goto L6;
        r11 = 5;
        goto L35
    L16:
        if (r10.equals("magnolia") == false) goto L6;
        r11 = 4;
        goto L35
    L20:
        if (r10.equals("oneday") == false) goto L6;
        r11 = 3;
        goto L35
    L24:
        if (r10.equals("dangalUHD") == false) goto L6;
        r11 = 2;
        goto L35
    L28:
        if (r10.equals("dangalFHD") == false) goto L6;
        r11 = 1;
        goto L35
    L32:
        if (r10.equals("dangal") == false) goto L6;
        r11 = 0;
    L39:
        if (r0 > 27) goto L44;
        if ("HWEML".equals(Util.DEVICE) == false) goto L44;
        return true;
    L44:
        if (r0 > 26) goto L625;
        String r2 = Util.DEVICE;
        r2.hashCode();
        switch(r2.hashCode()) {
            case -2144781245: goto L604;
            case -2144781185: goto L600;
            case -2144781160: goto L596;
            case -2097309513: goto L592;
            case -2022874474: goto L588;
            case -1978993182: goto L584;
            case -1978990237: goto L581;
            case -1936688988: goto L577;
            case -1936688066: goto L573;
            case -1936688065: goto L569;
            case -1931988508: goto L565;
            case -1885099851: goto L561;
            case -1696512866: goto L557;
            case -1680025915: goto L553;
            case -1615810839: goto L549;
            case -1600724499: goto L545;
            case -1554255044: goto L541;
            case -1481772737: goto L537;
            case -1481772730: goto L533;
            case -1481772729: goto L529;
            case -1320080169: goto L525;
            case -1217592143: goto L521;
            case -1180384755: goto L517;
            case -1139198265: goto L513;
            case -1052835013: goto L509;
            case -993250464: goto L505;
            case -993250458: goto L501;
            case -965403638: goto L497;
            case -958336948: goto L493;
            case -879245230: goto L489;
            case -842500323: goto L485;
            case -821392978: goto L481;
            case -797483286: goto L477;
            case -794946968: goto L473;
            case -788334647: goto L469;
            case -782144577: goto L465;
            case -575125681: goto L461;
            case -521118391: goto L457;
            case -430914369: goto L453;
            case -290434366: goto L449;
            case -282781963: goto L445;
            case -277133239: goto L441;
            case -173639913: goto L437;
            case -56598463: goto L433;
            case 2126: goto L429;
            case 2564: goto L425;
            case 2715: goto L421;
            case 2719: goto L417;
            case 3091: goto L413;
            case 3483: goto L409;
            case 73405: goto L405;
            case 75537: goto L401;
            case 75739: goto L397;
            case 76779: goto L393;
            case 78669: goto L389;
            case 79305: goto L385;
            case 80618: goto L381;
            case 88274: goto L377;
            case 98846: goto L373;
            case 98848: goto L369;
            case 99329: goto L365;
            case 101481: goto L361;
            case 1513190: goto L357;
            case 1514184: goto L353;
            case 1514185: goto L349;
            case 2133089: goto L345;
            case 2133091: goto L341;
            case 2133120: goto L337;
            case 2133151: goto L333;
            case 2133182: goto L329;
            case 2133184: goto L325;
            case 2436959: goto L321;
            case 2463773: goto L317;
            case 2464648: goto L313;
            case 2689555: goto L309;
            case 3154429: goto L305;
            case 3284551: goto L301;
            case 3351335: goto L297;
            case 3386211: goto L293;
            case 41325051: goto L289;
            case 51349633: goto L285;
            case 51350594: goto L281;
            case 55178625: goto L277;
            case 61542055: goto L273;
            case 65355429: goto L269;
            case 66214468: goto L265;
            case 66214470: goto L261;
            case 66214473: goto L257;
            case 66215429: goto L253;
            case 66215431: goto L249;
            case 66215433: goto L245;
            case 66216390: goto L241;
            case 76402249: goto L237;
            case 76404105: goto L233;
            case 76404911: goto L229;
            case 80963634: goto L225;
            case 82882791: goto L221;
            case 98715550: goto L217;
            case 101370885: goto L213;
            case 102844228: goto L209;
            case 165221241: goto L205;
            case 182191441: goto L201;
            case 245388979: goto L197;
            case 287431619: goto L193;
            case 307593612: goto L189;
            case 308517133: goto L185;
            case 316215098: goto L181;
            case 316215116: goto L177;
            case 316246811: goto L173;
            case 316246818: goto L169;
            case 407160593: goto L165;
            case 507412548: goto L161;
            case 793982701: goto L157;
            case 794038622: goto L153;
            case 794040393: goto L149;
            case 835649806: goto L145;
            case 917340916: goto L141;
            case 958008161: goto L137;
            case 1060579533: goto L133;
            case 1150207623: goto L129;
            case 1176899427: goto L125;
            case 1280332038: goto L121;
            case 1306947716: goto L117;
            case 1349174697: goto L113;
            case 1522194893: goto L109;
            case 1691543273: goto L105;
            case 1691544261: goto L101;
            case 1709443163: goto L97;
            case 1865889110: goto L93;
            case 1906253259: goto L89;
            case 1977196784: goto L85;
            case 2006372676: goto L81;
            case 2019281702: goto L77;
            case 2029784656: goto L73;
            case 2030379515: goto L69;
            case 2033393791: goto L65;
            case 2047190025: goto L61;
            case 2047252157: goto L57;
            case 2048319463: goto L53;
            case 2048855701: goto L49;
            default: goto L47;
        };
    L47:
        r1 = -1;
    L607:
        switch(r1) {
            case 0: goto L624;
            case 1: goto L624;
            case 2: goto L624;
            case 3: goto L624;
            case 4: goto L624;
            case 5: goto L624;
            case 6: goto L624;
            case 7: goto L624;
            case 8: goto L624;
            case 9: goto L624;
            case 10: goto L624;
            case 11: goto L624;
            case 12: goto L624;
            case 13: goto L624;
            case 14: goto L624;
            case 15: goto L624;
            case 16: goto L624;
            case 17: goto L624;
            case 18: goto L624;
            case 19: goto L624;
            case 20: goto L624;
            case 21: goto L624;
            case 22: goto L624;
            case 23: goto L624;
            case 24: goto L624;
            case 25: goto L624;
            case 26: goto L624;
            case 27: goto L624;
            case 28: goto L624;
            case 29: goto L624;
            case 30: goto L624;
            case 31: goto L624;
            case 32: goto L624;
            case 33: goto L624;
            case 34: goto L624;
            case 35: goto L624;
            case 36: goto L624;
            case 37: goto L624;
            case 38: goto L624;
            case 39: goto L624;
            case 40: goto L624;
            case 41: goto L624;
            case 42: goto L624;
            case 43: goto L624;
            case 44: goto L624;
            case 45: goto L624;
            case 46: goto L624;
            case 47: goto L624;
            case 48: goto L624;
            case 49: goto L624;
            case 50: goto L624;
            case 51: goto L624;
            case 52: goto L624;
            case 53: goto L624;
            case 54: goto L624;
            case 55: goto L624;
            case 56: goto L624;
            case 57: goto L624;
            case 58: goto L624;
            case 59: goto L624;
            case 60: goto L624;
            case 61: goto L624;
            case 62: goto L624;
            case 63: goto L624;
            case 64: goto L624;
            case 65: goto L624;
            case 66: goto L624;
            case 67: goto L624;
            case 68: goto L624;
            case 69: goto L624;
            case 70: goto L624;
            case 71: goto L624;
            case 72: goto L624;
            case 73: goto L624;
            case 74: goto L624;
            case 75: goto L624;
            case 76: goto L624;
            case 77: goto L624;
            case 78: goto L624;
            case 79: goto L624;
            case 80: goto L624;
            case 81: goto L624;
            case 82: goto L624;
            case 83: goto L624;
            case 84: goto L624;
            case 85: goto L624;
            case 86: goto L624;
            case 87: goto L624;
            case 88: goto L624;
            case 89: goto L624;
            case 90: goto L624;
            case 91: goto L624;
            case 92: goto L624;
            case 93: goto L624;
            case 94: goto L624;
            case 95: goto L624;
            case 96: goto L624;
            case 97: goto L624;
            case 98: goto L624;
            case 99: goto L624;
            case 100: goto L624;
            case 101: goto L624;
            case 102: goto L624;
            case 103: goto L624;
            case 104: goto L624;
            case 105: goto L624;
            case 106: goto L624;
            case 107: goto L624;
            case 108: goto L624;
            case 109: goto L624;
            case 110: goto L624;
            case 111: goto L624;
            case 112: goto L624;
            case 113: goto L624;
            case 114: goto L624;
            case 115: goto L624;
            case 116: goto L624;
            case 117: goto L624;
            case 118: goto L624;
            case 119: goto L624;
            case 120: goto L624;
            case 121: goto L624;
            case 122: goto L624;
            case 123: goto L624;
            case 124: goto L624;
            case 125: goto L624;
            case 126: goto L624;
            case 127: goto L624;
            case 128: goto L624;
            case 129: goto L624;
            case 130: goto L624;
            case 131: goto L624;
            case 132: goto L624;
            case 133: goto L624;
            case 134: goto L624;
            case 135: goto L624;
            case 136: goto L624;
            case 137: goto L624;
            case 138: goto L624;
            case 139: goto L624;
            default: goto L608;
        };
    L608:
        String r3 = Util.MODEL;
        r3.hashCode();
        switch(r3.hashCode()) {
            case -594534941: goto L619;
            case 2006354: goto L615;
            case 2006367: goto L612;
            default: goto L610;
        };
    L610:
        r6 = -1;
    L622:
        switch(r6) {
            case 0: goto L624;
            case 1: goto L624;
            case 2: goto L624;
            default: goto L625;
        };
    L612:
        if (r3.equals("AFTN") == true) goto L622;
    L615:
        if (r3.equals("AFTA") == false) goto L610;
        r6 = 1;
        goto L622
    L619:
        if (r3.equals("JSN-L21") == false) goto L610;
        r6 = 0;
    L624:
        return true;
    L49:
        if (r2.equals("HWWAS-H") == false) goto L47;
        r1 = 139;
        goto L607
    L53:
        if (r2.equals("HWVNS-H") == false) goto L47;
        r1 = 138;
        goto L607
    L57:
        if (r2.equals("ELUGA_Prim") == false) goto L47;
        r1 = 137;
        goto L607
    L61:
        if (r2.equals("ELUGA_Note") == false) goto L47;
        r1 = 136;
        goto L607
    L65:
        if (r2.equals("ASUS_X00AD_2") == false) goto L47;
        r1 = 135;
        goto L607
    L69:
        if (r2.equals("HWCAM-H") == false) goto L47;
        r1 = 134;
        goto L607
    L73:
        if (r2.equals("HWBLN-H") == false) goto L47;
        r1 = 133;
        goto L607
    L77:
        if (r2.equals("DM-01K") == false) goto L47;
        r1 = 132;
        goto L607
    L81:
        if (r2.equals("BRAVIA_ATV3_4K") == false) goto L47;
        r1 = 131;
        goto L607
    L85:
        if (r2.equals("Infinix-X572") == false) goto L47;
        r1 = 130;
        goto L607
    L89:
        if (r2.equals("PB2-670M") == false) goto L47;
        r1 = 129;
        goto L607
    L93:
        if (r2.equals("santoni") == false) goto L47;
        r1 = UnsignedBytes.MAX_POWER_OF_TWO;
        goto L607
    L97:
        if (r2.equals("iball8735_9806") == false) goto L47;
        r1 = Ascii.DEL;
        goto L607
    L101:
        if (r2.equals("CPH1715") == false) goto L47;
        r1 = 126;
        goto L607
    L105:
        if (r2.equals("CPH1609") == false) goto L47;
        r1 = 125;
        goto L607
    L109:
        if (r2.equals("woods_f") == false) goto L47;
        r1 = 124;
        goto L607
    L113:
        if (r2.equals("htc_e56ml_dtul") == false) goto L47;
        r1 = 123;
        goto L607
    L117:
        if (r2.equals("EverStar_S") == false) goto L47;
        r1 = 122;
        goto L607
    L121:
        if (r2.equals("hwALE-H") == false) goto L47;
        r1 = 121;
        goto L607
    L125:
        if (r2.equals("itel_S41") == false) goto L47;
        r1 = 120;
        goto L607
    L129:
        if (r2.equals("LS-5017") == false) goto L47;
        r1 = 119;
        goto L607
    L133:
        if (r2.equals("panell_d") == false) goto L47;
        r1 = 118;
        goto L607
    L137:
        if (r2.equals("j2xlteins") == false) goto L47;
        r1 = 117;
        goto L607
    L141:
        if (r2.equals("A7000plus") == false) goto L47;
        r1 = 116;
        goto L607
    L145:
        if (r2.equals("manning") == false) goto L47;
        r1 = 115;
        goto L607
    L149:
        if (r2.equals("GIONEE_WBL7519") == false) goto L47;
        r1 = 114;
        goto L607
    L153:
        if (r2.equals("GIONEE_WBL7365") == false) goto L47;
        r1 = 113;
        goto L607
    L157:
        if (r2.equals("GIONEE_WBL5708") == false) goto L47;
        r1 = 112;
        goto L607
    L161:
        if (r2.equals("QM16XE_U") == false) goto L47;
        r1 = 111;
        goto L607
    L165:
        if (r2.equals("Pixi5-10_4G") == false) goto L47;
        r1 = 110;
        goto L607
    L169:
        if (r2.equals("TB3-850M") == false) goto L47;
        r1 = 109;
        goto L607
    L173:
        if (r2.equals("TB3-850F") == false) goto L47;
        r1 = 108;
        goto L607
    L177:
        if (r2.equals("TB3-730X") == false) goto L47;
        r1 = 107;
        goto L607
    L181:
        if (r2.equals("TB3-730F") == false) goto L47;
        r1 = 106;
        goto L607
    L185:
        if (r2.equals("A7020a48") == false) goto L47;
        r1 = 105;
        goto L607
    L189:
        if (r2.equals("A7010a48") == false) goto L47;
        r1 = 104;
        goto L607
    L193:
        if (r2.equals("griffin") == false) goto L47;
        r1 = 103;
        goto L607
    L197:
        if (r2.equals("marino_f") == false) goto L47;
        r1 = 102;
        goto L607
    L201:
        if (r2.equals("CPY83_I00") == false) goto L47;
        r1 = 101;
        goto L607
    L205:
        if (r2.equals("A2016a40") == false) goto L47;
        r1 = 100;
        goto L607
    L209:
        if (r2.equals("le_x6") == false) goto L47;
        r1 = 99;
        goto L607
    L213:
        if (r2.equals("l5460") == false) goto L47;
        r1 = 98;
        goto L607
    L217:
        if (r2.equals("i9031") == false) goto L47;
        r1 = 97;
        goto L607
    L221:
        if (r2.equals("X3_HK") == false) goto L47;
        r1 = 96;
        goto L607
    L225:
        if (r2.equals("V23GB") == false) goto L47;
        r1 = 95;
        goto L607
    L229:
        if (r2.equals("Q4310") == false) goto L47;
        r1 = 94;
        goto L607
    L233:
        if (r2.equals("Q4260") == false) goto L47;
        r1 = 93;
        goto L607
    L237:
        if (r2.equals("PRO7S") == false) goto L47;
        r1 = 92;
        goto L607
    L241:
        if (r2.equals("F3311") == false) goto L47;
        r1 = 91;
        goto L607
    L245:
        if (r2.equals("F3215") == false) goto L47;
        r1 = 90;
        goto L607
    L249:
        if (r2.equals("F3213") == false) goto L47;
        r1 = 89;
        goto L607
    L253:
        if (r2.equals("F3211") == false) goto L47;
        r1 = 88;
        goto L607
    L257:
        if (r2.equals("F3116") == false) goto L47;
        r1 = 87;
        goto L607
    L261:
        if (r2.equals("F3113") == false) goto L47;
        r1 = 86;
        goto L607
    L265:
        if (r2.equals("F3111") == false) goto L47;
        r1 = 85;
        goto L607
    L269:
        if (r2.equals("E5643") == false) goto L47;
        r1 = 84;
        goto L607
    L273:
        if (r2.equals("A1601") == false) goto L47;
        r1 = 83;
        goto L607
    L277:
        if (r2.equals("Aura_Note_2") == false) goto L47;
        r1 = 82;
        goto L607
    L281:
        if (r2.equals("602LV") == false) goto L47;
        r1 = 81;
        goto L607
    L285:
        if (r2.equals("601LV") == false) goto L47;
        r1 = 80;
        goto L607
    L289:
        if (r2.equals("MEIZU_M5") == false) goto L47;
        r1 = 79;
        goto L607
    L293:
        if (r2.equals("p212") == false) goto L47;
        r1 = 78;
        goto L607
    L297:
        if (r2.equals("mido") == false) goto L47;
        r1 = 77;
        goto L607
    L301:
        if (r2.equals("kate") == false) goto L47;
        r1 = 76;
        goto L607
    L305:
        if (r2.equals("fugu") == false) goto L47;
        r1 = 75;
        goto L607
    L309:
        if (r2.equals("XE2X") == false) goto L47;
        r1 = 74;
        goto L607
    L313:
        if (r2.equals("Q427") == false) goto L47;
        r1 = 73;
        goto L607
    L317:
        if (r2.equals("Q350") == false) goto L47;
        r1 = 72;
        goto L607
    L321:
        if (r2.equals("P681") == false) goto L47;
        r1 = 71;
        goto L607
    L325:
        if (r2.equals("F04J") == false) goto L47;
        r1 = 70;
        goto L607
    L329:
        if (r2.equals("F04H") == false) goto L47;
        r1 = 69;
        goto L607
    L333:
        if (r2.equals("F03H") == false) goto L47;
        r1 = 68;
        goto L607
    L337:
        if (r2.equals("F02H") == false) goto L47;
        r1 = 67;
        goto L607
    L341:
        if (r2.equals("F01J") == false) goto L47;
        r1 = 66;
        goto L607
    L345:
        if (r2.equals("F01H") == false) goto L47;
        r1 = 65;
        goto L607
    L349:
        if (r2.equals("1714") == false) goto L47;
        r1 = SignedBytes.MAX_POWER_OF_TWO;
        goto L607
    L353:
        if (r2.equals("1713") == false) goto L47;
        r1 = Utf8.REPLACEMENT_BYTE;
        goto L607
    L357:
        if (r2.equals("1601") == false) goto L47;
        r1 = 62;
        goto L607
    L361:
        if (r2.equals("flo") == false) goto L47;
        r1 = 61;
        goto L607
    L365:
        if (r2.equals("deb") == false) goto L47;
        r1 = 60;
        goto L607
    L369:
        if (r2.equals("cv3") == false) goto L47;
        r1 = 59;
        goto L607
    L373:
        if (r2.equals("cv1") == false) goto L47;
        r1 = 58;
        goto L607
    L377:
        if (r2.equals("Z80") == false) goto L47;
        r1 = 57;
        goto L607
    L381:
        if (r2.equals("QX1") == false) goto L47;
        r1 = 56;
        goto L607
    L385:
        if (r2.equals("PLE") == false) goto L47;
        r1 = 55;
        goto L607
    L389:
        if (r2.equals("P85") == false) goto L47;
        r1 = 54;
        goto L607
    L393:
        if (r2.equals("MX6") == false) goto L47;
        r1 = 53;
        goto L607
    L397:
        if (r2.equals("M5c") == false) goto L47;
        r1 = 52;
        goto L607
    L401:
        if (r2.equals("M04") == false) goto L47;
        r1 = 51;
        goto L607
    L405:
        if (r2.equals("JGZ") == false) goto L47;
        r1 = 50;
        goto L607
    L409:
        if (r2.equals("mh") == false) goto L47;
        r1 = 49;
        goto L607
    L413:
        if (r2.equals("b5") == false) goto L47;
        r1 = 48;
        goto L607
    L417:
        if (r2.equals("V5") == false) goto L47;
        r1 = 47;
        goto L607
    L421:
        if (r2.equals("V1") == false) goto L47;
        r1 = 46;
        goto L607
    L425:
        if (r2.equals("Q5") == false) goto L47;
        r1 = 45;
        goto L607
    L429:
        if (r2.equals("C1") == false) goto L47;
        r1 = 44;
        goto L607
    L433:
        if (r2.equals("woods_fn") == false) goto L47;
        r1 = 43;
        goto L607
    L437:
        if (r2.equals("ELUGA_A3_Pro") == false) goto L47;
        r1 = 42;
        goto L607
    L441:
        if (r2.equals("Z12_PRO") == false) goto L47;
        r1 = 41;
        goto L607
    L445:
        if (r2.equals("BLACK-1X") == false) goto L47;
        r1 = 40;
        goto L607
    L449:
        if (r2.equals("taido_row") == false) goto L47;
        r1 = 39;
        goto L607
    L453:
        if (r2.equals("Pixi4-7_3G") == false) goto L47;
        r1 = 38;
        goto L607
    L457:
        if (r2.equals("GIONEE_GBL7360") == false) goto L47;
        r1 = 37;
        goto L607
    L461:
        if (r2.equals("GiONEE_CBL7513") == false) goto L47;
        r1 = 36;
        goto L607
    L465:
        if (r2.equals("OnePlus5T") == false) goto L47;
        r1 = 35;
        goto L607
    L469:
        if (r2.equals("whyred") == false) goto L47;
        r1 = 34;
        goto L607
    L473:
        if (r2.equals("watson") == false) goto L47;
        r1 = 33;
        goto L607
    L477:
        if (r2.equals("SVP-DTV15") == false) goto L47;
        r1 = 32;
        goto L607
    L481:
        if (r2.equals("A7000-a") == false) goto L47;
        r1 = Ascii.US;
        goto L607
    L485:
        if (r2.equals("nicklaus_f") == false) goto L47;
        r1 = Ascii.RS;
        goto L607
    L489:
        if (r2.equals("tcl_eu") == false) goto L47;
        r1 = Ascii.GS;
        goto L607
    L493:
        if (r2.equals("ELUGA_Ray_X") == false) goto L47;
        r1 = Ascii.FS;
        goto L607
    L497:
        if (r2.equals("s905x018") == false) goto L47;
        r1 = Ascii.ESC;
        goto L607
    L501:
        if (r2.equals("A10-70L") == false) goto L47;
        r1 = Ascii.SUB;
        goto L607
    L505:
        if (r2.equals("A10-70F") == false) goto L47;
        r1 = Ascii.EM;
        goto L607
    L509:
        if (r2.equals("namath") == false) goto L47;
        r1 = Ascii.CAN;
        goto L607
    L513:
        if (r2.equals("Slate_Pro") == false) goto L47;
        r1 = Ascii.ETB;
        goto L607
    L517:
        if (r2.equals("iris60") == false) goto L47;
        r1 = Ascii.SYN;
        goto L607
    L521:
        if (r2.equals("BRAVIA_ATV2") == false) goto L47;
        r1 = Ascii.NAK;
        goto L607
    L525:
        if (r2.equals("GiONEE_GBL7319") == false) goto L47;
        r1 = Ascii.DC4;
        goto L607
    L529:
        if (r2.equals("panell_dt") == false) goto L47;
        r1 = 19;
        goto L607
    L533:
        if (r2.equals("panell_ds") == false) goto L47;
        r1 = Ascii.DC2;
        goto L607
    L537:
        if (r2.equals("panell_dl") == false) goto L47;
        r1 = 17;
        goto L607
    L541:
        if (r2.equals("vernee_M5") == false) goto L47;
        r1 = Ascii.DLE;
        goto L607
    L545:
        if (r2.equals("pacificrim") == false) goto L47;
        r1 = Ascii.SI;
        goto L607
    L549:
        if (r2.equals("Phantom6") == false) goto L47;
        r1 = Ascii.SO;
        goto L607
    L553:
        if (r2.equals("ComioS1") == false) goto L47;
        r1 = Ascii.CR;
        goto L607
    L557:
        if (r2.equals("XT1663") == false) goto L47;
        r1 = Ascii.FF;
        goto L607
    L561:
        if (r2.equals("RAIJIN") == false) goto L47;
        r1 = Ascii.VT;
        goto L607
    L565:
        if (r2.equals("AquaPowerM") == false) goto L47;
        r1 = 10;
        goto L607
    L569:
        if (r2.equals("PGN611") == false) goto L47;
        r1 = 9;
        goto L607
    L573:
        if (r2.equals("PGN610") == false) goto L47;
        r1 = 8;
        goto L607
    L577:
        if (r2.equals("PGN528") == false) goto L47;
        r1 = 7;
        goto L607
    L581:
        if (r2.equals("NX573J") == true) goto L607;
    L584:
        if (r2.equals("NX541J") == false) goto L47;
        r1 = 5;
        goto L607
    L588:
        if (r2.equals("CP8676_I02") == false) goto L47;
        r1 = 4;
        goto L607
    L592:
        if (r2.equals("K50a40") == false) goto L47;
        r1 = 3;
        goto L607
    L596:
        if (r2.equals("GIONEE_SWW1631") == false) goto L47;
        r1 = 2;
        goto L607
    L600:
        if (r2.equals("GIONEE_SWW1627") == false) goto L47;
        r1 = 1;
        goto L607
    L604:
        if (r2.equals("GIONEE_SWW1609") == false) goto L47;
        r1 = 0;
    L625:
        return false;
    }

    private static int getCodecMaxInputSize(MediaCodecInfo r5, String r6, int r7, int r8) {
        if (r7 == (-1)) goto L56;
        if (r8 == (-1)) goto L56;
        r6.hashCode();
        int r2 = 4;
        switch(r6.hashCode()) {
            case -1851077871: goto L34;
            case -1664118616: goto L30;
            case -1662541442: goto L26;
            case 1187890754: goto L22;
            case 1331836730: goto L18;
            case 1599127256: goto L14;
            case 1599127257: goto L10;
            default: goto L8;
        };
    L8:
        byte r9 = -1;
    L37:
        switch(r9) {
            case 0: goto L42;
            case 1: goto L40;
            case 2: goto L39;
            case 3: goto L40;
            case 4: goto L42;
            case 5: goto L40;
            case 6: goto L39;
            default: goto L38;
        };
    L38:
        return -1;
    L39:
        int r10 = r7 * r8;
    L55:
        return (r10 * 3) / (r2 * 2);
    L40:
        r10 = r7 * r8;
    L41:
        r2 = 2;
        goto L55
    L42:
        String r11 = Util.MODEL;
        if ("BRAVIA 4K 2015".equals(r11) == true) goto L56;
        if ("Amazon".equals(Util.MANUFACTURER) == true) goto L47;
    L53:
        r10 = ((Util.ceilDivide(r7, 16) * Util.ceilDivide(r8, 16)) * 16) * 16;
        goto L41
    L47:
        if ("KFSOWI".equals(r11) == true) goto L56;
        if ("AFTS".equals(r11) == false) goto L53;
        if (r5.secure == false) goto L53;
    L10:
        if (r6.equals(MimeTypes.VIDEO_VP9) == false) goto L8;
        r9 = 6;
        goto L37
    L14:
        if (r6.equals(MimeTypes.VIDEO_VP8) == false) goto L8;
        r9 = 5;
        goto L37
    L18:
        if (r6.equals("video/avc") == false) goto L8;
        r9 = 4;
        goto L37
    L22:
        if (r6.equals(MimeTypes.VIDEO_MP4V) == false) goto L8;
        r9 = 3;
        goto L37
    L26:
        if (r6.equals(MimeTypes.VIDEO_H265) == false) goto L8;
        r9 = 2;
        goto L37
    L30:
        if (r6.equals(MimeTypes.VIDEO_H263) == false) goto L8;
        r9 = 1;
        goto L37
    L34:
        if (r6.equals(MimeTypes.VIDEO_DOLBY_VISION) == false) goto L8;
        r9 = 0;
    L56:
        return -1;
    }

    private static Point getCodecMaxSize(MediaCodecInfo r13, Format r14) {
        int r0 = r14.height;
        int r1 = r14.width;
        int r2 = 0;
        if (r0 <= r1) goto L5;
        boolean r3 = true;
    L6:
        if (r3 == false) goto L8;
        int r4 = r0;
    L9:
        if (r3 == false) goto L11;
        r0 = r1;
    L11:
        float r5 = r0 / r4;
        int[] r6 = STANDARD_LONG_EDGE_VIDEO_PX;
        int r7 = r6.length;
    L13:
        if (r2 >= r7) goto L42;
        int r8 = r6[r2];
        int r9 = (int) (r8 * r5);
        if (r8 <= r4) goto L42;
        if (r9 <= r0) goto L42;
        if (Util.SDK_INT < 21) goto L44;
        if (r3 == false) goto L22;
        int r10 = r9;
    L23:
        if (r3 == true) goto L26;
        r8 = r9;
    L26:
        Point r11 = r13.alignVideoSizeV21(r10, r8);
        if (r13.isVideoSizeAndRateSupportedV21(r11.x, r11.y, r14.frameRate) == false) goto L41;
        return r11;
    L41:
        r2 = r2 + 1;
        goto L13
    L22:
        r10 = r8;
        goto L23
    L44:
        int r12 = Util.ceilDivide(r8, 16) * 16;     // Catch: MediaCodecUtil.DecoderQueryException -> L43
        int r15 = Util.ceilDivide(r9, 16) * 16;     // Catch: MediaCodecUtil.DecoderQueryException -> L43
        if ((r12 * r15) > MediaCodecUtil.maxH264DecodableFrameSize()) goto L41;
        if (r3 == false) goto L35;
        int r16 = r15;
    L36:
        if (r3 == true) goto L39;
        r12 = r15;
    L39:
        return new Point(r16, r12);
    L35:
        r16 = r12;
    L42:
        return null;
    L8:
        r4 = r1;
        goto L9
    L5:
        r3 = false;
        goto L6
    }

    protected static int getMaxInputSize(MediaCodecInfo r3, Format r4) {
        if (r4.maxInputSize == (-1)) goto L10;
        int r5 = r4.initializationData.size();
        int r0 = 0;
        int r1 = 0;
    L5:
        if (r0 >= r5) goto L8;
        r1 = r1 + r4.initializationData.get(r0).length;
        r0 = r0 + 1;
        goto L5
    L8:
        return r4.maxInputSize + r1;
    L10:
        return getCodecMaxInputSize(r3, r4.sampleMimeType, r4.width, r4.height);
    }

    private static boolean isBufferLate(long r3) {
        if (r3 >= (-30000)) goto L5;
        return true;
    L5:
        return false;
    }

    private static boolean isBufferVeryLate(long r3) {
        if (r3 >= (-500000)) goto L5;
        return true;
    L5:
        return false;
    }

    private void maybeNotifyDroppedFrames() {
        if (this.droppedFrames <= 0) goto L6;
        long r0 = SystemClock.elapsedRealtime();
        long r2 = r0 - this.droppedFrameAccumulationStartTimeMs;
        this.eventDispatcher.droppedFrames(this.droppedFrames, r2);
        this.droppedFrames = 0;
        this.droppedFrameAccumulationStartTimeMs = r0;
        return;
    }

    private void maybeNotifyVideoFrameProcessingOffset() {
        int r0 = this.videoFrameProcessingOffsetCount;
        if (r0 == 0) goto L6;
        this.eventDispatcher.reportVideoFrameProcessingOffset(this.totalVideoFrameProcessingOffsetUs, r0);
        this.totalVideoFrameProcessingOffsetUs = 0;
        this.videoFrameProcessingOffsetCount = 0;
        return;
    }

    private void maybeNotifyVideoSizeChanged() {
        int r0 = this.currentWidth;
        if (r0 == (-1)) goto L5;
    L6:
        VideoSize r1 = this.reportedVideoSize;
        if (r1 != null) goto L9;
    L16:
        VideoSize r2 = new VideoSize(this.currentWidth, this.currentHeight, this.currentUnappliedRotationDegrees, this.currentPixelWidthHeightRatio);
        this.reportedVideoSize = r2;
        this.eventDispatcher.videoSizeChanged(r2);
        return;
    L9:
        if (r1.width != r0) goto L16;
        if (r1.height != this.currentHeight) goto L16;
        if (r1.unappliedRotationDegrees != this.currentUnappliedRotationDegrees) goto L16;
        if (r1.pixelWidthHeightRatio != this.currentPixelWidthHeightRatio) goto L16;
        return;
    L5:
        if (this.currentHeight != (-1)) goto L6;
    }

    private void maybeRenotifyRenderedFirstFrame() {
        if (this.haveReportedFirstFrameRenderedForCurrentSurface == false) goto L6;
        this.eventDispatcher.renderedFirstFrame(this.surface);
        return;
    }

    private void maybeRenotifyVideoSizeChanged() {
        VideoSize r0 = this.reportedVideoSize;
        if (r0 == null) goto L6;
        this.eventDispatcher.videoSizeChanged(r0);
        return;
    }

    private void notifyFrameMetadataListener(long r8, long r10, Format r12) {
        VideoFrameMetadataListener r0 = this.frameMetadataListener;
        if (r0 == null) goto L6;
        r0.onVideoFrameAboutToBeRendered(r8, r10, r12, getCodecOutputMediaFormat());
        return;
    }

    private void onProcessedTunneledEndOfStream() {
        setPendingOutputEndOfStream();
    }

    private static void setHdr10PlusInfoV29(MediaCodecAdapter r2, byte[] r3) {
        Bundle r0 = new Bundle();
        r0.putByteArray("hdr10-plus-info", r3);
        r2.setParameters(r0);
    }

    private void setJoiningDeadlineMs() {
        if (this.allowedJoiningTimeMs <= 0) goto L5;
        long r0 = SystemClock.elapsedRealtime() + this.allowedJoiningTimeMs;
    L6:
        this.joiningDeadlineMs = r0;
        return;
    L5:
        r0 = C.TIME_UNSET;
        goto L6
    }

    private void setOutput(Object r5) throws ExoPlaybackException {
        if ((r5 instanceof Surface) == false) goto L5;
        Surface r6 = (Surface) r5;
    L6:
        if (r6 != null) goto L16;
        Surface r0 = this.dummySurface;
        if (r0 == null) goto L10;
        r6 = r0;
        goto L16
    L10:
        MediaCodecInfo r1 = getCodecInfo();
        if (r1 == null) goto L16;
        if (shouldUseDummySurface(r1) == false) goto L16;
        r6 = DummySurface.newInstanceV17(this.context, r1.secure);
        this.dummySurface = r6;
    L16:
        if (this.surface == r6) goto L33;
        this.surface = r6;
        this.frameReleaseHelper.onSurfaceChanged(r6);
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        int r2 = getState();
        MediaCodecAdapter r3 = getCodec();
        if (r3 != null) goto L20;
    L26:
        if (r6 != null) goto L28;
    L32:
        clearReportedVideoSize();
        clearRenderedFirstFrame();
        return;
    L28:
        if (r6 == this.dummySurface) goto L32;
        maybeRenotifyVideoSizeChanged();
        clearRenderedFirstFrame();
        if (r2 != 2) goto L38;
        setJoiningDeadlineMs();
        return;
    L38:
        return;
    L20:
        if (Util.SDK_INT < 23) goto L25;
        if (r6 == null) goto L25;
        if (this.codecNeedsSetOutputSurfaceWorkaround == true) goto L25;
        setOutputSurfaceV23(r3, r6);
    L25:
        releaseCodec();
        maybeInitCodecOrBypass();
        goto L26
    L33:
        if (r6 != null) goto L35;
        return;
    L35:
        if (r6 == this.dummySurface) goto L42;
        maybeRenotifyVideoSizeChanged();
        maybeRenotifyRenderedFirstFrame();
        return;
    L42:
        return;
    L5:
        r6 = null;
        goto L6
    }

    private boolean shouldUseDummySurface(MediaCodecInfo r3) {
        if (Util.SDK_INT >= 23) goto L5;
    L13:
        return false;
    L5:
        if (this.tunneling == true) goto L13;
        if (codecNeedsSetOutputSurfaceWorkaround(r3.name) == true) goto L13;
        if (r3.secure == true) goto L11;
    L12:
        return true;
    L11:
        if (DummySurface.isSecureSupported(this.context) == false) goto L13;
        goto L12
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected DecoderReuseEvaluation canReuseCodec(MediaCodecInfo r9, Format r10, Format r11) {
        DecoderReuseEvaluation r0 = r9.canReuseCodec(r10, r11);
        int r1 = r0.discardReasons;
        int r2 = r11.width;
        CodecMaxValues r3 = this.codecMaxValues;
        if (r2 <= r3.width) goto L5;
    L6:
        r1 = r1 | 256;
    L8:
        if (getMaxInputSize(r9, r11) <= this.codecMaxValues.inputSize) goto L10;
        r1 = r1 | 64;
    L10:
        int r7 = r1;
        String r4 = r9.name;
        if (r7 == 0) goto L13;
        int r6 = 0;
    L15:
        return new DecoderReuseEvaluation(r4, r10, r11, r6, r7);
    L13:
        r6 = r0.result;
        goto L15
    L5:
        if (r11.height <= r3.height) goto L8;
        goto L6
    }

    protected boolean codecNeedsSetOutputSurfaceWorkaround(String r2) {
        if (r2.startsWith("OMX.google") == false) goto L7;
        return false;
    L7:
        monitor-enter(MediaCodecVideoRenderer.class);
    L14:
        th = move-exception;
        throw th;
    L9:
        if (evaluatedDeviceNeedsSetOutputSurfaceWorkaround == true) goto L11;
        deviceNeedsSetOutputSurfaceWorkaround = evaluateDeviceNeedsSetOutputSurfaceWorkaround();     // Catch: Throwable -> L14
        evaluatedDeviceNeedsSetOutputSurfaceWorkaround = true;     // Catch: Throwable -> L14
    L11:
        monitor-exit(MediaCodecVideoRenderer.class);     // Catch: Throwable -> L14
        return deviceNeedsSetOutputSurfaceWorkaround;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected MediaCodecDecoderException createDecoderException(Throwable r3, MediaCodecInfo r4) {
        return new MediaCodecVideoDecoderException(r3, r4, this.surface);
    }

    protected void dropOutputBuffer(MediaCodecAdapter r1, int r2, long r3) {
        TraceUtil.beginSection("dropVideoBuffer");
        r1.releaseOutputBuffer(r2, false);
        TraceUtil.endSection();
        updateDroppedBufferCounters(1);
    }

    protected CodecMaxValues getCodecMaxValues(MediaCodecInfo r13, Format r14, Format[] r15) {
        int r0 = r14.width;
        int r1 = r14.height;
        int r2 = getMaxInputSize(r13, r14);
        if (r15.length != 1) goto L10;
        if (r2 == (-1)) goto L9;
        int r16 = getCodecMaxInputSize(r13, r14.sampleMimeType, r14.width, r14.height);
        if (r16 == (-1)) goto L9;
        r2 = Math.min((int) (r2 * INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR), r16);
    L9:
        return new CodecMaxValues(r0, r1, r2);
    L10:
        int r3 = r15.length;
        int r7 = 0;
        boolean r8 = false;
    L11:
        if (r7 >= r3) goto L28;
        Format r9 = r15[r7];
        if (r14.colorInfo == null) goto L18;
        if (r9.colorInfo != null) goto L18;
        r9 = r9.buildUpon().setColorInfo(r14.colorInfo).build();
    L18:
        if (r13.canReuseCodec(r14, r9).result == 0) goto L27;
        int r10 = r9.width;
        if (r10 != (-1)) goto L22;
    L25:
        boolean r11 = true;
    L26:
        r8 = r8 | r11;
        r0 = Math.max(r0, r10);
        r1 = Math.max(r1, r9.height);
        r2 = Math.max(r2, getMaxInputSize(r13, r9));
        goto L27
    L22:
        if (r9.height == (-1)) goto L25;
        r11 = false;
    L27:
        r7 = r7 + 1;
        goto L11
    L28:
        if (r8 == false) goto L33;
        StringBuilder r4 = new StringBuilder(66);
        r4.append("Resolutions unknown. Codec max resolution: ");
        r4.append(r0);
        r4.append("x");
        r4.append(r1);
        Log.w(TAG, r4.toString());
        Point r5 = getCodecMaxSize(r13, r14);
        if (r5 == null) goto L33;
        r0 = Math.max(r0, r5.x);
        r1 = Math.max(r1, r5.y);
        r2 = Math.max(r2, getCodecMaxInputSize(r13, r14.sampleMimeType, r0, r1));
        StringBuilder r17 = new StringBuilder(57);
        r17.append("Codec max resolution adjusted to: ");
        r17.append(r0);
        r17.append("x");
        r17.append(r1);
        Log.w(TAG, r17.toString());
    L33:
        return new CodecMaxValues(r0, r1, r2);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean getCodecNeedsEosPropagation() {
        if (this.tunneling == true) goto L5;
    L7:
        return false;
    L5:
        if (Util.SDK_INT >= 23) goto L7;
        return true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected float getCodecOperatingRateV23(float r6, Format r7, Format[] r8) {
        int r9 = r8.length;
        int r1 = 0;
        float r2 = -1.0f;
    L3:
        if (r1 >= r9) goto L9;
        float r3 = r8[r1].frameRate;
        if (r3 == (-1.0f)) goto L7;
        r2 = Math.max(r2, r3);
    L7:
        r1 = r1 + 1;
        goto L3
    L9:
        if (r2 != (-1.0f)) goto L12;
        return -1.0f;
    L12:
        return r2 * r6;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected List<MediaCodecInfo> getDecoderInfos(MediaCodecSelector r2, Format r3, boolean r4) throws MediaCodecUtil.DecoderQueryException {
        return getDecoderInfos(r2, r3, r4, this.tunneling);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected MediaCodecAdapter.Configuration getMediaCodecConfiguration(MediaCodecInfo r9, Format r10, MediaCrypto r11, float r12) {
        String r2 = r9.codecMimeType;
        CodecMaxValues r3 = getCodecMaxValues(r9, r10, getStreamFormats());
        this.codecMaxValues = r3;
        boolean r5 = this.deviceNeedsNoPostProcessWorkaround;
        if (this.tunneling == false) goto L5;
        int r6 = this.tunnelingAudioSessionId;
    L6:
        MediaFormat r4 = getMediaFormat(r10, r2, r3, r12, r5, r6);
        if (this.surface != null) goto L17;
        if (shouldUseDummySurface(r9) == false) goto L15;
        if (this.dummySurface != null) goto L13;
        this.dummySurface = DummySurface.newInstanceV17(this.context, r9.secure);
    L13:
        this.surface = this.dummySurface;
        goto L17
    L15:
        throw new IllegalStateException();
    L17:
        return new MediaCodecAdapter.Configuration(r9, r4, r10, this.surface, r11, 0);
    L5:
        r6 = 0;
        goto L6
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(21)
    protected MediaFormat getMediaFormat(Format r3, String r4, CodecMaxValues r5, float r6, boolean r7, int r8) {
        MediaFormat r0 = new MediaFormat();
        r0.setString("mime", r4);
        r0.setInteger("width", r3.width);
        r0.setInteger("height", r3.height);
        MediaFormatUtil.setCsdBuffers(r0, r3.initializationData);
        MediaFormatUtil.maybeSetFloat(r0, "frame-rate", r3.frameRate);
        MediaFormatUtil.maybeSetInteger(r0, "rotation-degrees", r3.rotationDegrees);
        MediaFormatUtil.maybeSetColorInfo(r0, r3.colorInfo);
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(r3.sampleMimeType) == false) goto L7;
        Pair<Integer, Integer> r9 = MediaCodecUtil.getCodecProfileAndLevel(r3);
        if (r9 == null) goto L7;
        MediaFormatUtil.maybeSetInteger(r0, Scopes.PROFILE, ((Integer) r9.first).intValue());
    L7:
        r0.setInteger("max-width", r5.width);
        r0.setInteger("max-height", r5.height);
        MediaFormatUtil.maybeSetInteger(r0, "max-input-size", r5.inputSize);
        if (Util.SDK_INT < 23) goto L12;
        r0.setInteger("priority", 0);
        if (r6 == (-1.0f)) goto L12;
        r0.setFloat("operating-rate", r6);
    L12:
        if (r7 == false) goto L14;
        r0.setInteger("no-post-process", 1);
        r0.setInteger("auto-frc", 0);
    L14:
        if (r8 == 0) goto L16;
        configureTunnelingV21(r0, r8);
    L16:
        return r0;
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public String getName() {
        return TAG;
    }

    protected Surface getSurface() {
        return this.surface;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @TargetApi(29)
    protected void handleInputBufferSupplementalData(DecoderInputBuffer r8) throws ExoPlaybackException {
        if (this.codecHandlesHdr10PlusOutOfBandMetadata == true) goto L5;
        return;
    L5:
        ByteBuffer r9 = (ByteBuffer) Assertions.checkNotNull(r8.supplementalData);
        if (r9.remaining() < 7) goto L18;
        byte r0 = r9.get();
        short r1 = r9.getShort();
        short r2 = r9.getShort();
        byte r3 = r9.get();
        byte r4 = r9.get();
        r9.position(0);
        if (r0 == (-75)) goto L10;
        return;
    L10:
        if (r1 == 60) goto L12;
        return;
    L12:
        if (r2 == 1) goto L14;
        return;
    L14:
        if (r3 != 4) goto L22;
        if (r4 != 0) goto L23;
        byte[] r5 = new byte[r9.remaining()];
        r9.get(r5);
        r9.position(0);
        setHdr10PlusInfoV29(getCodec(), r5);
        return;
    L23:
        return;
    L22:
        return;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int r2, Object r3) throws ExoPlaybackException {
        if (r2 != 1) goto L5;
        setOutput(r3);
        return;
    L5:
        if (r2 != 4) goto L7;
        this.scalingMode = ((Integer) r3).intValue();
        MediaCodecAdapter r4 = getCodec();
        if (r4 == null) goto L27;
        r4.setVideoScalingMode(this.scalingMode);
        return;
    L27:
        return;
    L7:
        if (r2 != 6) goto L9;
        this.frameMetadataListener = (VideoFrameMetadataListener) r3;
        return;
    L9:
        if (r2 == 102) goto L11;
        super.handleMessage(r2, r3);
        return;
    L11:
        int r5 = ((Integer) r3).intValue();
        if (this.tunnelingAudioSessionId == r5) goto L23;
        this.tunnelingAudioSessionId = r5;
        if (this.tunneling == false) goto L24;
        releaseCodec();
        return;
    L24:
        return;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        if (super.isReady() == false) goto L17;
        if (this.renderedFirstFrameAfterReset == true) goto L14;
        Surface r0 = this.dummySurface;
        if (r0 == null) goto L11;
        if (this.surface == r0) goto L14;
    L11:
        if (getCodec() == null) goto L14;
        if (this.tunneling == false) goto L17;
    L14:
        this.joiningDeadlineMs = C.TIME_UNSET;
        return true;
    L17:
        if (this.joiningDeadlineMs != C.TIME_UNSET) goto L20;
        return false;
    L20:
        if (SystemClock.elapsedRealtime() >= this.joiningDeadlineMs) goto L22;
        return true;
    L22:
        this.joiningDeadlineMs = C.TIME_UNSET;
        return false;
    }

    protected boolean maybeDropBuffersToKeyframe(long r3, boolean r5) throws ExoPlaybackException {
        int r4 = skipSource(r3);
        if (r4 != 0) goto L6;
        return false;
    L6:
        DecoderCounters r6 = this.decoderCounters;
        r6.droppedToKeyframeCount++;
        int r0 = this.buffersInCodecCount + r4;
        if (r5 == false) goto L9;
        r6.skippedOutputBufferCount += r0;
    L10:
        flushOrReinitializeCodec();
        return true;
    L9:
        updateDroppedBufferCounters(r0);
        goto L10
    }

    void maybeNotifyRenderedFirstFrame() {
        this.renderedFirstFrameAfterEnable = true;
        if (this.renderedFirstFrameAfterReset == true) goto L6;
        this.renderedFirstFrameAfterReset = true;
        this.eventDispatcher.renderedFirstFrame(this.surface);
        this.haveReportedFirstFrameRenderedForCurrentSurface = true;
        return;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void onCodecError(Exception r3) {
        Log.e(TAG, "Video codec error", r3);
        this.eventDispatcher.videoCodecError(r3);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void onCodecInitialized(String r7, long r8, long r10) {
        this.eventDispatcher.decoderInitialized(r7, r8, r10);
        this.codecNeedsSetOutputSurfaceWorkaround = codecNeedsSetOutputSurfaceWorkaround(r7);
        this.codecHandlesHdr10PlusOutOfBandMetadata = ((MediaCodecInfo) Assertions.checkNotNull(getCodecInfo())).isHdr10PlusOutOfBandMetadataSupported();
        if (Util.SDK_INT >= 23) goto L5;
        return;
    L5:
        if (this.tunneling == false) goto L9;
        this.tunnelingOnFrameRenderedListener = new OnFrameRenderedListenerV23(this, (MediaCodecAdapter) Assertions.checkNotNull(getCodec()));
        return;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void onCodecReleased(String r2) {
        this.eventDispatcher.decoderReleased(r2);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    protected void onDisabled() {
        clearReportedVideoSize();
        clearRenderedFirstFrame();
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        this.frameReleaseHelper.onDisabled();
        this.tunnelingOnFrameRenderedListener = null;
        super.onDisabled();     // Catch: Throwable -> L6
        this.eventDispatcher.disabled(this.decoderCounters);
        return;
    L6:
        th = move-exception;
        this.eventDispatcher.disabled(this.decoderCounters);
        throw th;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    protected void onEnabled(boolean r3, boolean r4) throws ExoPlaybackException {
        super.onEnabled(r3, r4);
        boolean r5 = getConfiguration().tunneling;
        if (r5 == true) goto L5;
    L8:
        boolean r1 = true;
    L9:
        Assertions.checkState(r1);
        if (this.tunneling == r5) goto L12;
        this.tunneling = r5;
        releaseCodec();
    L12:
        this.eventDispatcher.enabled(this.decoderCounters);
        this.frameReleaseHelper.onEnabled();
        this.mayRenderFirstFrameAfterEnableIfNotStarted = r4;
        this.renderedFirstFrameAfterEnable = false;
        return;
    L5:
        if (this.tunnelingAudioSessionId != 0) goto L8;
        r1 = false;
        goto L9
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected DecoderReuseEvaluation onInputFormatChanged(FormatHolder r3) throws ExoPlaybackException {
        DecoderReuseEvaluation r0 = super.onInputFormatChanged(r3);
        this.eventDispatcher.inputFormatChanged(r3.format, r0);
        return r0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void onOutputFormatChanged(Format r7, MediaFormat r8) {
        MediaCodecAdapter r0 = getCodec();
        if (r0 == null) goto L6;
        r0.setVideoScalingMode(this.scalingMode);
    L6:
        if (this.tunneling == false) goto L8;
        this.currentWidth = r7.width;
        this.currentHeight = r7.height;
    L26:
        float r9 = r7.pixelWidthHeightRatio;
        this.currentPixelWidthHeightRatio = r9;
        if (Util.SDK_INT < 21) goto L33;
        int r1 = r7.rotationDegrees;
        if (r1 != 90) goto L31;
    L32:
        int r2 = this.currentWidth;
        this.currentWidth = this.currentHeight;
        this.currentHeight = r2;
        this.currentPixelWidthHeightRatio = 1.0f / r9;
    L34:
        this.frameReleaseHelper.onFormatChanged(r7.frameRate);
        return;
    L31:
        if (r1 != 270) goto L34;
    L33:
        this.currentUnappliedRotationDegrees = r7.rotationDegrees;
        goto L34
    L8:
        Assertions.checkNotNull(r8);
        if (r8.containsKey(KEY_CROP_RIGHT) == true) goto L11;
    L17:
        boolean r3 = false;
    L18:
        if (r3 == false) goto L20;
        int r4 = (r8.getInteger(KEY_CROP_RIGHT) - r8.getInteger(KEY_CROP_LEFT)) + 1;
    L21:
        this.currentWidth = r4;
        if (r3 == false) goto L24;
        int r5 = (r8.getInteger(KEY_CROP_BOTTOM) - r8.getInteger(KEY_CROP_TOP)) + 1;
    L25:
        this.currentHeight = r5;
        goto L26
    L24:
        r5 = r8.getInteger("height");
        goto L25
    L20:
        r4 = r8.getInteger("width");
        goto L21
    L11:
        if (r8.containsKey(KEY_CROP_LEFT) == false) goto L17;
        if (r8.containsKey(KEY_CROP_BOTTOM) == false) goto L17;
        if (r8.containsKey(KEY_CROP_TOP) == false) goto L17;
        r3 = true;
        goto L18
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    protected void onPositionReset(long r2, boolean r4) throws ExoPlaybackException {
        super.onPositionReset(r2, r4);
        clearRenderedFirstFrame();
        this.frameReleaseHelper.onPositionReset();
        this.lastBufferPresentationTimeUs = C.TIME_UNSET;
        this.initialPositionUs = C.TIME_UNSET;
        this.consecutiveDroppedFrameCount = 0;
        if (r4 == false) goto L5;
        setJoiningDeadlineMs();
        return;
    L5:
        this.joiningDeadlineMs = C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void onProcessedOutputBuffer(long r1) {
        super.onProcessedOutputBuffer(r1);
        if (this.tunneling == true) goto L6;
        this.buffersInCodecCount--;
        return;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void onProcessedStreamChange() {
        super.onProcessedStreamChange();
        clearRenderedFirstFrame();
    }

    protected void onProcessedTunneledBuffer(long r3) throws ExoPlaybackException {
        updateOutputFormatForTime(r3);
        maybeNotifyVideoSizeChanged();
        this.decoderCounters.renderedOutputBufferCount++;
        maybeNotifyRenderedFirstFrame();
        onProcessedOutputBuffer(r3);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void onQueueInputBuffer(DecoderInputBuffer r4) throws ExoPlaybackException {
        boolean r0 = this.tunneling;
        if (r0 == true) goto L6;
        this.buffersInCodecCount++;
    L6:
        if (Util.SDK_INT >= 23) goto L10;
        if (r0 == false) goto L11;
        onProcessedTunneledBuffer(r4.timeUs);
        return;
    L11:
        return;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    protected void onReset() {
        super.onReset();     // Catch: Throwable -> L11
        Surface r1 = this.dummySurface;
        if (r1 != null) goto L7;
        return;
    L7:
        if (this.surface != r1) goto L9;
        this.surface = null;
    L9:
        r1.release();
        this.dummySurface = null;
        return;
    L11:
        th = move-exception;
        if (this.dummySurface == null) goto L18;
        Surface r2 = this.surface;
        Surface r3 = this.dummySurface;
        if (r2 != r3) goto L17;
        this.surface = null;
    L17:
        r3.release();
        this.dummySurface = null;
    L18:
        throw th;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    protected void onStarted() {
        super.onStarted();
        this.droppedFrames = 0;
        this.droppedFrameAccumulationStartTimeMs = SystemClock.elapsedRealtime();
        this.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
        this.totalVideoFrameProcessingOffsetUs = 0;
        this.videoFrameProcessingOffsetCount = 0;
        this.frameReleaseHelper.onStarted();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    protected void onStopped() {
        this.joiningDeadlineMs = C.TIME_UNSET;
        maybeNotifyDroppedFrames();
        maybeNotifyVideoFrameProcessingOffset();
        this.frameReleaseHelper.onStopped();
        super.onStopped();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean processOutputBuffer(long r22, long r24, MediaCodecAdapter r26, ByteBuffer r27, int r28, int r29, int r30, long r31, boolean r33, boolean r34, Format r35) throws ExoPlaybackException {
        Assertions.checkNotNull(r26);
        if (this.initialPositionUs != C.TIME_UNSET) goto L6;
        this.initialPositionUs = r22;
    L6:
        if (r31 == this.lastBufferPresentationTimeUs) goto L8;
        this.frameReleaseHelper.onNextFrame(r31);
        this.lastBufferPresentationTimeUs = r31;
    L8:
        long r2 = getOutputStreamOffsetUs();
        long r11 = r31 - r2;
        if (r33 == false) goto L13;
        if (r34 == true) goto L13;
        skipOutputBuffer(r26, r28, r11);
        return true;
    L13:
        double r14 = getPlaybackSpeed();
        if (getState() != 2) goto L16;
        boolean r4 = true;
    L17:
        long r17 = SystemClock.elapsedRealtime() * 1000;
        long r0 = (long) ((r31 - r22) / r14);
        if (r4 == false) goto L21;
        r0 = r0 - (r17 - r24);
    L21:
        if (this.surface == this.dummySurface) goto L23;
        long r15 = r17 - this.lastRenderRealtimeUs;
        if (this.renderedFirstFrameAfterEnable == true) goto L34;
        if (r4 == false) goto L31;
    L35:
        boolean r5 = true;
    L38:
        if (this.joiningDeadlineMs == C.TIME_UNSET) goto L40;
    L46:
        boolean r3 = false;
    L48:
        if (r3 == false) goto L56;
        long r6 = System.nanoTime();
        notifyFrameMetadataListener(r11, r6, r35);
        if (Util.SDK_INT < 21) goto L52;
        renderOutputBufferV21(r26, r28, r11, r6);
    L53:
        updateVideoFrameProcessingOffsetCounters(r0);
        return true;
    L52:
        renderOutputBuffer(r26, r28, r11);
        goto L53
    L56:
        if (r4 == true) goto L58;
    L90:
        return false;
    L58:
        if (r22 == this.initialPositionUs) goto L90;
        long r7 = System.nanoTime();
        long r16 = this.frameReleaseHelper.adjustReleaseTime((r0 * 1000) + r7);
        long r8 = (r16 - r7) / 1000;
        if (this.joiningDeadlineMs == C.TIME_UNSET) goto L63;
        boolean r9 = true;
    L64:
        boolean r13 = r9;
        if (shouldDropBuffersToKeyframe(r8, r24, r34) == false) goto L70;
        if (maybeDropBuffersToKeyframe(r22, r13) == false) goto L70;
        return false;
    L70:
        if (shouldDropOutputBuffer(r8, r24, r34) == false) goto L76;
        if (r13 == false) goto L73;
        skipOutputBuffer(r26, r28, r11);
    L74:
        updateVideoFrameProcessingOffsetCounters(r8);
        return true;
    L73:
        dropOutputBuffer(r26, r28, r11);
        goto L74
    L76:
        if (Util.SDK_INT < 21) goto L81;
        if (r8 >= 50000) goto L90;
        notifyFrameMetadataListener(r11, r16, r35);
        renderOutputBufferV21(r26, r28, r11, r16);
        updateVideoFrameProcessingOffsetCounters(r8);
        return true;
    L81:
        if (r8 >= 30000) goto L90;
        if (r8 > 11000) goto L91;
    L89:
        notifyFrameMetadataListener(r11, r16, r35);
        renderOutputBuffer(r26, r28, r11);
        updateVideoFrameProcessingOffsetCounters(r8);
        return true;
    L91:
        Thread.sleep((r8 - 10000) / 1000);     // Catch: InterruptedException -> L87
    L87:
        Thread.currentThread().interrupt();
        return false;
    L63:
        r9 = false;
        goto L64
    L40:
        if (r22 < r2) goto L46;
        if (r5 == true) goto L45;
        if (r4 == false) goto L46;
        if (shouldForceRenderOutputBuffer(r0, r15) == false) goto L46;
    L45:
        r3 = true;
        goto L48
    L31:
        if (this.mayRenderFirstFrameAfterEnableIfNotStarted == true) goto L35;
    L36:
        r5 = false;
        goto L38
    L34:
        if (this.renderedFirstFrameAfterReset == true) goto L36;
    L23:
        if (isBufferLate(r0) == false) goto L26;
        skipOutputBuffer(r26, r28, r11);
        updateVideoFrameProcessingOffsetCounters(r0);
        return true;
    L26:
        return false;
    L16:
        r4 = false;
        goto L17
    }

    protected void renderOutputBuffer(MediaCodecAdapter r3, int r4, long r5) {
        maybeNotifyVideoSizeChanged();
        TraceUtil.beginSection("releaseOutputBuffer");
        r3.releaseOutputBuffer(r4, true);
        TraceUtil.endSection();
        this.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        maybeNotifyRenderedFirstFrame();
    }

    protected void renderOutputBufferV21(MediaCodecAdapter r1, int r2, long r3, long r5) {
        maybeNotifyVideoSizeChanged();
        TraceUtil.beginSection("releaseOutputBuffer");
        r1.releaseOutputBuffer(r2, r5);
        TraceUtil.endSection();
        this.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        maybeNotifyRenderedFirstFrame();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void resetCodecStateForFlush() {
        super.resetCodecStateForFlush();
        this.buffersInCodecCount = 0;
    }

    protected void setOutputSurfaceV23(MediaCodecAdapter r1, Surface r2) {
        r1.setOutputSurface(r2);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.Renderer
    public void setPlaybackSpeed(float r1, float r2) throws ExoPlaybackException {
        super.setPlaybackSpeed(r1, r2);
        this.frameReleaseHelper.onPlaybackSpeed(r1);
    }

    protected boolean shouldDropBuffersToKeyframe(long r1, long r3, boolean r5) {
        if (isBufferVeryLate(r1) == false) goto L6;
        if (r5 == true) goto L6;
        return true;
    L6:
        return false;
    }

    protected boolean shouldDropOutputBuffer(long r1, long r3, boolean r5) {
        if (isBufferLate(r1) == false) goto L6;
        if (r5 == true) goto L6;
        return true;
    L6:
        return false;
    }

    protected boolean shouldForceRenderOutputBuffer(long r2, long r4) {
        if (isBufferLate(r2) == true) goto L5;
    L7:
        return false;
    L5:
        if (r4 <= 100000) goto L7;
        return true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean shouldInitCodec(MediaCodecInfo r2) {
        if (this.surface == null) goto L5;
    L8:
        return true;
    L5:
        if (shouldUseDummySurface(r2) == true) goto L8;
        return false;
    }

    protected void skipOutputBuffer(MediaCodecAdapter r1, int r2, long r3) {
        TraceUtil.beginSection("skipVideoBuffer");
        r1.releaseOutputBuffer(r2, false);
        TraceUtil.endSection();
        this.decoderCounters.skippedOutputBufferCount++;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected int supportsFormat(MediaCodecSelector r6, Format r7) throws MediaCodecUtil.DecoderQueryException {
        int r1 = 0;
        if (MimeTypes.isVideo(r7.sampleMimeType) == true) goto L7;
        return y0.a(0);
    L7:
        if (r7.drmInitData == null) goto L9;
        boolean r0 = true;
    L10:
        List<MediaCodecInfo> r3 = getDecoderInfos(r6, r7, r0, false);
        if (r0 == false) goto L16;
        if (r3.isEmpty() == false) goto L16;
        r3 = getDecoderInfos(r6, r7, false, false);
    L16:
        if (r3.isEmpty() == false) goto L20;
        return y0.a(1);
    L20:
        if (MediaCodecRenderer.supportsFormatDrm(r7) == false) goto L22;
        MediaCodecInfo r4 = r3.get(0);
        boolean r5 = r4.isFormatSupported(r7);
        if (r4.isSeamlessAdaptationSupported(r7) == false) goto L26;
        int r8 = 16;
    L27:
        if (r5 == false) goto L35;
        List<MediaCodecInfo> r9 = getDecoderInfos(r6, r7, r0, true);
        if (r9.isEmpty() == true) goto L35;
        MediaCodecInfo r10 = r9.get(0);
        if (r10.isFormatSupported(r7) == false) goto L35;
        if (r10.isSeamlessAdaptationSupported(r7) == false) goto L35;
        r1 = 32;
    L35:
        if (r5 == false) goto L37;
        int r11 = 4;
    L39:
        return y0.b(r11, r8, r1);
    L37:
        r11 = 3;
        goto L39
    L26:
        r8 = 8;
        goto L27
    L22:
        return y0.a(2);
    L9:
        r0 = false;
        goto L10
    }

    protected void updateDroppedBufferCounters(int r3) {
        DecoderCounters r0 = this.decoderCounters;
        r0.droppedBufferCount += r3;
        this.droppedFrames += r3;
        int r1 = this.consecutiveDroppedFrameCount + r3;
        this.consecutiveDroppedFrameCount = r1;
        r0.maxConsecutiveDroppedBufferCount = Math.max(r1, r0.maxConsecutiveDroppedBufferCount);
        int r4 = this.maxDroppedFramesToNotify;
        if (r4 > 0) goto L5;
        return;
    L5:
        if (this.droppedFrames < r4) goto L9;
        maybeNotifyDroppedFrames();
        return;
    }

    protected void updateVideoFrameProcessingOffsetCounters(long r3) {
        this.decoderCounters.addVideoFrameProcessingOffset(r3);
        this.totalVideoFrameProcessingOffsetUs += r3;
        this.videoFrameProcessingOffsetCount++;
    }

    public MediaCodecVideoRenderer(Context r9, MediaCodecSelector r10, long r11) {
        this(r9, r10, r11, null, null, 0);
    }

    private static List<MediaCodecInfo> getDecoderInfos(MediaCodecSelector r3, Format r4, boolean r5, boolean r6) throws MediaCodecUtil.DecoderQueryException {
        String r0 = r4.sampleMimeType;
        if (r0 == null) goto L5;
        List<MediaCodecInfo> r1 = MediaCodecUtil.getDecoderInfosSortedByFormatSupport(r3.getDecoderInfos(r0, r5, r6), r4);
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(r0) == false) goto L20;
        Pair<Integer, Integer> r7 = MediaCodecUtil.getCodecProfileAndLevel(r4);
        if (r7 == null) goto L20;
        int r8 = ((Integer) r7.first).intValue();
        if (r8 != 16) goto L13;
    L18:
        r1.addAll(r3.getDecoderInfos(MimeTypes.VIDEO_H265, r5, r6));
        goto L20
    L13:
        if (r8 == 256) goto L18;
        if (r8 != 512) goto L20;
        r1.addAll(r3.getDecoderInfos("video/avc", r5, r6));
    L20:
        return Collections.unmodifiableList(r1);
    L5:
        return Collections.emptyList();
    }

    public MediaCodecVideoRenderer(Context r11, MediaCodecSelector r12, long r13, Handler r15, VideoRendererEventListener r16, int r17) {
        this(r11, MediaCodecAdapter.Factory.DEFAULT, r12, r13, false, r15, r16, r17);
    }

    public MediaCodecVideoRenderer(Context r11, MediaCodecSelector r12, long r13, boolean r15, Handler r16, VideoRendererEventListener r17, int r18) {
        this(r11, MediaCodecAdapter.Factory.DEFAULT, r12, r13, r15, r16, r17, r18);
    }

    public MediaCodecVideoRenderer(Context r7, MediaCodecAdapter.Factory r8, MediaCodecSelector r9, long r10, boolean r12, Handler r13, VideoRendererEventListener r14, int r15) {
        super(2, r8, r9, r12, 30.0f);
        this.allowedJoiningTimeMs = r10;
        this.maxDroppedFramesToNotify = r15;
        Context r11 = r7.getApplicationContext();
        this.context = r11;
        this.frameReleaseHelper = new VideoFrameReleaseHelper(r11);
        this.eventDispatcher = new VideoRendererEventListener.EventDispatcher(r13, r14);
        this.deviceNeedsNoPostProcessWorkaround = deviceNeedsNoPostProcessWorkaround();
        this.joiningDeadlineMs = C.TIME_UNSET;
        this.currentWidth = -1;
        this.currentHeight = -1;
        this.currentPixelWidthHeightRatio = -1.0f;
        this.scalingMode = 1;
        this.tunnelingAudioSessionId = 0;
        clearReportedVideoSize();
    }
}
