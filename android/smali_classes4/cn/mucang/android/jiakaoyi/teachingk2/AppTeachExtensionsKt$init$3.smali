.class final Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->c(Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;Landroidx/lifecycle/m;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.teachingk2.AppTeachExtensionsKt$init$3"
    f = "AppTeachExtensions.kt"
    l = {
        0x80
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isLight:Z

.field final synthetic $this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;ZLkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;",
            "Z",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$isLight:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$isLight:Z

    invoke-direct {v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;ZLkotlin/coroutines/c;)V

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->label:I

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/i0;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/i0;

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v6, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;

    const/4 v7, 0x0

    invoke-static {v1, v6, v7, v2, v7}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;->setupSafe()Z

    move-result v1

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_4

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;->brakeTv:Landroid/widget/TextView;

    const-string v6, "brakeTv"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;->brakeDesc:Landroid/widget/TextView;

    const-string v6, "brakeDesc"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;->videoTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_30:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v1, v5, v5, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 10
    :cond_4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;->netIv:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$isLight:Z

    if-eqz v6, :cond_5

    const v6, -0x191814

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_1

    :cond_5
    const v6, -0xdcdad7

    .line 11
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 12
    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    move-object v1, p1

    :goto_2
    move-object p1, p0

    .line 13
    :cond_6
    invoke-static {v1}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 14
    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;->timeTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v9, "HH:mm"

    invoke-static {v9, v7, v8}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;->gpsTv:Landroid/widget/TextView;

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/c/d;->h()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;->satelliteTv:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v7

    invoke-interface {v7}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v7

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->i:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;->videoTv:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->E()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    if-eq v7, v4, :cond_8

    if-eq v7, v2, :cond_7

    .line 18
    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_abnormal:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 19
    :cond_7
    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_abnormal:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 20
    :cond_8
    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_normal:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 21
    :cond_9
    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_close:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    .line 22
    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableNonPerceiveLogin:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 24
    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;->noVisionLogin:Landroid/widget/TextView;

    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_face_login_open:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 25
    :cond_a
    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;->noVisionLogin:Landroid/widget/TextView;

    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_face_login_close:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :goto_4
    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;->brakeTv:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/u;->a()Z

    move-result v7

    if-eqz v7, :cond_b

    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_start:I

    goto :goto_5

    :cond_b
    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_close:I

    :goto_5
    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;->netIv:Landroid/widget/ImageView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->e()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 28
    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->$this_init:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;->rainMode:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->d()Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x0

    goto :goto_6

    :cond_c
    const/16 v7, 0x8

    :goto_6
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const-wide/16 v6, 0x3e8

    .line 29
    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->L$0:Ljava/lang/Object;

    iput v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt$init$3;->label:I

    invoke-static {v6, v7, p1}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_6

    return-object v0

    .line 30
    :cond_d
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
