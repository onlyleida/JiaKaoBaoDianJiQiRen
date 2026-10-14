package com.mobile.auth.gatewayauth.manager;

import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.mobile.auth.gatewayauth.Constant;

/* JADX INFO: loaded from: classes4.dex */
public class c {
    public static long a(String str) {
        byte b = -1;
        try {
            int iHashCode = str.hashCode();
            if (iHashCode != -1350608857) {
                if (iHashCode != 95009260) {
                    if (iHashCode == 880617272 && str.equals(Constant.VENDOR_CMCC)) {
                        b = 0;
                    }
                } else if (str.equals(Constant.VENDOR_CUCC)) {
                    b = 2;
                }
            } else if (str.equals(Constant.VENDOR_CTCC)) {
                b = 1;
            }
            if (b != 0) {
                return (b == 1 || b == 2) ? 600000L : 0L;
            }
            return SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return -1L;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return -1L;
            }
        }
    }
}
