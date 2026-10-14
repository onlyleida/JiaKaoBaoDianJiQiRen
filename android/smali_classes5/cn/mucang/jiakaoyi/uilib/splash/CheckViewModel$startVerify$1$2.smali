.class final Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "cn.mucang.jiakaoyi.uilib.splash.CheckViewModel$startVerify$1$2"
    f = "CheckViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;",
            "Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->invokeSuspend$lambda-0(Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->invokeSuspend$lambda-1(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;Landroid/view/View;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDialog()Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean p2, p2, Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;->closeable:Z

    if-ne p2, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getStatus()I

    move-result p0

    const/16 p2, 0x28

    if-ne p0, p2, :cond_2

    .line 3
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;->k()Landroidx/lifecycle/z;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string p0, "\u8bbe\u5907\u65e0\u6cd5\u4f7f\u7528"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

.method private static final invokeSuspend$lambda-1(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;->i(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->label:I

    if-nez v0, :cond_12

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDeviceNum()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "getCurrentActivity()"

    const-string v1, ""

    const-string v2, "\u63d0\u793a"

    const/4 v3, 0x0

    if-nez p1, :cond_7

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDeviceNum()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getStatus()I

    move-result p1

    const/16 v4, 0xa

    if-eq p1, v4, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDialog()Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 6
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDialog()Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_1
    iget-object v4, v4, Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;->title:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v5, v4

    .line 7
    :goto_1
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDialog()Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_2
    move-object v6, v1

    goto :goto_3

    :cond_3
    iget-object v2, v2, Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;->content:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v2

    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 8
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    new-instance v10, Lcn/mucang/jiakaoyi/uilib/splash/b;

    invoke-direct {v10, v1, v2}, Lcn/mucang/jiakaoyi/uilib/splash/b;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;)V

    .line 9
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDialog()Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v11, 0x0

    goto :goto_4

    :cond_5
    iget-boolean v3, v1, Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;->closeable:Z

    move v11, v3

    :goto_4
    const-string v9, "\u786e\u5b9a"

    move-object v4, p1

    .line 10
    invoke-direct/range {v4 .. v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 12
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {v1, v2, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 14
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_d

    .line 15
    :cond_6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;->i(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;)V

    goto/16 :goto_d

    .line 16
    :cond_7
    :goto_5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDialog()Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 17
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 18
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDialog()Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;

    move-result-object v4

    if-nez v4, :cond_8

    :goto_6
    move-object v5, v2

    goto :goto_7

    :cond_8
    iget-object v4, v4, Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;->title:Ljava/lang/String;

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    move-object v5, v4

    .line 19
    :goto_7
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDialog()Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;

    move-result-object v2

    if-nez v2, :cond_a

    :goto_8
    move-object v6, v1

    goto :goto_9

    :cond_a
    iget-object v2, v2, Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;->content:Ljava/lang/String;

    if-nez v2, :cond_b

    goto :goto_8

    :cond_b
    move-object v6, v2

    :goto_9
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 20
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDialog()Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_d

    :cond_c
    const/4 v2, 0x0

    goto :goto_a

    :cond_d
    iget-boolean v1, v1, Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;->closeable:Z

    if-ne v1, v2, :cond_c

    :goto_a
    if-eqz v2, :cond_e

    const-string v1, "\u786e\u5b9a"

    goto :goto_b

    :cond_e
    const/4 v1, 0x0

    :goto_b
    move-object v9, v1

    .line 21
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    new-instance v10, Lcn/mucang/jiakaoyi/uilib/splash/a;

    invoke-direct {v10, v1, v2}, Lcn/mucang/jiakaoyi/uilib/splash/a;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;)V

    .line 22
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDialog()Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 v11, 0x0

    goto :goto_c

    :cond_f
    iget-boolean v3, v1, Lcn/mucang/jiakaoyi/uilib/activate/DialogInfo;->closeable:Z

    move v11, v3

    :goto_c
    move-object v4, p1

    .line 23
    invoke-direct/range {v4 .. v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    .line 24
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 25
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {v1, v2, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 27
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_d

    .line 28
    :cond_10
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getStatus()I

    move-result p1

    const/16 v0, 0x28

    if-ne p1, v0, :cond_11

    .line 29
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;->this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;->k()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_d

    :cond_11
    const-string p1, "\u8bbe\u5907\u65e0\u6cd5\u4f7f\u7528"

    .line 30
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 32
    :goto_d
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
