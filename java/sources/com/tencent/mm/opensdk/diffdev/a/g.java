package com.tencent.mm.opensdk.diffdev.a;

import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes6.dex */
public enum g {
    UUID_EXPIRED(Videoio.CAP_PROP_XI_OFFSET_X),
    UUID_CANCELED(Videoio.CAP_PROP_XI_OFFSET_Y),
    UUID_SCANED(Videoio.CAP_PROP_XI_TRG_SOURCE),
    UUID_CONFIRM(Videoio.CAP_PROP_XI_TRG_SOFTWARE),
    UUID_KEEP_CONNECT(Videoio.CAP_PROP_XI_GPI_LEVEL),
    UUID_ERROR(500);

    private int code;

    g(int i) {
        this.code = i;
    }

    public final int getCode() {
        return this.code;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "UUIDStatusCode:" + this.code;
    }
}
