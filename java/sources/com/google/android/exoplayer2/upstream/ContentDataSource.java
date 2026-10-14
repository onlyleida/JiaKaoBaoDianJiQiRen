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
        public ContentDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.resolver = context.getContentResolver();
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0035 */
    @Override // com.google.android.exoplayer2.upstream.DataSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void close() throws com.google.android.exoplayer2.upstream.ContentDataSource.ContentDataSourceException {
        /*
            r4 = this;
            r0 = 0
            r4.uri = r0
            r1 = 0
            java.io.FileInputStream r2 = r4.inputStream     // Catch: java.lang.Throwable -> L35 java.io.IOException -> L37
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
            com.google.android.exoplayer2.upstream.ContentDataSource$ContentDataSourceException r3 = new com.google.android.exoplayer2.upstream.ContentDataSource$ContentDataSourceException     // Catch: java.lang.Throwable -> L20
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
            com.google.android.exoplayer2.upstream.ContentDataSource$ContentDataSourceException r3 = new com.google.android.exoplayer2.upstream.ContentDataSource$ContentDataSourceException     // Catch: java.lang.Throwable -> L35
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
            com.google.android.exoplayer2.upstream.ContentDataSource$ContentDataSourceException r3 = new com.google.android.exoplayer2.upstream.ContentDataSource$ContentDataSourceException     // Catch: java.lang.Throwable -> L53
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.ContentDataSource.close():void");
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws ContentDataSourceException {
        try {
            Uri uri = dataSpec.uri;
            this.uri = uri;
            transferInitializing(dataSpec);
            AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = this.resolver.openAssetFileDescriptor(uri, "r");
            this.assetFileDescriptor = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                String strValueOf = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 36);
                sb.append("Could not open file descriptor for: ");
                sb.append(strValueOf);
                throw new FileNotFoundException(sb.toString());
            }
            long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
            this.inputStream = fileInputStream;
            if (length != -1 && dataSpec.position > length) {
                throw new DataSourceException(0);
            }
            long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
            long jSkip = fileInputStream.skip(dataSpec.position + startOffset) - startOffset;
            if (jSkip != dataSpec.position) {
                throw new DataSourceException(0);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                long size = channel.size();
                if (size == 0) {
                    this.bytesRemaining = -1L;
                } else {
                    long jPosition = size - channel.position();
                    this.bytesRemaining = jPosition;
                    if (jPosition < 0) {
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
        } catch (IOException e2) {
            throw new ContentDataSourceException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws ContentDataSourceException {
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
                throw new ContentDataSourceException(e2);
            }
        }
        int i3 = ((FileInputStream) Util.castNonNull(this.inputStream)).read(bArr, i, i2);
        if (i3 == -1) {
            return -1;
        }
        long j2 = this.bytesRemaining;
        if (j2 != -1) {
            this.bytesRemaining = j2 - ((long) i3);
        }
        bytesTransferred(i3);
        return i3;
    }
}
