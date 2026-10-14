package cn.mucang.sundial.library.http;

import cn.mucang.android.core.api.cache.b;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0004¨\u0006\b"}, d2 = {"Lcn/mucang/sundial/library/http/SundialNormalApi;", "Lcn/mucang/android/core/api/cache/b;", "", "getApiHost", "()Ljava/lang/String;", "getSignKey", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public class SundialNormalApi extends b {
    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return "https://sundial-app.jiakaobaodian.com";
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#PXJCg3xJmYiPpoOPhnKYmW5u";
    }
}
