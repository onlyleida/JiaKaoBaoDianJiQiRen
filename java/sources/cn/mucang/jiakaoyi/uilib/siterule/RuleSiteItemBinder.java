package cn.mucang.jiakaoyi.uilib.siterule;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.view.View;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.lifecycle.o0;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.jiakaoyi.uilib.deduct.DeductSettingActivity;
import cn.mucang.jiakaoyi.uilib.deduct.DeductSyncManager;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.rule.RuleSettingActivity;
import cn.mucang.jiakaoyi.uilib.rule.RuleSyncManager;
import cn.mucang.jiakaoyi.uilib.ui.backup.BackupActivity;
import cn.mucang.jiakaoyi.uilib.ui.dialog.ShareDialog;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.mucang.android.jiakaoyi.uilib.databinding.ExamSiteRuleItemBinding;
import java.util.Objects;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001e\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0017R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/siterule/ExamSiteItem;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "isAgent", "", "(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V", "()Z", "getKeMu", "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RuleSiteItemBinder extends ViewBindingBinder<ExamSiteItem, ExamSiteRuleItemBinding> {
    private final KeMu b;
    private final boolean c;

    public RuleSiteItemBinder(KeMu keMu, boolean z) {
        kotlin.jvm.internal.r.e(keMu, "keMu");
        this.b = keMu;
        this.c = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(RuleSiteItemBinder this$0, ViewBindingHolder holder, ExamSiteItem item, ExamSiteModel examSite, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(holder, "$holder");
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(examSite, "$examSite");
        if (this$0.getC()) {
            return;
        }
        ((ExamSiteRuleItemBinding) holder.getViewBinding()).selectCb.setChecked(!((ExamSiteRuleItemBinding) holder.getViewBinding()).selectCb.isChecked());
        item.c(((ExamSiteRuleItemBinding) holder.getViewBinding()).selectCb.isChecked());
        ExamSiteUtil.f9582a.v(item.getExamSite(), this$0.getB());
        cn.mucang.android.jiakaoyi.framework.log.f.o("切换了新的考场规则：" + item.getExamSite().examSiteId + ',' + ((Object) item.getExamSite().examSiteName));
        RuleSyncManager.f(RuleSyncManager.f9550a, item.getExamSite().examSiteId, this$0.getB(), false, 4, null);
        DeductSyncManager.f(DeductSyncManager.f9236a, item.getExamSite().examSiteId, this$0.getB(), false, 4, null);
        ComponentCallbacks2 componentCallbacks2A = ActivityUtils.a(view.getContext());
        Objects.requireNonNull(componentCallbacks2A, "null cannot be cast to non-null type androidx.lifecycle.ViewModelStoreOwner");
        j0 j0VarA = new m0((o0) componentCallbacks2A).a(SwitchSiteRuleViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(Activi…:class.java\n            )");
        ((SwitchSiteRuleViewModel) j0VarA).m(examSite.examSiteId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(ExamSiteModel examSite, View view) {
        kotlin.jvm.internal.r.e(examSite, "$examSite");
        Activity activityA = ActivityUtils.a(view.getContext());
        Objects.requireNonNull(activityA, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        androidx.appcompat.app.d dVar = (androidx.appcompat.app.d) activityA;
        ShareDialog shareDialog = new ShareDialog();
        shareDialog.w(new RuleSiteItemBinder$onBindViewHolder$2$1(dVar, examSite));
        shareDialog.show(dVar.getSupportFragmentManager(), "规则分享");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(View view) {
        InstructChangeActivity.a aVar = InstructChangeActivity.f9587f;
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        aVar.a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(final RuleSiteItemBinder this$0, ExamSiteItem item, final ExamSiteModel examSite, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(examSite, "$examSite");
        if (!this$0.getC() || AppUtils.k()) {
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "it.context");
            new JCommonDialog(context, new JCommonDialog.DialogParams("", "报备后其他选用该考场的车辆可同步报备的规则，是否把当前考场配置的扣分设置和评判规则报备", "取消", (View.OnClickListener) null, "确认", new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    RuleSiteItemBinder.E(examSite, this$0, view2);
                }
            }, false, 64, (kotlin.jvm.internal.o) null)).show();
        } else {
            BackupActivity.a aVar = BackupActivity.f9763d;
            Context context2 = view.getContext();
            kotlin.jvm.internal.r.d(context2, "it.context");
            aVar.a(context2, item.getExamSite().examSiteId, this$0.getB());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(final ExamSiteModel examSite, final RuleSiteItemBinder this$0, View view) {
        kotlin.jvm.internal.r.e(examSite, "$examSite");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.siterule.s
            @Override // java.lang.Runnable
            public final void run() {
                RuleSiteItemBinder.F(examSite, this$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(ExamSiteModel examSite, RuleSiteItemBinder this$0) {
        kotlin.jvm.internal.r.e(examSite, "$examSite");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            if (new SiteApi().s(examSite.examSiteId, this$0.getB())) {
                cn.mucang.android.core.utils.u.h("报备成功!");
            } else {
                cn.mucang.android.core.utils.u.h("报备失败!");
            }
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("机器人报备异常：", e2.getLocalizedMessage()));
            if (e2 instanceof ApiException) {
                cn.mucang.android.core.utils.u.h(e2.getMessage());
            } else {
                cn.mucang.android.core.utils.u.h("报备失败");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(ExamSiteModel examSite, RuleSiteItemBinder this$0, View view) {
        kotlin.jvm.internal.r.e(examSite, "$examSite");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        RuleSettingActivity.a aVar = RuleSettingActivity.f9496e;
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        RuleSettingActivity.a.b(aVar, context, examSite, this$0.getB(), false, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(ExamSiteModel examSite, RuleSiteItemBinder this$0, View view) {
        kotlin.jvm.internal.r.e(examSite, "$examSite");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DeductSettingActivity.a aVar = DeductSettingActivity.f9225d;
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        aVar.a(context, examSite, this$0.getB());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(View view) {
        f.a.a.a.activity.h.e("http://robot.nav.mucang.cn/orderSetting");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(View view) {
        f.a.a.a.activity.h.e("http://robot.nav.mucang.cn/teachSetting");
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final KeMu getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final boolean getC() {
        return this.c;
    }

    @Override // com.drakeet.multitype.c
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<ExamSiteRuleItemBinding> holder, final ExamSiteItem item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        final ExamSiteModel examSite = item.getExamSite();
        ((ExamSiteRuleItemBinding) holder.getViewBinding()).siteNameTv.setText(examSite.examSiteName);
        ((ExamSiteRuleItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleSiteItemBinder.A(this.f9618a, holder, item, examSite, view);
            }
        });
        ((ExamSiteRuleItemBinding) holder.getViewBinding()).selectCb.setChecked(item.getIsSelected());
        if (AppUtils.k()) {
            if (!item.getIsSelected()) {
                ((ExamSiteRuleItemBinding) holder.getViewBinding()).ruleBackupTv.setVisibility(8);
                ((ExamSiteRuleItemBinding) holder.getViewBinding()).ruleSettingTv.setVisibility(8);
                ((ExamSiteRuleItemBinding) holder.getViewBinding()).deductSettingTv.setVisibility(8);
                ((ExamSiteRuleItemBinding) holder.getViewBinding()).instructChangeTv.setVisibility(8);
                ((ExamSiteRuleItemBinding) holder.getViewBinding()).orderTv.setVisibility(8);
                ((ExamSiteRuleItemBinding) holder.getViewBinding()).teachTv.setVisibility(8);
            } else if (this.b == KeMu.K3) {
                ((ExamSiteRuleItemBinding) holder.getViewBinding()).ruleBackupTv.setVisibility(0);
                ((ExamSiteRuleItemBinding) holder.getViewBinding()).ruleSettingTv.setVisibility(0);
                ((ExamSiteRuleItemBinding) holder.getViewBinding()).deductSettingTv.setVisibility(0);
                ((ExamSiteRuleItemBinding) holder.getViewBinding()).orderTv.setVisibility(0);
                ((ExamSiteRuleItemBinding) holder.getViewBinding()).teachTv.setVisibility(0);
            } else {
                ((ExamSiteRuleItemBinding) holder.getViewBinding()).ruleBackupTv.setVisibility(0);
                ((ExamSiteRuleItemBinding) holder.getViewBinding()).ruleSettingTv.setVisibility(0);
                ((ExamSiteRuleItemBinding) holder.getViewBinding()).deductSettingTv.setVisibility(0);
                ((ExamSiteRuleItemBinding) holder.getViewBinding()).instructChangeTv.setVisibility(0);
            }
        } else if (!AppUtils.g()) {
            ((ExamSiteRuleItemBinding) holder.getViewBinding()).shareTv.setVisibility(0);
            ((ExamSiteRuleItemBinding) holder.getViewBinding()).instructChangeTv.setVisibility(0);
        }
        ((ExamSiteRuleItemBinding) holder.getViewBinding()).shareTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleSiteItemBinder.B(examSite, view);
            }
        });
        ((ExamSiteRuleItemBinding) holder.getViewBinding()).instructChangeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleSiteItemBinder.C(view);
            }
        });
        ((ExamSiteRuleItemBinding) holder.getViewBinding()).ruleBackupTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleSiteItemBinder.D(this.f9616a, item, examSite, view);
            }
        });
        ((ExamSiteRuleItemBinding) holder.getViewBinding()).ruleSettingTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleSiteItemBinder.G(examSite, this, view);
            }
        });
        ((ExamSiteRuleItemBinding) holder.getViewBinding()).deductSettingTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleSiteItemBinder.H(examSite, this, view);
            }
        });
        ((ExamSiteRuleItemBinding) holder.getViewBinding()).orderTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleSiteItemBinder.I(view);
            }
        });
        ((ExamSiteRuleItemBinding) holder.getViewBinding()).teachTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleSiteItemBinder.J(view);
            }
        });
    }
}
