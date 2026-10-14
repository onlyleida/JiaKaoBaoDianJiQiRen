package com.alivc.component.player.BGMPlayer;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public class BGMPlayerFactory {
    public static IBGMPlayer createAliPlayerWrapper(Context context, boolean z) {
        return z ? new BGMPlayerDynamic(context) : new BGMPlayerPlatformAPI(context);
    }
}
