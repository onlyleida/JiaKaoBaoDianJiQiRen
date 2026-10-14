package com.google.android.exoplayer2.ui;

import android.view.ViewGroup;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface AdViewProvider {
    List<AdOverlayInfo> getAdOverlayInfos();

    ViewGroup getAdViewGroup();
}
