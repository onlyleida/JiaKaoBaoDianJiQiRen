package com.iflytek.cloud;

import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.resource.Resource;

/* JADX INFO: loaded from: classes4.dex */
public class SpeechError extends Exception {
    public static final int TIP_ERROR_ALREADY_EXIST = 66;
    public static final int TIP_ERROR_AUTHID_NOT_AVAILABLE = 71;
    public static final int TIP_ERROR_GROUP_EMPTY = 68;
    public static final int TIP_ERROR_IVP_EXTRA_RGN_SOPPORT = 56;
    public static final int TIP_ERROR_IVP_GENERAL = 55;
    public static final int TIP_ERROR_IVP_MUCH_NOISE = 58;
    public static final int TIP_ERROR_IVP_NO_ENOUGH_AUDIO = 63;
    public static final int TIP_ERROR_IVP_TEXT_NOT_MATCH = 62;
    public static final int TIP_ERROR_IVP_TOO_LOW = 59;
    public static final int TIP_ERROR_IVP_TRUNCATED = 57;
    public static final int TIP_ERROR_IVP_UTTER_TOO_SHORT = 61;
    public static final int TIP_ERROR_IVP_ZERO_AUDIO = 60;
    public static final int TIP_ERROR_MODEL_IS_CREATING = 65;
    public static final int TIP_ERROR_MODEL_NOT_FOUND = 64;
    public static final int TIP_ERROR_NO_GROUP = 67;
    public static final int TIP_ERROR_NO_USER = 69;
    public static final int TIP_ERROR_OVERFLOW_IN_GROUP = 70;
    private static final long serialVersionUID = 4434424251478985596L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f12124a;
    private String b;

    public SpeechError(Exception r2) {
        this.f12124a = 0;
        this.b = "";
        this.f12124a = ErrorCode.ERROR_UNKNOWN;
        this.b = r2.toString();
    }

    public int getErrorCode() {
        return this.f12124a;
    }

    public String getErrorDescription() {
        return this.b;
    }

    public String getHtmlDescription(boolean r3) {
        String r0 = this.b + "...";
        if (r3 == true) goto L5;
        return r0;
    L5:
        return ((r0 + "<br>(") + Resource.getErrorTag(0) + ":") + this.f12124a + ")";
    }

    public String getPlainDescription(boolean r2) {
        String r0 = this.b;
        if (r2 == true) goto L5;
        return r0;
    L5:
        return ((r0 + ".") + "(" + Resource.getErrorTag(0) + ":") + this.f12124a + ")";
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getPlainDescription(true);
    }

    public SpeechError(Throwable r1, int r2) {
        this(r2);
        initCause(r1);
    }

    public SpeechError(int r2, String r3) {
        this(r2);
        if (SpeechConstant.ENG_WFR.equals(r3) == true) goto L5;
        return;
    L5:
        if (10118 != r2) goto L8;
        this.b = Resource.getErrorDescription(33);
        return;
    L8:
        if (10119 != r2) goto L13;
        this.b = Resource.getErrorDescription(34);
        return;
    }

    public SpeechError(int r7) {
        this.f12124a = 0;
        this.b = "";
        this.f12124a = r7;
        int r1 = 64;
        int r2 = 7;
        int r5 = 3;
        if (r7 >= 20001) goto L120;
        if (r7 != 10118) goto L8;
    L143:
        r2 = 11;
    L166:
        r5 = r2;
    L167:
        int r8 = this.f12124a;
        if (r8 != 10031) goto L170;
        r1 = 65;
    L201:
        r5 = r1;
    L202:
        this.b = Resource.getErrorDescription(r5);
        return;
    L170:
        if (r8 == 11610) goto L201;
        switch(r8) {
            case 10141: goto L178;
            case 10142: goto L177;
            case 10143: goto L176;
            case 10144: goto L175;
            default: goto L172;
        };
    L172:
        switch(r8) {
            case 11600: goto L187;
            case 11601: goto L186;
            case 11602: goto L185;
            case 11603: goto L184;
            case 11604: goto L183;
            case 11605: goto L182;
            case 11606: goto L181;
            case 11607: goto L180;
            case 11608: goto L179;
            default: goto L173;
        };
    L173:
        switch(r8) {
            case 11700: goto L199;
            case 11701: goto L198;
            case 11702: goto L197;
            case 11703: goto L196;
            case 11704: goto L195;
            case 11705: goto L194;
            case 11706: goto L193;
            case 11707: goto L192;
            case 11708: goto L191;
            case 11709: goto L190;
            case 11710: goto L189;
            case 11711: goto L188;
            case 11712: goto L201;
            default: goto L202;
        };
    L188:
        r1 = 54;
        goto L201
    L189:
        r1 = 53;
        goto L201
    L190:
        r1 = 52;
        goto L201
    L191:
        r1 = 51;
        goto L201
    L192:
        r1 = 50;
        goto L201
    L193:
        r1 = 49;
        goto L201
    L194:
        r1 = 48;
        goto L201
    L195:
        r1 = 47;
        goto L201
    L196:
        r1 = 46;
        goto L201
    L197:
        r1 = 45;
        goto L201
    L198:
        r1 = 44;
        goto L201
    L199:
        r1 = 43;
        goto L201
    L179:
        r1 = 63;
        goto L201
    L180:
        r1 = 62;
        goto L201
    L181:
        r1 = 61;
        goto L201
    L182:
        r1 = 60;
        goto L201
    L183:
        r1 = 59;
        goto L201
    L184:
        r1 = 58;
        goto L201
    L185:
        r1 = 57;
        goto L201
    L186:
        r1 = 56;
        goto L201
    L187:
        r1 = 55;
        goto L201
    L175:
        r1 = 70;
        goto L201
    L176:
        r1 = 67;
        goto L201
    L177:
        r1 = 69;
        goto L201
    L178:
        r1 = 68;
        goto L201
    L8:
        if (10106 != r7) goto L10;
    L118:
        DebugLog.LogD("sdk errorcode", this.f12124a + "");
        goto L166
    L10:
        if (10107 == r7) goto L118;
        if (10124 == r7) goto L118;
        if (r7 != 10110) goto L18;
        r2 = 32;
        goto L166
    L18:
        if (r7 != 10111) goto L21;
    L155:
        r2 = 28;
        goto L166
    L21:
        if (r7 < 10200) goto L26;
        if (r7 >= 10300) goto L26;
    L128:
        r2 = 3;
    L26:
        if (r7 != 10117) goto L28;
    L117:
        r2 = 16;
        goto L166
    L28:
        if (r7 == 10101) goto L117;
        if (r7 != 10113) goto L34;
        r2 = 17;
        goto L166
    L34:
        if (r7 != 10116) goto L37;
    L113:
        r2 = 64;
        goto L166
    L37:
        if (r7 != 10121) goto L40;
        r2 = 66;
        goto L166
    L40:
        if (r7 < 10400) goto L45;
        if (r7 > 10407) goto L45;
    L54:
        r2 = 18;
    L45:
        if (r7 < 11000) goto L56;
        if (r7 >= 11099) goto L56;
        if (r7 != 11005) goto L52;
        r2 = 23;
        goto L166
    L52:
        if (r7 != 11006) goto L54;
        r2 = 24;
    L56:
        if (r7 != 10129) goto L59;
    L116:
        r2 = 19;
        goto L166
    L59:
        if (r7 != 10109) goto L62;
        r2 = 20;
        goto L166
    L62:
        if (r7 != 10702) goto L65;
        r2 = 21;
        goto L166
    L65:
        if (r7 < 10500) goto L70;
        if (r7 >= 10600) goto L70;
        r2 = 22;
    L70:
        if (r7 < 11200) goto L75;
        if (r7 > 11250) goto L75;
        r2 = 25;
    L75:
        if (r7 < 14000) goto L80;
        if (r7 > 14006) goto L80;
    L83:
        r2 = 31;
    L80:
        if (r7 < 16000) goto L85;
        if (r7 <= 16006) goto L83;
    L85:
        if (11401 != r7) goto L88;
        r2 = 35;
        goto L166
    L88:
        if (11402 != r7) goto L91;
        r2 = 36;
        goto L166
    L91:
        if (11403 != r7) goto L94;
        r2 = 37;
        goto L166
    L94:
        if (11404 != r7) goto L97;
        r2 = 38;
        goto L166
    L97:
        if (11405 != r7) goto L100;
        r2 = 39;
        goto L166
    L100:
        if (11406 != r7) goto L103;
        r2 = 40;
        goto L166
    L103:
        if (11407 != r7) goto L106;
        r2 = 41;
        goto L166
    L106:
        if (11408 != r7) goto L109;
        r2 = 42;
        goto L166
    L109:
        if (r7 != 11501) goto L112;
        r2 = 65;
        goto L166
    L112:
        if (r7 == 11502) goto L113;
        if (r7 != 11503) goto L167;
    L120:
        if (r7 >= 30000) goto L167;
        if (r7 != 20001) goto L124;
        r2 = 1;
        goto L166
    L124:
        if (r7 != 20002) goto L127;
        r2 = 2;
        goto L166
    L127:
        if (r7 == 20003) goto L128;
        if (r7 != 20004) goto L133;
        r2 = 5;
        goto L166
    L133:
        if (r7 != 20005) goto L136;
        r2 = 10;
        goto L166
    L136:
        if (r7 != 20006) goto L139;
        r2 = 9;
        goto L166
    L139:
        if (r7 != 20007) goto L142;
        r2 = 12;
        goto L166
    L142:
        if (r7 == 20008) goto L143;
        if (r7 != 20009) goto L148;
        r2 = 13;
        goto L166
    L148:
        if (r7 != 20010) goto L151;
        r2 = 14;
        goto L166
    L151:
        if (r7 == 20012) goto L166;
        if (r7 == 21003) goto L155;
        if (r7 != 21002) goto L159;
    L165:
        r2 = 29;
        goto L166
    L159:
        if (r7 == 21001) goto L165;
        if (r7 != 26001) goto L164;
        r2 = 71;
        goto L166
    L164:
        r2 = 30;
        goto L166
    }
}
