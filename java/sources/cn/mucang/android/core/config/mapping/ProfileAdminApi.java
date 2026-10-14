package cn.mucang.android.core.config.mapping;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.common.net.HttpHeaders;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.config.mapping.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\u0003H\u0014J\u001b\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rJ\b\u0010\u000e\u001a\u00020\u0003H\u0014J\u0006\u0010\u000f\u001a\u00020\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/core/config/mapping/ProfileAdminApi;", "Lcn/mucang/android/core/api/BaseApi;", "token", "", "(Ljava/lang/String;)V", "getToken", "()Ljava/lang/String;", "getApiHost", "getProfileList", "", "Lcn/mucang/android/core/config/mapping/ProfileJsonData;", TtmlNode.ATTR_ID, "", "(Ljava/lang/Long;)Ljava/util/List;", "getSignKey", "isTokenValid", "", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ProfileAdminApi extends cn.mucang.android.core.api.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2485a;

    public ProfileAdminApi(String token) {
        r.e(token, "token");
        this.f2485a = token;
        addRequestInterceptor(new cn.mucang.android.core.api.request.d.a() { // from class: cn.mucang.android.core.config.mapping.a
            @Override // cn.mucang.android.core.api.request.d.a
            public final void a(cn.mucang.android.core.api.request.c cVar) {
                ProfileAdminApi.b(this.f2478a, cVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(ProfileAdminApi this$0, cn.mucang.android.core.api.request.c cVar) {
        r.e(this$0, "this$0");
        cVar.a("X-SSO-Token", this$0.getF2485a());
        cVar.a(HttpHeaders.X_REQUESTED_WITH, "XMLHttpRequest");
    }

    public final List<ProfileJsonData> c(Long l) {
        ArrayList arrayList = new ArrayList();
        if (l != null) {
            arrayList.addAll(httpGetDataList(r.m("/api/admin/app/my-url-mapping-list.htm?id=", l), ProfileJsonData.class));
        }
        arrayList.addAll(httpGetDataList("/api/admin/app/my-url-mapping-list.htm", ProfileJsonData.class));
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (hashSet.add(Long.valueOf(((ProfileJsonData) obj).getId()))) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getF2485a() {
        return this.f2485a;
    }

    public final boolean e() {
        return httpGet("/api/admin/app/check.htm").isSuccess();
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return "https://sentinel.mucang.cn/sso-sentinel";
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "";
    }
}
