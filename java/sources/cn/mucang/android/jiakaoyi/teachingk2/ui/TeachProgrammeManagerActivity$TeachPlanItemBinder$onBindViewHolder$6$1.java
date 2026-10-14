package cn.mucang.android.jiakaoyi.teachingk2.ui;

import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemTeachPlanBinding;
import cn.mucang.android.jiakaoyi.teachingk2.model.TeachPlanItemModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.ui.TeachProgrammeManagerActivity$TeachPlanItemBinder$onBindViewHolder$6$1", f = "TeachProgrammeManagerActivity.kt", l = {246, 255}, m = "invokeSuspend")
final class TeachProgrammeManagerActivity$TeachPlanItemBinder$onBindViewHolder$6$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ ViewBindingHolder<ItemTeachPlanBinding> $holder;
    final /* synthetic */ TeachPlanItemModel $item;
    Object L$0;
    int label;
    final /* synthetic */ TeachProgrammeManagerActivity this$0;
    final /* synthetic */ TeachProgrammeManagerActivity.TeachPlanItemBinder this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TeachProgrammeManagerActivity$TeachPlanItemBinder$onBindViewHolder$6$1(TeachProgrammeManagerActivity teachProgrammeManagerActivity, TeachPlanItemModel teachPlanItemModel, TeachProgrammeManagerActivity.TeachPlanItemBinder teachPlanItemBinder, ViewBindingHolder<ItemTeachPlanBinding> viewBindingHolder, Continuation<? super TeachProgrammeManagerActivity$TeachPlanItemBinder$onBindViewHolder$6$1> continuation) {
        super(2, continuation);
        this.this$0 = teachProgrammeManagerActivity;
        this.$item = teachPlanItemModel;
        this.this$1 = teachPlanItemBinder;
        this.$holder = viewBindingHolder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new TeachProgrammeManagerActivity$TeachPlanItemBinder$onBindViewHolder$6$1(this.this$0, this.$item, this.this$1, this.$holder, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((TeachProgrammeManagerActivity$TeachPlanItemBinder$onBindViewHolder$6$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        JLoadingDialog jLoadingDialog;
        JLoadingDialog jLoadingDialog2;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                jLoadingDialog = (JLoadingDialog) this.L$0;
                kotlin.k.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                jLoadingDialog2 = (JLoadingDialog) this.L$0;
                kotlin.k.b(obj);
            }
            cn.mucang.android.core.utils.u.h("启用成功");
            cn.mucang.android.jiakaoyi.framework.log.f.o("启用教学方案：" + this.$item.id + ',' + ((Object) this.$item.programmeName));
            jLoadingDialog = jLoadingDialog2;
            DialogExtensionKt.b(jLoadingDialog);
            return kotlin.v.f15822a;
        }
        kotlin.k.b(obj);
        JLoadingDialog jLoadingDialog3 = new JLoadingDialog(this.this$0);
        jLoadingDialog3.b("正在启用");
        TeachProgrammeManagerActivity teachProgrammeManagerActivity = this.this$0;
        TeachPlanItemModel teachPlanItemModel = this.$item;
        this.L$0 = jLoadingDialog3;
        this.label = 1;
        Object objM = teachProgrammeManagerActivity.m(teachPlanItemModel, this);
        if (objM == objD) {
            return objD;
        }
        jLoadingDialog = jLoadingDialog3;
        obj = objM;
        if (((Boolean) obj).booleanValue()) {
            ExamSiteModel examSiteModel = this.this$0.f8154d;
            kotlin.jvm.internal.r.c(examSiteModel);
            cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.d(examSiteModel.examSiteId, this.$item.id);
            ExamSiteModel examSiteModel2 = this.this$0.f8154d;
            kotlin.jvm.internal.r.c(examSiteModel2);
            ExamSiteUtil.r(examSiteModel2);
            List listC = kotlin.jvm.internal.z.c(this.this$1.a().c());
            listC.add(0, listC.remove(this.$holder.getAdapterPosition()));
            this.this$1.a().notifyDataSetChanged();
            this.this$0.g().recyclerView.scrollToPosition(0);
            TeachProgrammeManagerActivity teachProgrammeManagerActivity2 = this.this$0;
            this.L$0 = jLoadingDialog;
            this.label = 2;
            if (teachProgrammeManagerActivity2.y(this) == objD) {
                return objD;
            }
            jLoadingDialog2 = jLoadingDialog;
            cn.mucang.android.core.utils.u.h("启用成功");
            cn.mucang.android.jiakaoyi.framework.log.f.o("启用教学方案：" + this.$item.id + ',' + ((Object) this.$item.programmeName));
            jLoadingDialog = jLoadingDialog2;
        } else {
            cn.mucang.android.core.utils.u.h("启用失败");
        }
        DialogExtensionKt.b(jLoadingDialog);
        return kotlin.v.f15822a;
    }
}
