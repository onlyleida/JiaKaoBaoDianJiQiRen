package cn.mucang.android.core.glide;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class c {
    private static OkHttpClient c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<String, List<cn.mucang.android.core.glide.b>> f2520a = new ConcurrentHashMap();
    private static final Handler b = new HandlerC0079c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final cn.mucang.android.core.glide.b f2521d = new b();

    class a implements Interceptor {
        a() {
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) throws IOException {
            Request request = chain.request();
            Response responseProceed = chain.proceed(request);
            return responseProceed.newBuilder().body(new d(request.url().toString(), responseProceed.body(), c.f2521d)).build();
        }
    }

    class b implements cn.mucang.android.core.glide.b {
        b() {
        }

        @Override // cn.mucang.android.core.glide.b
        public void a(String str, long j, long j2) {
            List list = (List) c.f2520a.get(str);
            if (list == null || list.size() <= 0) {
                return;
            }
            Message messageObtainMessage = c.b.obtainMessage();
            messageObtainMessage.obj = str;
            messageObtainMessage.arg1 = (int) j;
            messageObtainMessage.arg2 = (int) j2;
            c.b.sendMessage(messageObtainMessage);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.core.glide.c$c, reason: collision with other inner class name */
    private static class HandlerC0079c extends Handler {
        HandlerC0079c() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            String str = (String) message.obj;
            long j = message.arg1;
            long j2 = message.arg2;
            List<cn.mucang.android.core.glide.b> list = (List) c.f2520a.get(str);
            if (list == null || list.size() <= 0) {
                return;
            }
            for (cn.mucang.android.core.glide.b bVar : list) {
                if (bVar != null) {
                    bVar.a(str, j, j2);
                }
            }
        }
    }

    static OkHttpClient d() {
        if (c == null) {
            c = cn.mucang.android.core.http.a.r().newBuilder().addNetworkInterceptor(new a()).build();
        }
        return c;
    }
}
