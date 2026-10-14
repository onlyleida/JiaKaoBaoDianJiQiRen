package cn.mucang.android.jiakaoyi.framework.p002e;

import androidx.lifecycle.z;
import kotlin.Metadata;
import kotlin.jvm.internal.o;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.e.p, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/api/SsoBaseApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "Companion", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class SsoBaseApi extends n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f3442e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final z<String> f3443f = new z<>();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.e.p$a */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0002\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/api/SsoBaseApi$Companion;", "", "()V", "ssoToken", "Landroidx/lifecycle/MutableLiveData;", "", "getSsoToken$annotations", "getSsoToken", "()Landroidx/lifecycle/MutableLiveData;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final z<String> a() {
            return SsoBaseApi.f3443f;
        }
    }

    public SsoBaseApi() {
        b();
    }

    public static final z<String> n() {
        return f3442e.a();
    }
}
