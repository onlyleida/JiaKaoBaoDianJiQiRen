package com.google.mlkit.common.sdkinternal.model;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.mlkit.common.MlKitException;
import java.nio.MappedByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
@KeepForSdk
public interface RemoteModelLoaderHelper {
    @KeepForSdk
    MappedByteBuffer loadModelAtPath(String str) throws MlKitException;
}
