package com.sixents.sdk.base;

import com.sixents.sdk.conf.SdkConf;

/* JADX INFO: loaded from: classes6.dex */
public interface ISixentsSDKManager {
    int sdkFinal();

    String sdkGetVer();

    int sdkInit(SdkConf sdkConf);

    int sdkSendGGA(double d2, double d3, double d4);

    int sdkSendGGAStr(String str);

    int sdkStart();

    int sdkStop();
}
