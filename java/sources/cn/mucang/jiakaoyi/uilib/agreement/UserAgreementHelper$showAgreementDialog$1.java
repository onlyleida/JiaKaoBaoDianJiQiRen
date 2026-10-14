package cn.mucang.jiakaoyi.uilib.agreement;

import cn.mucang.android.jiakaoyi.framework.utils.i0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class UserAgreementHelper$showAgreementDialog$1 extends Lambda implements Function0<v> {
    final /* synthetic */ Function0<v> $agreeCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UserAgreementHelper$showAgreementDialog$1(Function0<v> function0) {
        super(0);
        this.$agreeCallback = function0;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        i0.i(UserAgreementHelper.f9194a.b(), true);
        Function0<v> function0 = this.$agreeCallback;
        if (function0 == null) {
            return;
        }
        function0.invoke();
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ v invoke() {
        invoke2();
        return v.f15822a;
    }
}
