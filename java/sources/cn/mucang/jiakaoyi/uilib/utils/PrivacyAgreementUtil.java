package cn.mucang.jiakaoyi.uilib.utils;

import cn.mucang.android.core.config.MucangConfig;
import com.mucang.android.jiakaoyi.uilib.R;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.s.m, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/utils/PrivacyAgreementUtil;", "", "()V", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PrivacyAgreementUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f9584a = new a(null);
    private static final String b = "https://share-m.kakamobi.com/activity.kakamobi.com/jiakaobaodian-xy-base/?";

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.s.m$a */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0007J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0007J\b\u0010\t\u001a\u00020\u0004H\u0007J\b\u0010\n\u001a\u00020\u0004H\u0007R\u0016\u0010\u0003\u001a\u00020\u00048\u0002X\u0083D¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/utils/PrivacyAgreementUtil$Companion;", "", "()V", "baseUrl", "", "getBaseUrl$annotations", "getAgreementUrl", "getParam", "getPrivacyUrl", "getStudentPrivacyUrl", "getUseProtocolUrl", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        private final String b() {
            return r.m("_product=", MucangConfig.getContext().getResources().getString(R.string.product));
        }

        public final String a() {
            return PrivacyAgreementUtil.b + b() + "&pageType=userprotect";
        }

        public final String c() {
            return PrivacyAgreementUtil.b + b() + "&pageType=privacy";
        }
    }
}
