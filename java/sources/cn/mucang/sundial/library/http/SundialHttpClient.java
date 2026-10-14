package cn.mucang.sundial.library.http;

import kotlin.Metadata;
import kotlin.jvm.internal.r;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcn/mucang/sundial/library/http/SundialHttpClient;", "", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/OkHttpClient;", "getClient", "()Lokhttp3/OkHttpClient;", "setClient", "(Lokhttp3/OkHttpClient;)V", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class SundialHttpClient {
    public static final SundialHttpClient INSTANCE = new SundialHttpClient();
    private static volatile OkHttpClient client = new OkHttpClient();

    private SundialHttpClient() {
    }

    public final OkHttpClient getClient() {
        return client;
    }

    public final void setClient(OkHttpClient okHttpClient) {
        r.e(okHttpClient, "<set-?>");
        client = okHttpClient;
    }
}
