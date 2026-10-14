.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014R(\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/CopyMapDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "onCorrect",
        "Lkotlin/Function1;",
        "",
        "",
        "getOnCorrect",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnCorrect",
        "(Lkotlin/jvm/functions/Function1;)V",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogCopyMapBinding;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "mapcollect_release"
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
.field private a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogCopyMapBinding;

.field private b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/framework/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;->f(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;->g(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;->e(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;Landroid/view/View;)V

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogCopyMapBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogCopyMapBinding;->examMapNameEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u8bf7\u8f93\u5165\u8003\u573a\u5730\u56fe\u540d\u79f0"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/utils/x;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "\u5f53\u524d\u8bbe\u5907\u672a\u8054\u7f51"

    .line 5
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/b;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const-string p0, "viewBinding"

    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final g(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$examMapName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;->a()Lkotlin/jvm/b/l;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Lkotlin/jvm/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/String;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;->b:Lkotlin/jvm/b/l;

    return-object v0
.end method

.method public final h(Lkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;->b:Lkotlin/jvm/b/l;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogCopyMapBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogCopyMapBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogCopyMapBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogCopyMapBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/mucang/android/jiakaoyi/framework/R$dimen;->dp_600:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, -0x2

    .line 8
    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogCopyMapBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogCopyMapBinding;->leftTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/c;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/c;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogCopyMapBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogCopyMapBinding;->rightTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
