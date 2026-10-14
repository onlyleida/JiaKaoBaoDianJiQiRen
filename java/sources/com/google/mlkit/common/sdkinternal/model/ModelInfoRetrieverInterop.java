package com.google.mlkit.common.sdkinternal.model;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.model.RemoteModel;
import com.google.mlkit.common.sdkinternal.ModelInfo;

/* JADX INFO: loaded from: classes4.dex */
@KeepForSdk
public interface ModelInfoRetrieverInterop {
    @KeepForSdk
    ModelInfo retrieveRemoteModelInfo(RemoteModel remoteModel) throws MlKitException;
}
