package cn.mucang.android.jiakaoyi.teachingk2.login.logic;

import android.view.View;
import cn.mucang.android.jiakaoyi.k3setting.login.BaseLogic;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutLoginTimingBinding;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarBindInfo;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarInfoManager;
import cn.mucang.jiakaoyi.uilib.login.LoginManager;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import cn.mucang.jiakaoyi.uilib.login.model.TaizhouLoginData;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.logic.q, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/TimingLoginLogic;", "Lcn/mucang/android/jiakaoyi/k3setting/login/BaseLogic;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginTimingBinding;", "binding", "(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginTimingBinding;)V", "init", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TimingLoginLogic extends BaseLogic<LayoutLoginTimingBinding> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimingLoginLogic(LayoutLoginTimingBinding binding) {
        super(binding);
        r.e(binding, "binding");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(TimingLoginLogic this$0, View view) {
        r.e(this$0, "this$0");
        androidx.fragment.app.d dVarC = this$0.c();
        LoginType loginType = LoginType.TAIZHOU;
        CarBindInfo carBindInfoA = CarInfoManager.a();
        LoginManager.j(dVarC, loginType, new TaizhouLoginData(carBindInfoA == null ? null : carBindInfoA.getPlateNum()), null, 8, null);
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.login.BaseLogic
    public void f() {
        d().loginTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TimingLoginLogic.k(this.f7345a, view);
            }
        });
    }
}
