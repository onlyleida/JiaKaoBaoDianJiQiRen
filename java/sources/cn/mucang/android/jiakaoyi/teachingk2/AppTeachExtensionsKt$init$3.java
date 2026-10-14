package cn.mucang.android.jiakaoyi.teachingk2;

import android.content.res.ColorStateList;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.framework.utils.JNet;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;
import cn.mucang.android.jiakaoyi.teachingk2.provider.TeachSafeProvider;
import cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.RainModeMgr;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeLocalParamManager;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.AppTeachExtensionsKt$init$3", f = "AppTeachExtensions.kt", l = {128}, m = "invokeSuspend")
final class AppTeachExtensionsKt$init$3 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ boolean $isLight;
    final /* synthetic */ RobotStatusBarBinding $this_init;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AppTeachExtensionsKt$init$3(RobotStatusBarBinding robotStatusBarBinding, boolean z, Continuation<? super AppTeachExtensionsKt$init$3> continuation) {
        super(2, continuation);
        this.$this_init = robotStatusBarBinding;
        this.$isLight = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        AppTeachExtensionsKt$init$3 appTeachExtensionsKt$init$3 = new AppTeachExtensionsKt$init$3(this.$this_init, this.$isLight, continuation);
        appTeachExtensionsKt$init$3.L$0 = obj;
        return appTeachExtensionsKt$init$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((AppTeachExtensionsKt$init$3) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlinx.coroutines.i0 i0Var;
        String strA;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            kotlinx.coroutines.i0 i0Var2 = (kotlinx.coroutines.i0) this.L$0;
            TeachSafeProvider teachSafeProvider = (TeachSafeProvider) DataProviderRegister.b(DataProviderRegister.f3433a, TeachSafeProvider.class, null, 2, null);
            if (!(teachSafeProvider != null && teachSafeProvider.setupSafe())) {
                TextView brakeTv = this.$this_init.brakeTv;
                r.d(brakeTv, "brakeTv");
                brakeTv.setVisibility(8);
                TextView brakeDesc = this.$this_init.brakeDesc;
                r.d(brakeDesc, "brakeDesc");
                brakeDesc.setVisibility(8);
                TextView textView = this.$this_init.videoTv;
                textView.setPadding(0, 0, textView.getResources().getDimensionPixelOffset(cn.mucang.android.jiakaoyi.teachbase.R.dimen.rpx_30), 0);
            }
            this.$this_init.netIv.setImageTintList(this.$isLight ? ColorStateList.valueOf(-1644564) : ColorStateList.valueOf(-14473943));
            i0Var = i0Var2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i0Var = (kotlinx.coroutines.i0) this.L$0;
            kotlin.k.b(obj);
        }
        while (kotlinx.coroutines.j0.g(i0Var)) {
            this.$this_init.timeTv.setText(FormatUtils.d("HH:mm", System.currentTimeMillis()));
            this.$this_init.gpsTv.setText(String.valueOf(cn.mucang.android.jiakaoyi.signal.c.d.m.h()));
            this.$this_init.satelliteTv.setText(String.valueOf(cn.mucang.android.jiakaoyi.signal.c.d.t().getCurrentPosition().i));
            TextView textView2 = this.$this_init.videoTv;
            int iE = PusherManager.E();
            if (iE == -1) {
                strA = cn.mucang.android.jiakaoyi.framework.utils.k0.a(cn.mucang.android.jiakaoyi.teachbase.R.string.teachbase_close);
            } else if (iE != 1) {
                strA = iE != 2 ? cn.mucang.android.jiakaoyi.framework.utils.k0.a(cn.mucang.android.jiakaoyi.teachbase.R.string.teachbase_abnormal) : cn.mucang.android.jiakaoyi.framework.utils.k0.a(cn.mucang.android.jiakaoyi.teachbase.R.string.teachbase_abnormal);
            } else {
                strA = cn.mucang.android.jiakaoyi.framework.utils.k0.a(cn.mucang.android.jiakaoyi.teachbase.R.string.teachbase_normal);
            }
            textView2.setText(strA);
            if (LocalConfigManager.f(LocalConfig.EnableNonPerceiveLogin)) {
                this.$this_init.noVisionLogin.setText(cn.mucang.android.jiakaoyi.framework.utils.k0.a(cn.mucang.android.jiakaoyi.teachbase.R.string.teachbase_face_login_open));
            } else {
                this.$this_init.noVisionLogin.setText(cn.mucang.android.jiakaoyi.framework.utils.k0.a(cn.mucang.android.jiakaoyi.teachbase.R.string.teachbase_face_login_close));
            }
            this.$this_init.brakeTv.setText(cn.mucang.android.jiakaoyi.framework.utils.k0.a(SafeLocalParamManager.a() ? cn.mucang.android.jiakaoyi.teachbase.R.string.teachbase_start : cn.mucang.android.jiakaoyi.teachbase.R.string.teachbase_close));
            this.$this_init.netIv.setSelected(JNet.e());
            this.$this_init.rainMode.setVisibility(RainModeMgr.d() ? 0 : 8);
            this.L$0 = i0Var;
            this.label = 1;
            if (s0.a(1000L, this) == objD) {
                return objD;
            }
        }
        return kotlin.v.f15822a;
    }
}
