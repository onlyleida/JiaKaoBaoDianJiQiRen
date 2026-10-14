package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes5.dex */
public final class FileDataSource extends BaseDataSource {
    private long bytesRemaining;
    private RandomAccessFile file;
    private boolean opened;
    private Uri uri;

    public static final class Factory implements DataSource.Factory {
        private TransferListener listener;

        public Factory() {
        }

        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        public /* bridge */ /* synthetic */ DataSource createDataSource() {
            return createDataSource();
        }

        public Factory setListener(TransferListener r1) {
            this.listener = r1;
            return this;
        }

        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        public FileDataSource createDataSource() {
            FileDataSource r0 = new FileDataSource();
            TransferListener r1 = this.listener;
            if (r1 == null) goto L5;
            r0.addTransferListener(r1);
        L5:
            return r0;
        }
    }

    public static class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException r1) {
            super(r1);
        }

        public FileDataSourceException(String r1, IOException r2) {
            super(r1, r2);
        }
    }

    public FileDataSource() {
        super(false);
    }

    private static RandomAccessFile openLocalFile(Uri r5) throws FileDataSourceException {
        return new RandomAccessFile((String) Assertions.checkNotNull(r5.getPath()), "r");
    L4:
        e = move-exception;
        if (TextUtils.isEmpty(r5.getQuery()) == false) goto L13;
        if (TextUtils.isEmpty(r5.getFragment()) == false) goto L13;
        throw new FileDataSourceException(e);
    L13:
        throw new FileDataSourceException(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", new Object[]{r5.getPath(), r5.getQuery(), r5.getFragment()}), e);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws FileDataSourceException {
        this.uri = null;
        RandomAccessFile r2 = this.file;     // Catch: Throwable -> L10 IOException -> L12
        if (r2 == null) goto L6;
        r2.close();     // Catch: Throwable -> L10 IOException -> L12
    L6:
        this.file = null;
        if (this.opened == false) goto L22;
        this.opened = false;
        transferEnded();
        return;
    L22:
        return;
    L12:
        e = move-exception;
        throw new FileDataSourceException(e);     // Catch: Throwable -> L10
    L10:
        th = move-exception;
        this.file = null;
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
    public long open(DataSpec r6) throws FileDataSourceException {
        Uri r0 = r6.uri;     // Catch: IOException -> L12
        this.uri = r0;     // Catch: IOException -> L12
        transferInitializing(r6);     // Catch: IOException -> L12
        RandomAccessFile r1 = openLocalFile(r0);     // Catch: IOException -> L12
        this.file = r1;     // Catch: IOException -> L12
        r1.seek(r6.position);     // Catch: IOException -> L12
        long r2 = r6.length;     // Catch: IOException -> L12
        if (r2 != (-1)) goto L5;
        r2 = this.file.length() - r6.position;     // Catch: IOException -> L12
    L5:
        this.bytesRemaining = r2;     // Catch: IOException -> L12
        if (r2 < 0) goto L11;
        this.opened = true;
        transferStarted(r6);
        return this.bytesRemaining;
    L11:
        throw new DataSourceException(0);     // Catch: IOException -> L12
    L12:
        e = move-exception;
        throw new FileDataSourceException(e);
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] r6, int r7, int r8) throws FileDataSourceException {
        if (r8 != 0) goto L6;
        return 0;
    L6:
        if (this.bytesRemaining != 0) goto L16;
        return -1;
    L16:
        int r9 = ((RandomAccessFile) Util.castNonNull(this.file)).read(r6, r7, (int) Math.min(this.bytesRemaining, r8));     // Catch: IOException -> L13
        if (r9 <= 0) goto L12;
        this.bytesRemaining -= (long) r9;
        bytesTransferred(r9);
    L12:
        return r9;
    L13:
        e = move-exception;
        throw new FileDataSourceException(e);
    }
}
