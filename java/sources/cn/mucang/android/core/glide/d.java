package cn.mucang.android.core.glide;

import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class d extends ResponseBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2522a;
    private ResponseBody b;
    private b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BufferedSource f2523d;

    class a extends ForwardingSource {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f2524a;

        a(Source source) {
            super(source);
            this.f2524a = 0L;
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            long j2 = super.read(buffer, j);
            this.f2524a += j2 >= 0 ? j2 : 0L;
            if (d.this.c != null) {
                d.this.c.a(d.this.f2522a, this.f2524a, d.this.contentLength());
            }
            return j2;
        }
    }

    public d(String str, ResponseBody responseBody, b bVar) {
        this.f2522a = str;
        this.b = responseBody;
        this.c = bVar;
    }

    private Source c(Source source) {
        return new a(source);
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.b.contentLength();
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        return this.b.contentType();
    }

    @Override // okhttp3.ResponseBody
    public BufferedSource source() {
        if (this.f2523d == null) {
            this.f2523d = Okio.buffer(c(this.b.source()));
        }
        return this.f2523d;
    }
}
