.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0015R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "keMu",
        "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V",
        "job",
        "Lkotlinx/coroutines/Job;",
        "time",
        "",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchKemuBinding;",
        "dismiss",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private final a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field private b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchKemuBinding;

.field private c:Lkotlinx/coroutines/t1;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keMu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const/4 p1, 0x5

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;->d:I

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;->d:I

    return p0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchKemuBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchKemuBinding;

    return-object p0
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;->d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/SwitchKeMuModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/SwitchKeMuModel;-><init>()V

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->serverKeMu:Ljava/lang/String;

    iput-object p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/SwitchKeMuModel;->kemu:Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;->c:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 5
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "job"

    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v0

    .line 7
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
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
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchKemuBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchKemuBinding;

    move-result-object p1

    const-string v1, "inflate(layoutInflater)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchKemuBinding;

    const-string v1, "viewBinding"

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchKemuBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 10
    :cond_2
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

    .line 11
    invoke-virtual {p1, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 12
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchKemuBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchKemuBinding;->titleTv:Landroid/widget/TextView;

    sget-object v3, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_recognized_you:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.teachbase_recognized_you)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    aput-object v7, v5, v0

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchKemuBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchKemuBinding;->switchTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/m;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/m;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog$onCreate$2;

    invoke-direct {v6, p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog$onCreate$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;Lkotlin/coroutines/c;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;->c:Lkotlinx/coroutines/t1;

    return-void

    .line 15
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method
