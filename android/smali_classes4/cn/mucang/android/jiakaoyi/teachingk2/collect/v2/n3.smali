.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/WhiteAddGroupDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "step",
        "",
        "onCheck",
        "Lkotlin/Function1;",
        "",
        "(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupWhiteBinding;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "TeachingK2_release"
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
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupWhiteBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "step"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCheck"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;->b:Lkotlin/jvm/b/l;

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;->c(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;->d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;Landroid/view/View;)V

    return-void
.end method

.method private static final c(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupWhiteBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupWhiteBinding;->groupEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u8bf7\u586b\u5199\u65b9\u6848\u540d\u79f0"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;->b:Lkotlin/jvm/b/l;

    invoke-interface {v0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    :cond_1
    return-void

    :cond_2
    const-string p0, "viewBinding"

    .line 6
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupWhiteBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupWhiteBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupWhiteBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupWhiteBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$dimen;->rpx_840:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, -0x2

    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupWhiteBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupWhiteBinding;->stepTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupWhiteBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupWhiteBinding;->cancelTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/e3;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/e3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupWhiteBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupWhiteBinding;->confirmTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/f3;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/f3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/n3;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
