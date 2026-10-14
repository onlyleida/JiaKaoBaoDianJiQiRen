package cn.mucang.android.core.api.e;

import android.net.Uri;
import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.request.MucangRequest;
import cn.mucang.android.core.api.verify.ErrorAction;
import cn.mucang.android.core.api.verify.e;
import cn.mucang.android.core.api.verify.f;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import com.alibaba.fastjson.JSONObject;
import com.tencent.tauth.AuthActivity;
import f.a.a.a.activity.c;
import f.a.a.a.activity.h;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public class b implements cn.mucang.android.core.api.request.d.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CountDownLatch f2373a;
    private boolean b;
    private Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2374d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f f2375e = new a();

    class a implements f {
        a() {
        }

        @Override // cn.mucang.android.core.api.verify.f
        public void a(boolean z, Object obj) {
            if (b.this.f2373a != null) {
                b.this.b = z;
                b.this.c = obj;
                b.this.f2373a.countDown();
            }
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.core.api.e.b$b, reason: collision with other inner class name */
    class RunnableC0067b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f2377a;

        RunnableC0067b(b bVar, String str) {
            this.f2377a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.e(this.f2377a);
        }
    }

    private void e(MucangRequest mucangRequest) {
        Object obj = this.c;
        if (obj instanceof List) {
            List<MucangNameValuePair> list = (List) obj;
            if (list.size() <= 0 || !(list.get(0) instanceof MucangNameValuePair)) {
                return;
            }
            mucangRequest.c().a(list);
        }
    }

    private void f(ApiResponse apiResponse) throws InternalException {
        this.f2374d = false;
        String strG = g(apiResponse);
        if (n0.e(strG)) {
            return;
        }
        c cVarA = h.a(strG.split("\\?")[0]);
        if (cVarA instanceof e) {
            ((e) cVarA).b(this.f2375e);
        } else {
            this.f2374d = false;
        }
        u.c(new RunnableC0067b(this, strG));
    }

    private String g(ApiResponse apiResponse) throws InternalException {
        JSONObject data = apiResponse.getData();
        String string = data.getString(AuthActivity.ACTION_KEY);
        String string2 = data.getString("minVersion");
        Uri uri = Uri.parse(string);
        if ("true".equalsIgnoreCase(uri.getQueryParameter("retry"))) {
            this.f2374d = true;
        }
        if (ErrorAction.isActionSupported(string, string2)) {
            return uri.toString();
        }
        return null;
    }

    @Override // cn.mucang.android.core.api.request.d.b
    public void a(ApiResponse apiResponse, MucangRequest mucangRequest) throws Exception {
        if (apiResponse == null || !ErrorAction.shouldIntercept(apiResponse.getErrorCode())) {
            return;
        }
        f(apiResponse);
        if (this.f2374d) {
            CountDownLatch countDownLatch = new CountDownLatch(1);
            this.f2373a = countDownLatch;
            this.b = false;
            countDownLatch.await();
            if (this.b) {
                e(mucangRequest);
                apiResponse.copyFromOtherResponse(mucangRequest.g());
            }
        }
    }
}
