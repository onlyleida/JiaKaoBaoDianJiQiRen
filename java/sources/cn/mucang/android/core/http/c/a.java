package cn.mucang.android.core.http.c;

import java.io.File;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;
import okio.Source;

/* JADX INFO: loaded from: classes.dex */
public class a extends RequestBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f2536a;
    private final MediaType b;
    private final b c;

    /* JADX INFO: renamed from: cn.mucang.android.core.http.c.a$a, reason: collision with other inner class name */
    private class C0082a extends ForwardingSink {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f2537a;
        long b;

        public C0082a(Sink sink) {
            super(sink);
            this.f2537a = 0L;
            this.b = 0L;
        }

        @Override // okio.ForwardingSink, okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            super.write(buffer, j);
            if (this.b == 0) {
                this.b = a.this.contentLength();
            }
            this.f2537a += j;
            if (a.this.c != null) {
                b bVar = a.this.c;
                long j2 = this.f2537a;
                long j3 = this.b;
                bVar.a(j2, j3, j2 == j3);
            }
        }
    }

    public a(MediaType mediaType, File file, b bVar) {
        this.b = mediaType;
        this.f2536a = file;
        this.c = bVar;
    }

    public static RequestBody b(MediaType mediaType, File file, b bVar) {
        return new a(mediaType, file, bVar);
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        return this.f2536a.length();
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return this.b;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink bufferedSink) throws IOException {
        if (this.c != null) {
            bufferedSink = Okio.buffer(new C0082a(bufferedSink));
        }
        Source source = null;
        try {
            source = Okio.source(this.f2536a);
            bufferedSink.writeAll(source);
        } finally {
            Util.closeQuietly(source);
            bufferedSink.close();
        }
    }
}
