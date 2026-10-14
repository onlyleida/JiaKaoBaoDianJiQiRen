.class public final Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/m0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;",
        ">;",
        "Landroidx/lifecycle/m0$b;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000  2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0004J%\u0010\u0010\u001a\u0002H\u0011\"\u0008\u0008\u0000\u0010\u0011*\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0014H\u0016\u00a2\u0006\u0002\u0010\u0015J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0015J \u0010\u001a\u001a\u00020\u00192\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\u001fH\u0003R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "()V",
        "backupOrReset",
        "",
        "Ljava/lang/Integer;",
        "keMu",
        "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "getKeMu",
        "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "keMu$delegate",
        "Lkotlin/Lazy;",
        "ruleDeductViewModel",
        "Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
        "getStatName",
        "",
        "init",
        "",
        "updateDataAdapter",
        "it",
        "",
        "",
        "dataAdapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "Companion",
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


# static fields
.field public static final e:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;


# instance fields
.field private b:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

.field private c:Ljava/lang/Integer;

.field private final d:Lkotlin/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->e:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$keMu$2;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$keMu$2;-><init>(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->d:Lkotlin/f;

    return-void
.end method

.method private final A(Ljava/util/List;Lcom/drakeet/multitype/f;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/drakeet/multitype/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p1}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {v0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;)Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->b:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    return-object p0
.end method

.method private final l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-object v0
.end method

.method private static final m(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Ljava/lang/String;IJZLandroid/view/View;)V
    .locals 8

    const-string p6, "this$0"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$operationName"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p6, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {p6, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v7, Lcn/mucang/jiakaoyi/uilib/diff/d;

    move-object v0, v7

    move-object v1, p0

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcn/mucang/jiakaoyi/uilib/diff/d;-><init>(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;IJZLjava/lang/String;)V

    const-string p0, "\u6b63\u5728"

    .line 2
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "\u5931\u8d25"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p6, v7, p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final n(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;IJZLjava/lang/String;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$operationName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->c:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "{\n                      \u2026                        }"

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x64

    if-ne v0, v4, :cond_4

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-eq p2, p3, :cond_3

    .line 3
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result p2

    const-wide/16 p3, 0x0

    if-ne p1, p2, :cond_2

    .line 4
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/i/n;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p2

    invoke-direct {p1, p2}, Lcn/mucang/jiakaoyi/uilib/i/n;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/s/j;->m(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide p3, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    .line 6
    :goto_0
    invoke-virtual {p1, p3, p4}, Lcn/mucang/jiakaoyi/uilib/i/n;->m(J)Ljava/lang/Boolean;

    move-result-object p1

    .line 7
    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "\u89c4\u5219"

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/i/d;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p2

    invoke-direct {p1, p2}, Lcn/mucang/jiakaoyi/uilib/i/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, p3, p4, v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->o(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;JILjava/lang/Object;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/i/d;->m(J)Ljava/lang/Boolean;

    move-result-object p1

    .line 9
    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "\u6263\u5206"

    :goto_1
    move v2, p1

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->name:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u62a5\u5907\u662f\u5426\u6210\u529f\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    const-string p1, "\u6b64\u9875\u9762\u6682\u4e0d\u652f\u6301k3\u7684\u62a5\u5907"

    .line 11
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 12
    :cond_4
    :goto_2
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v0

    const/4 v4, 0x1

    if-ne p1, v0, :cond_6

    .line 13
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p1, v0, :cond_5

    .line 14
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/i/n;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/mucang/jiakaoyi/uilib/i/n;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    .line 15
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rule/d0;->a:Lcn/mucang/jiakaoyi/uilib/rule/d0;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/rule/d0;->a()Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-virtual {p1, p2, p3, p4, v0}, Lcn/mucang/jiakaoyi/uilib/i/n;->o(JZLjava/util/List;)Ljava/lang/Boolean;

    move-result-object p1

    .line 17
    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_3

    .line 18
    :cond_5
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/i/n;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p4

    invoke-direct {p1, p4}, Lcn/mucang/jiakaoyi/uilib/i/n;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    invoke-virtual {p1, p2, p3, v2, v1}, Lcn/mucang/jiakaoyi/uilib/i/n;->o(JZLjava/util/List;)Ljava/lang/Boolean;

    move-result-object p1

    .line 19
    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_3
    move v2, p1

    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p4, "\u89c4\u5219\u91cd\u7f6e\u662f\u5426\u6210\u529f\uff1a"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 21
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/rule/j0;->a:Lcn/mucang/jiakaoyi/uilib/rule/j0;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4, v4}, Lcn/mucang/jiakaoyi/uilib/rule/j0;->e(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V

    goto :goto_4

    .line 22
    :cond_6
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/i/d;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p4

    invoke-direct {p1, p4}, Lcn/mucang/jiakaoyi/uilib/i/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    invoke-virtual {p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/i/d;->o(J)Ljava/lang/Boolean;

    move-result-object p1

    const-string p4, "DeductApi(keMu).resetDeduct(examSiteId)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p4, "\u6263\u5206\u91cd\u7f6e\u662f\u5426\u6210\u529f\uff1a"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 24
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/deduct/b0;->a:Lcn/mucang/jiakaoyi/uilib/deduct/b0;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4, v4}, Lcn/mucang/jiakaoyi/uilib/deduct/b0;->e(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V

    :goto_4
    if-eqz v2, :cond_7

    const-string p1, "\u6210\u529f"

    .line 25
    invoke-static {p5, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 26
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_7
    return-void
.end method

.method private static final o(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private static final p(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$stepAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;->stepRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    invoke-direct {p0, p2, p1}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->A(Ljava/util/List;Lcom/drakeet/multitype/f;)V

    return-void
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$a;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dataAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p1}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->A(Ljava/util/List;Lcom/drakeet/multitype/f;)V

    return-void
.end method

.method private static final r(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$a;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dataAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p1}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->A(Ljava/util/List;Lcom/drakeet/multitype/f;)V

    return-void
.end method

.method private static final s(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/l;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/diff/l;->b()I

    move-result v0

    .line 2
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "\u8bc4\u5224\u89c4\u5219"

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->DEDUCT:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "\u6263\u5206\u8bbe\u7f6e"

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 4
    :goto_0
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->c:Ljava/lang/Integer;

    const/16 v2, 0x64

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5907\u6ce8\uff1a\u672c\u6b21\u62a5\u5907\u5185\u5bb9\u4e0e\u4e0a\u6b21\u62a5\u5907\u5185\u5bb9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x6709

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/diff/l;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u6761\u5dee\u5f02\uff0c\u8bf7\u518d\u6b21\u786e\u8ba4\uff0c\u62a5\u5907\u540e\uff0c\u5c06\u8986\u76d6\u4e0a\u4e00\u6b21\u62a5\u5907\u5185\u5bb9\uff0c\u4e14\u65e0\u6cd5\u64a4\u56de\uff0c\u8bf7\u8c28\u614e\u64cd\u4f5c\u3002"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, "\u91cd\u7f6e\u540e\uff0c\u4f60\u4fee\u6539\u8fc7\u7684\u89c4\u5219\u53c2\u6570\u5c06\u6062\u590d\u5230\u9ed8\u8ba4\u503c\uff0c\u4e14\u65e0\u6cd5\u64a4\u56de\uff0c\u8bf7\u8c28\u614e\u64cd\u4f5c\u3002\u4e0b\u5217\u4e3a\u5c06\u8981\u88ab\u4fee\u6539\u7684\u89c4\u5219\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u66f4\u6539\u3002"

    .line 6
    :goto_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;->tvHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;->tvHint:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$a;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->q(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$a;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->o(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;IJZLjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->n(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;IJZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Ljava/lang/String;IJZLandroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->m(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Ljava/lang/String;IJZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->p(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$a;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->r(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$a;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/l;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->s(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/l;)V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/j0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/j0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_exam_site_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "modelClass.getConstructo\u2026).newInstance(examSiteId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/lifecycle/j0;

    return-object p1
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u89c4\u5219\u548c\u6263\u5206\u5dee\u5f02"

    return-object v0
.end method

.method protected init()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_exam_site_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_teaching"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v3, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v4

    const-string v5, "key_type"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "key_backup_or_reset"

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->c:Ljava/lang/Integer;

    .line 6
    new-instance v4, Landroidx/lifecycle/m0;

    invoke-direct {v4, p0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;Landroidx/lifecycle/m0$b;)V

    const-class v5, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v4

    const-string v5, "ViewModelProvider(this, \u2026iffViewModel::class.java)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    iput-object v4, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->b:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    .line 7
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->c:Ljava/lang/Integer;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_1

    const-string v4, "\u62a5\u5907"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v4, "\u91cd\u7f6e"

    :goto_1
    move-object v6, v4

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v4

    check-cast v4, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;

    iget-object v4, v4, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v4, v4, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v5, "\u5185\u5bb9"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v4

    check-cast v4, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;

    iget-object v4, v4, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v4, v4, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v11, Lcn/mucang/jiakaoyi/uilib/diff/e;

    move-object v4, v11

    move-object v5, p0

    move v7, v1

    move v10, v0

    invoke-direct/range {v4 .. v10}, Lcn/mucang/jiakaoyi/uilib/diff/e;-><init>(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Ljava/lang/String;IJZ)V

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/diff/c;

    invoke-direct {v4, p0}, Lcn/mucang/jiakaoyi/uilib/diff/c;-><init>(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1;

    invoke-direct {v2, v1, p0, v0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1;-><init>(ILcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Z)V

    .line 14
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$a;

    invoke-direct {v4, p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$a;-><init>(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;)V

    .line 15
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v5

    check-cast v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;

    iget-object v5, v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;->stepRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v6, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v5

    check-cast v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;

    iget-object v5, v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;->stepRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v5

    check-cast v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;

    iget-object v5, v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v6, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 18
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v5

    check-cast v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;

    iget-object v5, v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->b:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    const/4 v6, 0x0

    const-string v7, "ruleDeductViewModel"

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->p()Landroidx/lifecycle/z;

    move-result-object v5

    new-instance v8, Lcn/mucang/jiakaoyi/uilib/diff/f;

    invoke-direct {v8, p0, v2}, Lcn/mucang/jiakaoyi/uilib/diff/f;-><init>(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1;)V

    invoke-virtual {v5, p0, v8}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 20
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->b:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->o()Landroidx/lifecycle/z;

    move-result-object v2

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/diff/b;

    invoke-direct {v5, p0, v4}, Lcn/mucang/jiakaoyi/uilib/diff/b;-><init>(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$a;)V

    invoke-virtual {v2, p0, v5}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 21
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->b:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->l()Landroidx/lifecycle/z;

    move-result-object v2

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/diff/g;

    invoke-direct {v5, p0, v4}, Lcn/mucang/jiakaoyi/uilib/diff/g;-><init>(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$a;)V

    invoke-virtual {v2, p0, v5}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 22
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->b:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->m()Landroidx/lifecycle/z;

    move-result-object v2

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/diff/h;

    invoke-direct {v4, p0}, Lcn/mucang/jiakaoyi/uilib/diff/h;-><init>(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;)V

    invoke-virtual {v2, p0, v4}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 23
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 24
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->b:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->u(Z)V

    goto :goto_2

    :cond_2
    invoke-static {v7}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    .line 25
    :cond_3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->b:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->r()V

    :goto_2
    return-void

    :cond_4
    invoke-static {v7}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    .line 26
    :cond_5
    invoke-static {v7}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    .line 27
    :cond_6
    invoke-static {v7}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    .line 28
    :cond_7
    invoke-static {v7}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6

    .line 29
    :cond_8
    invoke-static {v7}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v6
.end method
