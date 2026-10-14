.class public Lcn/mucang/jiakaoyi/uilib/deduct/y;
.super Lcn/mucang/jiakaoyi/uilib/ui/dialog/i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/deduct/y$b;,
        Lcn/mucang/jiakaoyi/uilib/deduct/y$c;
    }
.end annotation


# instance fields
.field private c:Lcn/mucang/jiakaoyi/uilib/deduct/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/i0;-><init>()V

    return-void
.end method

.method public static x(Lcn/mucang/jiakaoyi/uilib/deduct/x;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/deduct/y;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/deduct/y;-><init>()V

    .line 2
    iput-object p0, v0, Lcn/mucang/jiakaoyi/uilib/deduct/y;->c:Lcn/mucang/jiakaoyi/uilib/deduct/x;

    const-string p0, "\u6263\u5206\u8be6\u60c5"

    .line 3
    invoke-virtual {v0, p1, p0}, Lf/a/a/a/n/d/f;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/y;->c:Lcn/mucang/jiakaoyi/uilib/deduct/x;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->deductDetailList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 4
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/deduct/y$b;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/y;->c:Lcn/mucang/jiakaoyi/uilib/deduct/x;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/deduct/y$b;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/x;Lcn/mucang/jiakaoyi/uilib/deduct/y$a;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected v()I
    .locals 1

    .line 1
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->exam_fragment_deduct_detail:I

    return v0
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$string;->uilib_deduct_detail:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
