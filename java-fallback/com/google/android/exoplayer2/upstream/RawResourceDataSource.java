package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes5.dex */
public final class RawResourceDataSource extends BaseDataSource {
    public static final String RAW_RESOURCE_SCHEME = "rawresource";
    private AssetFileDescriptor assetFileDescriptor;
    private long bytesRemaining;
    private InputStream inputStream;
    private boolean opened;
    private final String packageName;
    private final Resources resources;
    private Uri uri;

    public static class RawResourceDataSourceException extends IOException {
        public RawResourceDataSourceException(String r1) {
            super(r1);
        }

        public RawResourceDataSourceException(Throwable r1) {
            super(r1);
        }
    }

    public RawResourceDataSource(Context r2) {
        super(false);
        this.resources = r2.getResources();
        this.packageName = r2.getPackageName();
    }

    public static Uri buildRawResourceUri(int r2) {
        StringBuilder r0 = new StringBuilder(26);
        r0.append("rawresource:///");
        r0.append(r2);
        return Uri.parse(r0.toString());
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws RawResourceDataSourceException {
        this.uri = null;
        InputStream r2 = this.inputStream;     // Catch: Throwable -> L23 IOException -> L25
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
        throw new RawResourceDataSourceException(e);     // Catch: Throwable -> L14
    L25:
        e = move-exception;
        throw new RawResourceDataSourceException(e);     // Catch: Throwable -> L23
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
        throw new RawResourceDataSourceException(e);     // Catch: Throwable -> L36
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec r14) throws RawResourceDataSourceException {
        Uri r0 = r14.uri;
        this.uri = r0;
        if (TextUtils.equals(RAW_RESOURCE_SCHEME, r0.getScheme()) == false) goto L5;
    L84:
        int r1 = Integer.parseInt((String) Assertions.checkNotNull(r0.getLastPathSegment()));     // Catch: NumberFormatException -> L82
    L32:
        transferInitializing(r14);
        AssetFileDescriptor r2 = this.resources.openRawResourceFd(r1);     // Catch: Resources.NotFoundException -> L79
        this.assetFileDescriptor = r2;
        if (r2 == null) goto L77;
        long r3 = r2.getLength();
        FileInputStream r4 = new FileInputStream(r2.getFileDescriptor());
        this.inputStream = r4;
        if (r3 != (-1)) goto L86;
    L43:
        long r9 = r2.getStartOffset();     // Catch: IOException -> L74
        long r11 = r4.skip(r14.position + r9) - r9;     // Catch: IOException -> L74
        if (r11 != r14.position) goto L73;
        if (r3 != (-1)) goto L55;
        FileChannel r5 = r4.getChannel();     // Catch: IOException -> L74
        if (r5.size() != 0) goto L50;
        this.bytesRemaining = -1;     // Catch: IOException -> L74
    L58:
        long r6 = r14.length;
        if (r6 == (-1)) goto L65;
        long r7 = this.bytesRemaining;
        if (r7 == (-1)) goto L64;
        r6 = Math.min(r7, r6);
    L64:
        this.bytesRemaining = r6;
    L65:
        this.opened = true;
        transferStarted(r14);
        long r8 = r14.length;
        if (r8 == (-1)) goto L69;
        return r8;
    L69:
        return this.bytesRemaining;
    L50:
        long r10 = r5.size() - r5.position();     // Catch: IOException -> L74
        this.bytesRemaining = r10;     // Catch: IOException -> L74
        if (r10 >= 0) goto L58;
        throw new DataSourceException(0);     // Catch: IOException -> L74
    L55:
        long r12 = r3 - r11;     // Catch: IOException -> L74
        this.bytesRemaining = r12;     // Catch: IOException -> L74
        if (r12 >= 0) goto L58;
        throw new DataSourceException(0);     // Catch: IOException -> L74
    L73:
        throw new DataSourceException(0);     // Catch: IOException -> L74
    L86:
    L74:
        e = move-exception;
        throw new RawResourceDataSourceException(e);
    L39:
        if (r14.position <= r3) goto L43;
        throw new DataSourceException(0);     // Catch: IOException -> L74
    L77:
        String r13 = String.valueOf(r0);
        StringBuilder r15 = new StringBuilder(String.valueOf(r13).length() + 24);
        r15.append("Resource is compressed: ");
        r15.append(r13);
        throw new RawResourceDataSourceException(r15.toString());
    L79:
        e = move-exception;
        throw new RawResourceDataSourceException(e);
    L83:
        throw new RawResourceDataSourceException("Resource identifier must be an integer.");
    L5:
        if (TextUtils.equals("android.resource", r0.getScheme()) == false) goto L12;
        if (r0.getPathSegments().size() != 1) goto L12;
        if (((String) Assertions.checkNotNull(r0.getLastPathSegment())).matches("\\d+") == true) goto L84;
    L12:
        if (TextUtils.equals("android.resource", r0.getScheme()) == false) goto L30;
        String r16 = (String) Assertions.checkNotNull(r0.getPath());
        if (r16.startsWith("/") == false) goto L16;
        r16 = r16.substring(1);
    L16:
        String r17 = r0.getHost();
        if (TextUtils.isEmpty(r17) == false) goto L19;
        String r18 = "";
    L20:
        String r19 = String.valueOf(r18);
        String r20 = String.valueOf(r16);
        if (r20.length() == 0) goto L23;
        String r21 = r19.concat(r20);
    L24:
        r1 = this.resources.getIdentifier(r21, "raw", this.packageName);
        if (r1 != 0) goto L32;
        throw new RawResourceDataSourceException("Resource not found.");
    L23:
        r21 = new String(r19);
        goto L24
    L19:
        r18 = String.valueOf(r17).concat(":");
        goto L20
    L30:
        throw new RawResourceDataSourceException("URI must either use scheme rawresource or android.resource");
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] r8, int r9, int r10) throws RawResourceDataSourceException {
        if (r10 != 0) goto L5;
        return 0;
    L5:
        long r0 = this.bytesRemaining;
        if (r0 != 0) goto L9;
        return -1;
    L9:
        if (r0 != (-1)) goto L28;
    L13:
        int r11 = ((InputStream) Util.castNonNull(this.inputStream)).read(r8, r9, r10);     // Catch: IOException -> L25
        if (r11 == (-1)) goto L16;
        long r12 = this.bytesRemaining;
        if (r12 == (-1)) goto L23;
        this.bytesRemaining = r12 - ((long) r11);
    L23:
        bytesTransferred(r11);
        return r11;
    L16:
        if (this.bytesRemaining != (-1)) goto L19;
        return -1;
    L19:
        throw new RawResourceDataSourceException(new EOFException());
    L25:
        e = move-exception;
        throw new RawResourceDataSourceException(e);
    L28:
        r10 = (int) Math.min(r0, r10);     // Catch: IOException -> L25
        goto L13
    }
}
