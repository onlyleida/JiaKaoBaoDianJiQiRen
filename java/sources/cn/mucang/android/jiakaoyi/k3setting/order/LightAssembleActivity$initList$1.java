package cn.mucang.android.jiakaoyi.k3setting.order;

import android.view.View;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightAssembleModel;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.LightViewModel;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "it", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;", "<anonymous parameter 1>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class LightAssembleActivity$initList$1 extends Lambda implements Function2<LightAssembleModel, Integer, kotlin.v> {
    final /* synthetic */ LightAssembleActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LightAssembleActivity$initList$1(LightAssembleActivity lightAssembleActivity) {
        super(2);
        this.this$0 = lightAssembleActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final void m11invoke$lambda0(LightAssembleActivity this$0, LightAssembleModel it, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "$it");
        LightViewModel lightViewModel = this$0.b;
        if (lightViewModel != null) {
            lightViewModel.m(it);
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ kotlin.v invoke(LightAssembleModel lightAssembleModel, Integer num) {
        invoke(lightAssembleModel, num.intValue());
        return kotlin.v.f15822a;
    }

    public final void invoke(final LightAssembleModel it, int i) {
        kotlin.jvm.internal.r.e(it, "it");
        if (this.this$0.c.c().size() == 1) {
            cn.mucang.android.core.utils.u.h("无法删除所有灯光组合");
        } else {
            final LightAssembleActivity lightAssembleActivity = this.this$0;
            new JCommonDialog(lightAssembleActivity, new JCommonDialog.DialogParams("删除灯光组合", "确认删除该灯光组合吗，删除后将不可恢复，请谨慎操作。", "取消", (View.OnClickListener) null, SundialNumKeyBoardView.KEY_DELETE, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.y
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LightAssembleActivity$initList$1.m11invoke$lambda0(lightAssembleActivity, it, view);
                }
            }, false, 64, (kotlin.jvm.internal.o) null)).show();
        }
    }
}
