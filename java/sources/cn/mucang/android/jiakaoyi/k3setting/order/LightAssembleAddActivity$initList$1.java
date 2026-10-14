package cn.mucang.android.jiakaoyi.k3setting.order;

import android.view.View;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.LightAddViewModel;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "model", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;"}, k = 3, mv = {1, 5, 1}, xi = 48)
final class LightAssembleAddActivity$initList$1 extends Lambda implements Function1<LightExamModel, kotlin.v> {
    final /* synthetic */ LightAssembleAddActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LightAssembleAddActivity$initList$1(LightAssembleAddActivity lightAssembleAddActivity) {
        super(1);
        this.this$0 = lightAssembleAddActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final void m12invoke$lambda0(LightAssembleAddActivity this$0, LightExamModel model, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(model, "$model");
        LightAddViewModel lightAddViewModel = this$0.b;
        if (lightAddViewModel != null) {
            lightAddViewModel.m(model);
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(LightExamModel lightExamModel) {
        invoke2(lightExamModel);
        return kotlin.v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(final LightExamModel model) {
        kotlin.jvm.internal.r.e(model, "model");
        if (this.this$0.f4370e.c().size() <= 1) {
            cn.mucang.android.core.utils.u.h("最少保留一组灯光");
        } else {
            final LightAssembleAddActivity lightAssembleAddActivity = this.this$0;
            new JCommonDialog(lightAssembleAddActivity, new JCommonDialog.DialogParams("删除灯光指令", "确认从该组合中删除此灯光指令吗？", "取消", (View.OnClickListener) null, SundialNumKeyBoardView.KEY_DELETE, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.j0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LightAssembleAddActivity$initList$1.m12invoke$lambda0(lightAssembleAddActivity, model, view);
                }
            }, false, 64, (kotlin.jvm.internal.o) null)).show();
        }
    }
}
