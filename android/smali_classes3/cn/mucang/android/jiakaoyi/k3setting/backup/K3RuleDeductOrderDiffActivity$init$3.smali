.class final Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/p<",
        "Ljava/lang/Integer;",
        "Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "type",
        "",
        "tabItem",
        "Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$3;->invoke(ILcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(ILcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;)V
    .locals 4

    const-string v0, "tabItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->n(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;->stepRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->DEDUCT:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 5
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v0

    const-string v1, "ruleDeductViewModel"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->j(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->u(Z)V

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_3
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->DEDUCT:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v0

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->j(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->r()V

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_5
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->LIGHT_MODEL:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v0

    const-string v1, "viewModel"

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->l(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->v()V

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_7
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->LIGHT_GROUP:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v0

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->l(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->u()V

    goto :goto_2

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_9
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->ROUTE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v0

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->l(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;)Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->w()V

    goto :goto_2

    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_b
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->m(Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;)V

    return-void
.end method
