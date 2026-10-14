package com.google.android.exoplayer2.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import com.google.android.exoplayer2.util.Util;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes5.dex */
public final class ContentDataSource extends BaseDataSource {
    private AssetFileDescriptor assetFileDescriptor;
    private long bytesRemaining;
    private FileInputStream inputStream;
    private boolean opened;
    private final ContentResolver resolver;
    private Uri uri;

    public static class ContentDataSourceException extends IOException {
        public ContentDataSourceException(IOException r1) {
            super(r1);
        }
    }

    public ContentDataSource(Context r2) {
        super(false);
        this.resolver = r2.getContentResolver();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws ContentDataSourceException {
        this.uri = null;
        FileInputStream r2 = this.inputStream;     // Catch: Throwable -> L23 IOException -> L25
        if (r2 == null) goto L6;
        r2.close();     // Catch: Throwable -> L23 IOException -> L25
    L6:
        this.inputStream = null;
        AssetFileDescriptor r3 = this.assetFileDescriptor;     // Catch: Throwable -> L14 IOException -> L16
        if (r3 == null) goto L10;
        r3.close();     // Catch: Throwable -> L14 IOException -> L16
    L10:
        this.assetFileDescriptor = null;
        if (this.opened == false) goto L52;
        this.opened = false;
        transferEnded();
        return;
    L52:
        return;
    L14:
        th = move-exception;
        this.assetFileDescriptor = null;
        if (this.opened == false) goto L22;
        this.opened = false;
        transferEnded();
    L22:
        throw th;
    L16:
        e = move-exception;
        throw new ContentDataSourceException(e);     // Catch: Throwable -> L14
    L25:
        e = move-exception;
        throw new ContentDataSourceException(e);     // Catch: Throwable -> L23
    L23:
        th = move-exception;
        this.inputStream = null;
        AssetFileDescriptor r4 = this.assetFileDescriptor;     // Catch: Throwable -> L36 IOException -> L38
        if (r4 == null) goto L32;
        r4.close();     // Catch: Throwable -> L36 IOException -> L38
    L32:
        this.assetFileDescriptor = null;
        if (this.opened == false) goto L35;
        this.opened = false;
        transferEnded();
    L35:
        throw th;
    L36:
        th = move-exception;
        this.assetFileDescriptor = null;
        if (this.opened == false) goto L44;
        this.opened = false;
        transferEnded();
    L44:
        throw th;
    L38:
        e = move-exception;
        throw new ContentDataSourceException(e);     // Catch: Throwable -> L36
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec r13) throws ContentDataSourceException {
        Uri r0 = r13.uri;     // Catch: IOException -> L44
        this.uri = r0;     // Catch: IOException -> L44
        transferInitializing(r13);     // Catch: IOException -> L44
        AssetFileDescriptor r1 = this.resolver.openAssetFileDescriptor(r0, "r");     // Catch: IOException -> L44
        this.assetFileDescriptor = r1;     // Catch: IOException -> L44
        if (r1 == null) goto L42;
        long r2 = r1.getLength();     // Catch: IOException -> L44
        FileInputStream r3 = new FileInputStream(r1.getFileDescriptor());     // Catch: IOException -> L44
        this.inputStream = r3;     // Catch: IOException -> L44
        if (r2 != (-1)) goto L7;
    L11:
        long r8 = r1.getStartOffset();     // Catch: IOException -> L44
        long r10 = r3.skip(r13.position + r8) - r8;     // Catch: IOException -> L44
        if (r10 != r13.position) goto L41;
        if (r2 != (-1)) goto L23;
        FileChannel r4 = r3.getChannel();     // Catch: IOException -> L44
        long r5 = r4.size();     // Catch: IOException -> L44
        if (r5 != 0) goto L18;
        this.bytesRemaining = -1;     // Catch: IOException -> L44
    L26:
        long r6 = r13.length;
        if (r6 == (-1)) goto L33;
        long r7 = this.bytesRemaining;
        if (r7 == (-1)) goto L32;
        r6 = Math.min(r7, r6);
    L32:
        this.bytesRemaining = r6;
    L33:
        this.opened = true;
        transferStarted(r13);
        long r9 = r13.length;
        if (r9 == (-1)) goto L37;
        return r9;
    L37:
        return this.bytesRemaining;
    L18:
        long r11 = r5 - r4.position();     // Catch: IOException -> L44
        this.bytesRemaining = r11;     // Catch: IOException -> L44
        if (r11 >= 0) goto L26;
        throw new DataSourceException(0);     // Catch: IOException -> L44
    L23:
        long r12 = r2 - r10;     // Catch: IOException -> L44
        this.bytesRemaining = r12;     // Catch: IOException -> L44
        if (r12 >= 0) goto L26;
        throw new DataSourceException(0);     // Catch: IOException -> L44
    L41:
        throw new DataSourceException(0);     // Catch: IOException -> L44
    L7:
        if (r13.position <= r2) goto L11;
        throw new DataSourceException(0);     // Catch: IOException -> L44
    L42:
        String r14 = String.valueOf(r0);     // Catch: IOException -> L44
        StringBuilder r15 = new StringBuilder(String.valueOf(r14).length() + 36);     // Catch: IOException -> L44
        r15.append("Could not open file descriptor for: ");     // Catch: IOException -> L44
        r15.append(r14);     // Catch: IOException -> L44
        throw new FileNotFoundException(r15.toString());     // Catch: IOException -> L44
    L44:
        e = move-exception;
        throw new ContentDataSourceException(e);
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] r8, int r9, int r10) throws ContentDataSourceException {
        if (r10 != 0) goto L5;
        return 0;
    L5:
        long r0 = this.bytesRemaining;
        if (r0 != 0) goto L9;
        return -1;
    L9:
        if (r0 != (-1)) goto L24;
    L13:
        int r11 = ((FileInputStream) Util.castNonNull(this.inputStream)).read(r8, r9, r10);     // Catch: IOException -> L21
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
        throw new ContentDataSourceException(e);
    L24:
        r10 = (int) Math.min(r0, r10);     // Catch: IOException -> L21
        goto L13
    }
}
