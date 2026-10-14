package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public final class AssetDataSource extends BaseDataSource {
    private final AssetManager assetManager;
    private long bytesRemaining;
    private InputStream inputStream;
    private boolean opened;
    private Uri uri;

    public static final class AssetDataSourceException extends IOException {
        public AssetDataSourceException(IOException r1) {
            super(r1);
        }
    }

    public AssetDataSource(Context r2) {
        super(false);
        this.assetManager = r2.getAssets();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws AssetDataSourceException {
        this.uri = null;
        InputStream r2 = this.inputStream;     // Catch: Throwable -> L10 IOException -> L12
        if (r2 == null) goto L6;
        r2.close();     // Catch: Throwable -> L10 IOException -> L12
    L6:
        this.inputStream = null;
        if (this.opened == false) goto L22;
        this.opened = false;
        transferEnded();
        return;
    L22:
        return;
    L12:
        e = move-exception;
        throw new AssetDataSourceException(e);     // Catch: Throwable -> L10
    L10:
        th = move-exception;
        this.inputStream = null;
        if (this.opened == false) goto L18;
        this.opened = false;
        transferEnded();
    L18:
        throw th;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec r9) throws AssetDataSourceException {
        Uri r0 = r9.uri;     // Catch: IOException -> L20
        this.uri = r0;     // Catch: IOException -> L20
        String r1 = (String) Assertions.checkNotNull(r0.getPath());     // Catch: IOException -> L20
        if (r1.startsWith("/android_asset/") == false) goto L6;
        r1 = r1.substring(15);     // Catch: IOException -> L20
    L8:
        transferInitializing(r9);     // Catch: IOException -> L20
        InputStream r2 = this.assetManager.open(r1, 1);     // Catch: IOException -> L20
        this.inputStream = r2;     // Catch: IOException -> L20
        if (r2.skip(r9.position) < r9.position) goto L19;
        long r3 = r9.length;     // Catch: IOException -> L20
        if (r3 == (-1)) goto L13;
        this.bytesRemaining = r3;     // Catch: IOException -> L20
    L16:
        this.opened = true;
        transferStarted(r9);
        return this.bytesRemaining;
    L13:
        long r4 = this.inputStream.available();     // Catch: IOException -> L20
        this.bytesRemaining = r4;     // Catch: IOException -> L20
        if (r4 != 2147483647L) goto L16;
        this.bytesRemaining = -1;     // Catch: IOException -> L20
        goto L16
    L19:
        throw new DataSourceException(0);     // Catch: IOException -> L20
    L6:
        if (r1.startsWith("/") == false) goto L8;
        r1 = r1.substring(1);     // Catch: IOException -> L20
    L20:
        e = move-exception;
        throw new AssetDataSourceException(e);
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] r8, int r9, int r10) throws AssetDataSourceException {
        if (r10 != 0) goto L5;
        return 0;
    L5:
        long r0 = this.bytesRemaining;
        if (r0 != 0) goto L9;
        return -1;
    L9:
        if (r0 != (-1)) goto L24;
    L13:
        int r11 = ((InputStream) Util.castNonNull(this.inputStream)).read(r8, r9, r10);     // Catch: IOException -> L21
        if (r11 != (-1)) goto L16;
        return -1;
    L16:
        long r12 = this.bytesRemaining;
        if (r12 == (-1)) goto L19;
        this.bytesRemaining = r12 - ((long) r11);
    L19:
        bytesTransferred(r11);
        return r11;
    L21:
        e = move-exception;
        throw new AssetDataSourceException(e);
    L24:
        r10 = (int) Math.min(r0, r10);     // Catch: IOException -> L21
        goto L13
    }
}
