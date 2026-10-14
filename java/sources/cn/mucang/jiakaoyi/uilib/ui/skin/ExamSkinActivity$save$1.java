package cn.mucang.jiakaoyi.uilib.ui.skin;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.jiakaoyi.uilib.api.ResConfigApi;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.ui.skin.ExamSkinActivity$save$1", f = "ExamSkinActivity.kt", l = {}, m = "invokeSuspend")
final class ExamSkinActivity$save$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ JLoadingDialog $loading;
    int label;
    final /* synthetic */ ExamSkinActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExamSkinActivity$save$1(ExamSkinActivity examSkinActivity, JLoadingDialog jLoadingDialog, Continuation<? super ExamSkinActivity$save$1> continuation) {
        super(2, continuation);
        this.this$0 = examSkinActivity;
        this.$loading = jLoadingDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
    public static final void m117invokeSuspend$lambda0(ExamSkinActivity examSkinActivity) {
        examSkinActivity.setResult(-1);
        examSkinActivity.finish();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new ExamSkinActivity$save$1(this.this$0, this.$loading, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((ExamSkinActivity$save$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Runnable runnable;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            try {
                KeMu keMu = KeMu.parse(AppUtils.a());
                r.d(keMu, "parse(AppUtils.getKemu())");
                long jN = ExamSiteUtil.n(keMu, 0L);
                ResConfigApi resConfigApi = new ResConfigApi();
                BaseSkin baseSkin = this.this$0.b;
                if (baseSkin == null) {
                    r.u("selectSkin");
                    throw null;
                }
                long skinId = baseSkin.getSkinId();
                BaseSkin baseSkin2 = this.this$0.b;
                if (baseSkin2 == null) {
                    r.u("selectSkin");
                    throw null;
                }
                if (resConfigApi.n(jN, 1, skinId, baseSkin2.getSkinName())) {
                    BaseSkin baseSkin3 = this.this$0.b;
                    if (baseSkin3 == null) {
                        r.u("selectSkin");
                        throw null;
                    }
                    cn.mucang.android.jiakaoyi.framework.utils.i0.k("keyExamSkinType", baseSkin3.getSkinId());
                    final ExamSkinActivity examSkinActivity = this.this$0;
                    u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.skin.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            ExamSkinActivity$save$1.m117invokeSuspend$lambda0(examSkinActivity);
                        }
                    });
                } else {
                    u.h("保存皮肤失败");
                }
                final JLoadingDialog jLoadingDialog = this.$loading;
                runnable = new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.skin.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogExtensionKt.b(jLoadingDialog);
                    }
                };
                u.f(runnable);
                return v.f15822a;
            } catch (Exception e2) {
                e2.printStackTrace();
                final JLoadingDialog jLoadingDialog2 = this.$loading;
                runnable = new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.skin.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogExtensionKt.b(jLoadingDialog2);
                    }
                };
            }
        } catch (Throwable th) {
            final JLoadingDialog jLoadingDialog3 = this.$loading;
            u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.skin.e
                @Override // java.lang.Runnable
                public final void run() {
                    DialogExtensionKt.b(jLoadingDialog3);
                }
            });
            throw th;
        }
    }
}
