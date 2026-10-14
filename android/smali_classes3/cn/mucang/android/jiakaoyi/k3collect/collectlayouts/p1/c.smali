.class public final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0002\u0010\tJ\u0012\u0010\u000e\u001a\u00020\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014R#\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/dialog/MoveEditDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "saveCallback",
        "Lkotlin/Function2;",
        "",
        "",
        "",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V",
        "getSaveCallback",
        "()Lkotlin/jvm/functions/Function2;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "MapCollectK3_release"
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
.field private final a:Lkotlin/jvm/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/p<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/b/p<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->a:Lkotlin/jvm/b/p;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;

    return-object p0
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->e(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->f(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;Landroid/view/View;)V

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;->etMoveLength:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "\u6570\u503c\u8f93\u5165\u4e3a0"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_1

    const-string p0, "\u6570\u503c\u8f93\u5165\u592a\u5927"

    .line 5
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->b()Lkotlin/jvm/b/p;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;

    if-eqz v3, :cond_3

    iget-object v0, v3, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "\u6570\u503c\u8f93\u5165\u9519\u8bef"

    .line 10
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 11
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b()Lkotlin/jvm/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/p<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->a:Lkotlin/jvm/b/p;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_7

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const/high16 v4, 0x447f0000    # 1020.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x44f00000    # 1920.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, -0x2

    .line 9
    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 10
    :goto_0
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/o1;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcn/mucang/android/jiakaoyi/k3collect/R$layout;->k3_simple_spinner_item:I

    const-string v5, "\u8d77\u70b9"

    const-string v6, "\u7ec8\u70b9"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/s;->f([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/o1;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 11
    sget v3, Lcn/mucang/android/jiakaoyi/k3collect/R$layout;->k3_common_spinner_dropdown_item:I

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 12
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 13
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;->spinner:Landroid/widget/Spinner;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c$a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c$a;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;->cancel:Landroid/widget/Button;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/a;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;->save:Landroid/widget/Button;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/b;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
