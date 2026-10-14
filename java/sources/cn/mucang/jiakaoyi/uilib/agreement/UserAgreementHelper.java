package cn.mucang.jiakaoyi.uilib.agreement;

import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.SchoolDeviceUtil;
import cn.mucang.jiakaoyi.uilib.ui.login.p008j.AccountUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.agreement.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000bJ\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u000eH\u0002J\"\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000bH\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/agreement/UserAgreementHelper;", "", "()V", "AGREEMENT_ID", "", "KEY_APP_USER_AGREEMENT", "checkAgree", "", "deviceType", "Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;", "agreeCallback", "Lkotlin/Function0;", "getKey", "isAgree", "", "showAgreementDialog", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UserAgreementHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UserAgreementHelper f9194a = new UserAgreementHelper();

    private UserAgreementHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String b() {
        if (SchoolDeviceUtil.f3622a.a()) {
            return r.m("key_app_user_agreement_", DeviceUtils.c());
        }
        return "key_app_user_agreement_" + DeviceUtils.c() + '_' + ((Object) AccountUtils.c());
    }
}
