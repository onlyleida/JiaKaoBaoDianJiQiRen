.class public final Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/jiakaoyi/uilib/siterule/e0;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001e\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0017R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/jiakaoyi/uilib/siterule/ExamSiteItem;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;",
        "keMu",
        "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "isAgent",
        "",
        "(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V",
        "()Z",
        "getKeMu",
        "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V
    .locals 1

    const-string v0, "keMu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->c:Z

    return-void
.end method

.method private static final A(Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/siterule/e0;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "this$0"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$holder"

    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$item"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$examSite"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->selectCb:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v5

    check-cast v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v5, v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->selectCb:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->selectCb:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->c(Z)V

    .line 4
    sget-object v2, Lcn/mucang/jiakaoyi/uilib/s/j;->a:Lcn/mucang/jiakaoyi/uilib/s/j;

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->a()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->n()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcn/mucang/jiakaoyi/uilib/s/j;->v(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5207\u6362\u4e86\u65b0\u7684\u8003\u573a\u89c4\u5219\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->a()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->a()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    sget-object v4, Lcn/mucang/jiakaoyi/uilib/rule/j0;->a:Lcn/mucang/jiakaoyi/uilib/rule/j0;

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->a()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v2

    iget-wide v5, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->n()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcn/mucang/jiakaoyi/uilib/rule/j0;->f(Lcn/mucang/jiakaoyi/uilib/rule/j0;JLcn/mucang/android/jiakaoyi/engine/model/KeMu;ZILjava/lang/Object;)V

    .line 7
    sget-object v11, Lcn/mucang/jiakaoyi/uilib/deduct/b0;->a:Lcn/mucang/jiakaoyi/uilib/deduct/b0;

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->a()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    iget-wide v12, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->n()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcn/mucang/jiakaoyi/uilib/deduct/b0;->f(Lcn/mucang/jiakaoyi/uilib/deduct/b0;JLcn/mucang/android/jiakaoyi/engine/model/KeMu;ZILjava/lang/Object;)V

    .line 8
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.lifecycle.ViewModelStoreOwner"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/o0;

    invoke-direct {v0, v2}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v2, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v2, "ViewModelProvider(Activi\u2026:class.java\n            )"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    .line 9
    iget-wide v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;->m(J)V

    return-void
.end method

.method private static final B(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 2

    const-string v0, "$examSite"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/app/d;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;-><init>()V

    .line 3
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder$onBindViewHolder$2$1;

    invoke-direct {v1, p1, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder$onBindViewHolder$2$1;-><init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;->w(Lkotlin/jvm/b/l;)V

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "\u89c4\u5219\u5206\u4eab"

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final C(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->f:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "it.context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static final D(Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Lcn/mucang/jiakaoyi/uilib/siterule/e0;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$examSite"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->o()Z

    move-result v0

    const-string v1, "it.context"

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;->d:Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity$a;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->a()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->n()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p0

    invoke-virtual {p2, p3, v0, v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity$a;->a(Landroid/content/Context;JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 4
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const/4 v6, 0x0

    .line 6
    new-instance v8, Lcn/mucang/jiakaoyi/uilib/siterule/o;

    invoke-direct {v8, p2, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/o;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;)V

    const/4 v9, 0x0

    const/16 v10, 0x40

    const/4 v11, 0x0

    const-string v3, ""

    const-string v4, "\u62a5\u5907\u540e\u5176\u4ed6\u9009\u7528\u8be5\u8003\u573a\u7684\u8f66\u8f86\u53ef\u540c\u6b65\u62a5\u5907\u7684\u89c4\u5219\uff0c\u662f\u5426\u628a\u5f53\u524d\u8003\u573a\u914d\u7f6e\u7684\u6263\u5206\u8bbe\u7f6e\u548c\u8bc4\u5224\u89c4\u5219\u62a5\u5907"

    const-string v5, "\u53d6\u6d88"

    const-string v7, "\u786e\u8ba4"

    move-object v2, v0

    .line 7
    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 8
    invoke-direct {p1, p3, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method

.method private static final E(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Landroid/view/View;)V
    .locals 0

    const-string p2, "$examSite"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcn/mucang/jiakaoyi/uilib/siterule/s;

    invoke-direct {p2, p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/s;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;)V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final F(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;)V
    .locals 3

    const-string v0, "$examSite"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/siterule/h0;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/siterule/h0;-><init>()V

    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->n()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/h0;->s(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u62a5\u5907\u6210\u529f!"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u62a5\u5907\u5931\u8d25!"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u673a\u5668\u4eba\u62a5\u5907\u5f02\u5e38\uff1a"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    instance-of p1, p0, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "\u62a5\u5907\u5931\u8d25"

    .line 7
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final G(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Landroid/view/View;)V
    .locals 8

    const-string v0, "$examSite"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->e:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$a;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string p2, "it.context"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->n()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$a;->b(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$a;Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final H(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Landroid/view/View;)V
    .locals 2

    const-string v0, "$examSite"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;->d:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$a;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "it.context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->n()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p1

    invoke-virtual {v0, p2, p0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$a;->a(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    return-void
.end method

.method private static final I(Landroid/view/View;)V
    .locals 0

    const-string p0, "http://robot.nav.mucang.cn/orderSetting"

    .line 1
    invoke-static {p0}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    return-void
.end method

.method private static final J(Landroid/view/View;)V
    .locals 0

    const-string p0, "http://robot.nav.mucang.cn/teachSetting"

    .line 1
    invoke-static {p0}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    return-void
.end method

.method public static synthetic p(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->C(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->G(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Lcn/mucang/jiakaoyi/uilib/siterule/e0;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->D(Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Lcn/mucang/jiakaoyi/uilib/siterule/e0;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->E(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/siterule/e0;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->A(Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/siterule/e0;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->I(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->H(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->F(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;)V

    return-void
.end method

.method public static synthetic x(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->J(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->B(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/siterule/e0;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->z(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/siterule/e0;)V

    return-void
.end method

.method public final n()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->c:Z

    return v0
.end method

.method public z(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/siterule/e0;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/siterule/e0;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->a()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->siteNameTv:Landroid/widget/TextView;

    iget-object v2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    invoke-virtual {v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/siterule/p;

    invoke-direct {v2, p0, p1, p2, v0}, Lcn/mucang/jiakaoyi/uilib/siterule/p;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/siterule/e0;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->selectCb:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne v1, v3, :cond_0

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->ruleBackupTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->ruleSettingTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->deductSettingTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->orderTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->teachTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->ruleBackupTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->ruleSettingTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->deductSettingTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->instructChangeTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->ruleBackupTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->ruleSettingTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->deductSettingTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->instructChangeTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->orderTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->teachTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 23
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v1

    if-nez v1, :cond_3

    .line 24
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->shareTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->instructChangeTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->shareTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/siterule/u;

    invoke-direct {v2, v0}, Lcn/mucang/jiakaoyi/uilib/siterule/u;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->instructChangeTv:Landroid/widget/TextView;

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/siterule/l;->a:Lcn/mucang/jiakaoyi/uilib/siterule/l;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->ruleBackupTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/siterule/n;

    invoke-direct {v2, p0, p2, v0}, Lcn/mucang/jiakaoyi/uilib/siterule/n;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Lcn/mucang/jiakaoyi/uilib/siterule/e0;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object p2, p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->ruleSettingTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/siterule/m;

    invoke-direct {v1, v0, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/m;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object p2, p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->deductSettingTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/siterule/r;

    invoke-direct {v1, v0, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/r;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object p2, p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->orderTv:Landroid/widget/TextView;

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/siterule/q;->a:Lcn/mucang/jiakaoyi/uilib/siterule/q;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleItemBinding;->teachTv:Landroid/widget/TextView;

    sget-object p2, Lcn/mucang/jiakaoyi/uilib/siterule/t;->a:Lcn/mucang/jiakaoyi/uilib/siterule/t;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
