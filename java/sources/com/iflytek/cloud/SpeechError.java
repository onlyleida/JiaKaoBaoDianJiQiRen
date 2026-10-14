package com.iflytek.cloud;

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

    public SpeechError(Exception exc) {
        this.f12124a = 0;
        this.b = "";
        this.f12124a = ErrorCode.ERROR_UNKNOWN;
        this.b = exc.toString();
    }

    public int getErrorCode() {
        return this.f12124a;
    }

    public String getErrorDescription() {
        return this.b;
    }

    public String getHtmlDescription(boolean z) {
        String str = this.b + "...";
        if (!z) {
            return str;
        }
        return ((str + "<br>(") + Resource.getErrorTag(0) + ":") + this.f12124a + ")";
    }

    public String getPlainDescription(boolean z) {
        String str = this.b;
        if (!z) {
            return str;
        }
        return ((str + ".") + "(" + Resource.getErrorTag(0) + ":") + this.f12124a + ")";
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getPlainDescription(true);
    }

    public SpeechError(Throwable th, int i) {
        this(i);
        initCause(th);
    }

    public SpeechError(int i, String str) {
        this(i);
        if (SpeechConstant.ENG_WFR.equals(str)) {
            if (10118 == i) {
                this.b = Resource.getErrorDescription(33);
            } else if (10119 == i) {
                this.b = Resource.getErrorDescription(34);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:113:0x0116  */
    /* JADX WARN: Code duplicated, block: B:128:0x0152  */
    /* JADX WARN: Code duplicated, block: B:143:0x0173  */
    /* JADX WARN: Code duplicated, block: B:155:0x018d  */
    /* JADX WARN: Code duplicated, block: B:54:0x0083  */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x011c, code lost:
    
        if (r7 == 11503) goto L116;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SpeechError(int r7) {
        /*
            Method dump skipped, instruction units count: 592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.SpeechError.<init>(int):void");
    }
}
