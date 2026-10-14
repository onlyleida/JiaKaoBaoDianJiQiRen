package cn.mucang.jiakaoyi.uilib.siterule;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.jiakaoyi.uilib.api.ShareApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "phone", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class RuleSiteItemBinder$onBindViewHolder$2$1 extends Lambda implements Function1<String, kotlin.v> {
    final /* synthetic */ androidx.appcompat.app.d $activity;
    final /* synthetic */ ExamSiteModel $examSite;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RuleSiteItemBinder$onBindViewHolder$2$1(androidx.appcompat.app.d dVar, ExamSiteModel examSiteModel) {
        super(1);
        this.$activity = dVar;
        this.$examSite = examSiteModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-1, reason: not valid java name */
    public static final void m111invoke$lambda1(String phone, ExamSiteModel examSite, final JLoadingDialog loadingDialog) {
        Runnable runnable;
        kotlin.jvm.internal.r.e(phone, "$phone");
        kotlin.jvm.internal.r.e(examSite, "$examSite");
        kotlin.jvm.internal.r.e(loadingDialog, "$loadingDialog");
        try {
            try {
                new ShareApi().m(phone, examSite.examSiteId);
                cn.mucang.android.core.utils.u.h("分享成功");
                runnable = new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.siterule.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        RuleSiteItemBinder$onBindViewHolder$2$1.m112invoke$lambda1$lambda0(loadingDialog);
                    }
                };
            } catch (Exception e2) {
                if (e2 instanceof ApiException) {
                    cn.mucang.android.core.utils.u.h(e2.getMessage());
                } else {
                    cn.mucang.android.core.utils.u.h("分享失败");
                }
                runnable = new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.siterule.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        RuleSiteItemBinder$onBindViewHolder$2$1.m112invoke$lambda1$lambda0(loadingDialog);
                    }
                };
            }
            cn.mucang.android.core.utils.u.c(runnable);
        } catch (Throwable th) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.siterule.v
                @Override // java.lang.Runnable
                public final void run() {
                    RuleSiteItemBinder$onBindViewHolder$2$1.m112invoke$lambda1$lambda0(loadingDialog);
                }
            });
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-1$lambda-0, reason: not valid java name */
    public static final void m112invoke$lambda1$lambda0(JLoadingDialog loadingDialog) {
        kotlin.jvm.internal.r.e(loadingDialog, "$loadingDialog");
        loadingDialog.dismiss();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(String str) {
        invoke2(str);
        return kotlin.v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(final String phone) {
        kotlin.jvm.internal.r.e(phone, "phone");
        final JLoadingDialog jLoadingDialog = new JLoadingDialog(this.$activity);
        jLoadingDialog.b("");
        final ExamSiteModel examSiteModel = this.$examSite;
        n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.siterule.w
            @Override // java.lang.Runnable
            public final void run() {
                RuleSiteItemBinder$onBindViewHolder$2$1.m111invoke$lambda1(phone, examSiteModel, jLoadingDialog);
            }
        });
    }
}
