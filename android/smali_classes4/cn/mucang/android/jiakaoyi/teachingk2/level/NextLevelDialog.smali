.class public final Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0015R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "param",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelDialogParam;",
        "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelDialogParam;)V",
        "mainLaunch",
        "Lkotlinx/coroutines/Job;",
        "time",
        "",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;",
        "dismiss",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "ItemBinder",
        "teachbase_release"
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
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

.field private b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

.field private c:Lkotlinx/coroutines/t1;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/level/p;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    const/16 p1, 0x8

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->d:I

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;)Lcn/mucang/android/jiakaoyi/teachingk2/level/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    return-object p0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->d:I

    return p0
.end method

.method public static final synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    return-object p0
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->j(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->i(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->k(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->h(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5173\u5361-\u70b9\u51fb\u5f00\u59cb\u8bad\u7ec3\uff0c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0xff0c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcn/mucang/android/jiakaoyi/unity/activity/UnityMainActivity;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    .line 6
    :cond_1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method private static final i(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->C()V

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    const-string v0, "\u5bfc\u8bad\u5f39\u7a97\u6d88\u5931\uff1a"

    .line 1
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->c:Lkotlinx/coroutines/t1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    const-string v0, "viewBinding"

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 7
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const/high16 v4, 0x44960000    # 1200.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x44f00000    # 1920.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, -0x2

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 11
    :goto_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    if-eqz v2, :cond_11

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    if-eqz v2, :cond_10

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v9, Lcom/drakeet/multitype/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 13
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog$a;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;)V

    .line 14
    const-class v4, Lcn/mucang/android/jiakaoyi/teachingk2/level/r;

    invoke-virtual {v9, v4, v3}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 15
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->e()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 16
    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    .line 17
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 18
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    if-eqz v2, :cond_f

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->titleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    if-eqz v2, :cond_e

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->descTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    if-eqz v2, :cond_d

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->closeIv:Landroid/widget/ImageView;

    const-string v3, "viewBinding.closeIv"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->g()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    .line 21
    :goto_2
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 23
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->recommendTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->btnTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->btnTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/h;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->guideTv:Landroid/widget/TextView;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/f;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->closeIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/e;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 29
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->recommendTv:Landroid/widget/TextView;

    const-string v2, "viewBinding.recommendTv"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->robotIv:Landroid/widget/ImageView;

    const-string v2, "viewBinding.robotIv"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->btnTv:Landroid/widget/TextView;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_i_knew:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogNextLevelBinding;->btnTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/g;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog$onCreate$6;

    invoke-direct {v4, p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog$onCreate$6;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;Lkotlin/coroutines/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->c:Lkotlinx/coroutines/t1;

    .line 39
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5bfc\u8bad\u5f39\u7a97\u5c55\u793a\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v0, 0xff0c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 40
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_c
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_d
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_e
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_10
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_11
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_12
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
