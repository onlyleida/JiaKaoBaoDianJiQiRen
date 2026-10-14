package cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.calibration.CalibarDataUtil;
import com.mobile.auth.gatewayauth.ResultCode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender;", "", "()V", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AutoAssistParamsSender {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f6144a = new Companion(null);

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\bH\u0007JL\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\bH\u0007¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion;", "", "()V", "sendParams", "", "needToast", "", "onSuccess", "Lkotlin/Function0;", "halfClutchStartValue", "", "throttleValue", "ctrlSpeedBrakeValue", "ctrlSpeedClutchValue", "ctrlBackClutchValue", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void c(Companion companion, boolean z, Function0 function0, int i, Object obj) {
            if ((i & 1) != 0) {
                z = true;
            }
            if ((i & 2) != 0) {
                function0 = null;
            }
            companion.b(z, function0);
        }

        public final void a(final int i, final int i2, final int i3, final int i4, final int i5, final boolean z, final Function0<v> function0) {
            new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.c.class, 0, 1000L, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.AutoAssistParamsSender$Companion$sendParams$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
                    vVar.c((byte) 3);
                    vVar.c((byte) i);
                    vVar.c((byte) i2);
                    vVar.c((byte) i3);
                    vVar.c((byte) i4);
                    vVar.c((byte) i5);
                    m.h().Q(Cmd.AutoAssist, vVar.b());
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }
            }, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.AutoAssistParamsSender$Companion$sendParams$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    if (z) {
                        u.h(k0.a(R.string.teachbase_auto_subsidiary_parameter_timeout));
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.o("自动辅助参数设置超时");
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }
            }, new Function1<cn.mucang.android.jiakaoyi.signal.communicate.receive.c, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.AutoAssistParamsSender$Companion$sendParams$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(cn.mucang.android.jiakaoyi.signal.communicate.receive.c it) {
                    r.e(it, "it");
                    String strM = r.m("自动辅助参数设置", it.f5428a ? ResultCode.MSG_SUCCESS : ResultCode.MSG_FAILED);
                    cn.mucang.android.jiakaoyi.framework.log.f.o(strM);
                    if (z) {
                        u.h(strM);
                    }
                    Function0<v> function1 = function0;
                    if (function1 == null) {
                        return;
                    }
                    function1.invoke();
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ v invoke(cn.mucang.android.jiakaoyi.signal.communicate.receive.c cVar) {
                    invoke2(cVar);
                    return v.f15822a;
                }
            }).i();
        }

        public final void b(boolean z, Function0<v> function0) {
            a(CalibarDataUtil.a(), CalibarDataUtil.j(), CalibarDataUtil.c(), CalibarDataUtil.d(), CalibarDataUtil.b(), z, function0);
        }
    }
}
