package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.i.o, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/api/ShareApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "shareDeductAndRule", "", "phone", "", "examSiteId", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ShareApi extends n {
    public final boolean m(String phone, long j) throws ApiException, InternalException, HttpException {
        r.e(phone, "phone");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(j)));
        arrayList.add(new MucangNameValuePair("phone", phone));
        arrayList.add(new MucangNameValuePair("kemu", String.valueOf(AppUtils.a())));
        return httpPost("/api/open/judge-rule/share-rule.htm", arrayList).isSuccess();
    }
}
