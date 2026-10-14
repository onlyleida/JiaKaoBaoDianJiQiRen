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
        public RawResourceDataSourceException(String str) {
            super(str);
        }

        public RawResourceDataSourceException(Throwable th) {
            super(th);
        }
    }

    public RawResourceDataSource(Context context) {
        super(false);
        this.resources = context.getResources();
        this.packageName = context.getPackageName();
    }

    public static Uri buildRawResourceUri(int i) {
        StringBuilder sb = new StringBuilder(26);
        sb.append("rawresource:///");
        sb.append(i);
        return Uri.parse(sb.toString());
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0035 */
    @Override // com.google.android.exoplayer2.upstream.DataSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void close() throws com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException {
        /*
            r4 = this;
            r0 = 0
            r4.uri = r0
            r1 = 0
            java.io.InputStream r2 = r4.inputStream     // Catch: java.lang.Throwable -> L35 java.io.IOException -> L37
            if (r2 == 0) goto Lb
            r2.close()     // Catch: java.lang.Throwable -> L35 java.io.IOException -> L37
        Lb:
            r4.inputStream = r0
            android.content.res.AssetFileDescriptor r2 = r4.assetFileDescriptor     // Catch: java.lang.Throwable -> L20 java.io.IOException -> L22
            if (r2 == 0) goto L14
            r2.close()     // Catch: java.lang.Throwable -> L20 java.io.IOException -> L22
        L14:
            r4.assetFileDescriptor = r0
            boolean r0 = r4.opened
            if (r0 == 0) goto L1f
            r4.opened = r1
            r4.transferEnded()
        L1f:
            return
        L20:
            r2 = move-exception
            goto L29
        L22:
            r2 = move-exception
            com.google.android.exoplayer2.upstream.RawResourceDataSource$RawResourceDataSourceException r3 = new com.google.android.exoplayer2.upstream.RawResourceDataSource$RawResourceDataSourceException     // Catch: java.lang.Throwable -> L20
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L20
            throw r3     // Catch: java.lang.Throwable -> L20
        L29:
            r4.assetFileDescriptor = r0
            boolean r0 = r4.opened
            if (r0 == 0) goto L34
            r4.opened = r1
            r4.transferEnded()
        L34:
            throw r2
        L35:
            r2 = move-exception
            goto L3e
        L37:
            r2 = move-exception
            com.google.android.exoplayer2.upstream.RawResourceDataSource$RawResourceDataSourceException r3 = new com.google.android.exoplayer2.upstream.RawResourceDataSource$RawResourceDataSourceException     // Catch: java.lang.Throwable -> L35
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L35
            throw r3     // Catch: java.lang.Throwable -> L35
        L3e:
            r4.inputStream = r0
            android.content.res.AssetFileDescriptor r3 = r4.assetFileDescriptor     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            if (r3 == 0) goto L47
            r3.close()     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
        L47:
            r4.assetFileDescriptor = r0
            boolean r0 = r4.opened
            if (r0 == 0) goto L52
            r4.opened = r1
            r4.transferEnded()
        L52:
            throw r2
        L53:
            r2 = move-exception
            goto L5c
        L55:
            r2 = move-exception
            com.google.android.exoplayer2.upstream.RawResourceDataSource$RawResourceDataSourceException r3 = new com.google.android.exoplayer2.upstream.RawResourceDataSource$RawResourceDataSourceException     // Catch: java.lang.Throwable -> L53
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L53
            throw r3     // Catch: java.lang.Throwable -> L53
        L5c:
            r4.assetFileDescriptor = r0
            boolean r0 = r4.opened
            if (r0 == 0) goto L67
            r4.opened = r1
            r4.transferEnded()
        L67:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.RawResourceDataSource.close():void");
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws RawResourceDataSourceException {
        int identifier;
        Uri uri = dataSpec.uri;
        this.uri = uri;
        if (TextUtils.equals(RAW_RESOURCE_SCHEME, uri.getScheme()) || (TextUtils.equals("android.resource", uri.getScheme()) && uri.getPathSegments().size() == 1 && ((String) Assertions.checkNotNull(uri.getLastPathSegment())).matches("\\d+"))) {
            try {
                identifier = Integer.parseInt((String) Assertions.checkNotNull(uri.getLastPathSegment()));
            } catch (NumberFormatException unused) {
                throw new RawResourceDataSourceException("Resource identifier must be an integer.");
            }
        } else {
            if (!TextUtils.equals("android.resource", uri.getScheme())) {
                throw new RawResourceDataSourceException("URI must either use scheme rawresource or android.resource");
            }
            String strSubstring = (String) Assertions.checkNotNull(uri.getPath());
            if (strSubstring.startsWith("/")) {
                strSubstring = strSubstring.substring(1);
            }
            String host = uri.getHost();
            String strValueOf = String.valueOf(TextUtils.isEmpty(host) ? "" : String.valueOf(host).concat(":"));
            String strValueOf2 = String.valueOf(strSubstring);
            identifier = this.resources.getIdentifier(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf), "raw", this.packageName);
            if (identifier == 0) {
                throw new RawResourceDataSourceException("Resource not found.");
            }
        }
        transferInitializing(dataSpec);
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = this.resources.openRawResourceFd(identifier);
            this.assetFileDescriptor = assetFileDescriptorOpenRawResourceFd;
            if (assetFileDescriptorOpenRawResourceFd == null) {
                String strValueOf3 = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf3).length() + 24);
                sb.append("Resource is compressed: ");
                sb.append(strValueOf3);
                throw new RawResourceDataSourceException(sb.toString());
            }
            long length = assetFileDescriptorOpenRawResourceFd.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenRawResourceFd.getFileDescriptor());
            this.inputStream = fileInputStream;
            if (length != -1) {
                try {
                    if (dataSpec.position > length) {
                        throw new DataSourceException(0);
                    }
                } catch (IOException e2) {
                    throw new RawResourceDataSourceException(e2);
                }
            }
            long startOffset = assetFileDescriptorOpenRawResourceFd.getStartOffset();
            long jSkip = fileInputStream.skip(dataSpec.position + startOffset) - startOffset;
            if (jSkip != dataSpec.position) {
                throw new DataSourceException(0);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.bytesRemaining = -1L;
                } else {
                    long size = channel.size() - channel.position();
                    this.bytesRemaining = size;
                    if (size < 0) {
                        throw new DataSourceException(0);
                    }
                }
            } else {
                long j = length - jSkip;
                this.bytesRemaining = j;
                if (j < 0) {
                    throw new DataSourceException(0);
                }
            }
            long jMin = dataSpec.length;
            if (jMin != -1) {
                long j2 = this.bytesRemaining;
                if (j2 != -1) {
                    jMin = Math.min(j2, jMin);
                }
                this.bytesRemaining = jMin;
            }
            this.opened = true;
            transferStarted(dataSpec);
            long j3 = dataSpec.length;
            return j3 != -1 ? j3 : this.bytesRemaining;
        } catch (Resources.NotFoundException e3) {
            throw new RawResourceDataSourceException(e3);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws RawResourceDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.bytesRemaining;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e2) {
                throw new RawResourceDataSourceException(e2);
            }
        }
        int i3 = ((InputStream) Util.castNonNull(this.inputStream)).read(bArr, i, i2);
        if (i3 == -1) {
            if (this.bytesRemaining == -1) {
                return -1;
            }
            throw new RawResourceDataSourceException(new EOFException());
        }
        long j2 = this.bytesRemaining;
        if (j2 != -1) {
            this.bytesRemaining = j2 - ((long) i3);
        }
        bytesTransferred(i3);
        return i3;
    }
}
