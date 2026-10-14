package cn.mucang.android.jiakaoyi.teachingk2;

import android.annotation.SuppressLint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.r;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.image.view.MucangCircleImageView;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutExitAppBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.UserCommonTitleBinding;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.TimeTickSignal;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import com.tencent.connect.common.Constants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006H\u0007\u001a&\u0010\u0007\u001a\u00020\u0001*\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007\u001aF\u0010\u0007\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006H\u0007\u001a\u001a\u0010\u0007\u001a\u00020\u0001*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u000e\u001a\u001a\u0010\u0019\u001a\u00020\u0001*\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0014\u001a\u001a\u0010\u001d\u001a\u00020\u0001*\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0014¨\u0006\u001e"}, d2 = {"exitCountDown", "", "Landroidx/lifecycle/LifecycleOwner;", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutExitAppBinding;", "onExit", "Lkotlin/Function0;", "init", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/TeachingMenuBinding;", "title", "", "activity", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "showBlack", "", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;", "owner", "isLight", "backString", "backIcon", "", "backAction", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;", Constants.PARAM_SCOPE, "Landroidx/lifecycle/LifecycleCoroutineScope;", "setDrawableLeft", "Landroid/widget/TextView;", "resId", "size", "setDrawableRight", "teachbase_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
public final class AppTeachExtensionsKt {
    @SuppressLint({"RestrictedApi", "SetTextI18n"})
    public static final void a(r rVar, LayoutExitAppBinding viewBinding, Function0<kotlin.v> onExit) {
        kotlin.jvm.internal.r.e(rVar, "<this>");
        kotlin.jvm.internal.r.e(viewBinding, "viewBinding");
        kotlin.jvm.internal.r.e(onExit, "onExit");
        kotlinx.coroutines.g.b(androidx.lifecycle.s.a(rVar), null, null, new AppTeachExtensionsKt$exitCountDown$1(viewBinding, onExit, null), 3, null);
    }

    @SuppressLint({"SetTextI18n"})
    public static final void b(final UserCommonTitleBinding userCommonTitleBinding, r owner, boolean z, String str, String str2, int i, final Function0<kotlin.v> backAction) {
        kotlin.jvm.internal.r.e(userCommonTitleBinding, "<this>");
        kotlin.jvm.internal.r.e(owner, "owner");
        kotlin.jvm.internal.r.e(backAction, "backAction");
        userCommonTitleBinding.getRoot().setSelected(z);
        userCommonTitleBinding.titleTv.setText(str);
        TextView textView = userCommonTitleBinding.nameTv;
        XyUserModel xyUserModelE = RobotAccount.i().e();
        String name = xyUserModelE == null ? null : xyUserModelE.getName();
        if (name == null) {
            name = cn.mucang.android.jiakaoyi.framework.utils.k0.a(cn.mucang.android.jiakaoyi.teachbase.R.string.teachbase_no_login);
        }
        textView.setText(name);
        MucangCircleImageView mucangCircleImageView = userCommonTitleBinding.avatarIv;
        XyUserModel xyUserModelE2 = RobotAccount.i().e();
        String avatar = xyUserModelE2 != null ? xyUserModelE2.getAvatar() : null;
        XyUserModel xyUserModelE3 = RobotAccount.i().e();
        boolean z2 = false;
        if (xyUserModelE3 != null && xyUserModelE3.getGender() == 1) {
            z2 = true;
        }
        mucangCircleImageView.d(avatar, z2 ? cn.mucang.android.jiakaoyi.teachbase.R.drawable.icon_default_male : cn.mucang.android.jiakaoyi.teachbase.R.drawable.icon_default_female);
        userCommonTitleBinding.closeIv.setText(str2);
        TextView closeIv = userCommonTitleBinding.closeIv;
        kotlin.jvm.internal.r.d(closeIv, "closeIv");
        h(closeIv, i, (int) MucangConfig.getContext().getResources().getDimension(cn.mucang.android.jiakaoyi.teachbase.R.dimen.rpx_38));
        userCommonTitleBinding.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AppTeachExtensionsKt.d(backAction, view);
            }
        });
        LiveBus.d(TimeTickSignal.class).h(owner, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AppTeachExtensionsKt.e(userCommonTitleBinding, (TimeTickSignal) obj);
            }
        });
    }

    public static final void c(RobotStatusBarBinding robotStatusBarBinding, androidx.lifecycle.m scope, boolean z) {
        kotlin.jvm.internal.r.e(robotStatusBarBinding, "<this>");
        kotlin.jvm.internal.r.e(scope, "scope");
        robotStatusBarBinding.getRoot().setSelected(z);
        kotlinx.coroutines.g.b(scope, null, null, new AppTeachExtensionsKt$init$3(robotStatusBarBinding, z, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(Function0 backAction, View view) {
        kotlin.jvm.internal.r.e(backAction, "$backAction");
        backAction.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(UserCommonTitleBinding this_init, TimeTickSignal timeTickSignal) {
        kotlin.jvm.internal.r.e(this_init, "$this_init");
        TextView textView = this_init.durationTv;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = cn.mucang.android.jiakaoyi.framework.utils.k0.a(cn.mucang.android.jiakaoyi.teachbase.R.string.teachbase_train_duration);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_train_duration)");
        String str = String.format(strA, Arrays.copyOf(new Object[]{FormatUtils.f(timeTickSignal.time, true)}, 1));
        kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
        textView.setText(str);
    }

    public static final void h(TextView textView, int i, int i2) {
        kotlin.jvm.internal.r.e(textView, "<this>");
        Drawable drawableF = androidx.core.a.a.f(textView.getContext(), i);
        if (drawableF != null) {
            drawableF.setBounds(0, 0, i2, i2);
        }
        textView.setCompoundDrawables(drawableF, null, null, null);
    }
}
