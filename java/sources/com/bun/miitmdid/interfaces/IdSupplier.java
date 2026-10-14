package com.bun.miitmdid.interfaces;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes5.dex */
@Keep
public interface IdSupplier {
    @Keep
    String getAAID();

    @Keep
    String getOAID();

    @Keep
    String getVAID();

    @Keep
    boolean isSupported();
}
