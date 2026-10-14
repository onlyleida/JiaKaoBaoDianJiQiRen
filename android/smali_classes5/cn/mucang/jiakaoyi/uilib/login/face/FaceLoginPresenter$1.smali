.class final Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;-><init>(Lkotlinx/coroutines/i0;IIILcn/mucang/android/jiakaoyi/framework/camera/b;Lcn/mucang/jiakaoyi/uilib/login/face/k;Lcn/mucang/jiakaoyi/uilib/login/face/j;)V
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
    c = "cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$1"
    f = "FaceLoginPresenter.kt"
    l = {
        0x19d,
        0x83
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->Z$0:Z

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/login/face/n;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    new-instance v1, Landroid/os/HandlerThread;

    sget-object v5, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->B:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->x()I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    invoke-static {v6}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->M(I)V

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "FaceLoginPresenter"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->G(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Landroid/os/HandlerThread;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->p(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    new-instance v1, Landroid/os/Handler;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->p(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1, v3, v4, v3}, Lkotlinx/coroutines/android/b;->c(Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/android/a;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->B(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lkotlinx/coroutines/android/a;)V

    .line 7
    iput v4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->label:I

    .line 8
    new-instance p1, Lkotlinx/coroutines/l;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/a;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v1

    invoke-direct {p1, v1, v4}, Lkotlinx/coroutines/l;-><init>(Lkotlin/coroutines/c;I)V

    .line 9
    invoke-virtual {p1}, Lkotlinx/coroutines/l;->z()V

    .line 10
    invoke-static {}, Lorg/opencv/android/OpenCVLoader;->initDebug()Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    .line 12
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$a;

    invoke-direct {v4, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$a;-><init>(Lkotlinx/coroutines/k;)V

    const-string v5, "4.2.0"

    .line 13
    invoke-static {v5, v1, v4}, Lorg/opencv/android/OpenCVLoader;->initAsync(Ljava/lang/String;Landroid/content/Context;Lorg/opencv/android/LoaderCallbackInterface;)Z

    goto :goto_0

    .line 14
    :cond_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    .line 15
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/l;->x()Ljava/lang/Object;

    move-result-object p1

    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_4

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_4
    if-ne p1, v0, :cond_5

    return-object v0

    .line 17
    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->j(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/k;

    move-result-object v1

    invoke-interface {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/k;->b()Lcn/mucang/jiakaoyi/uilib/login/face/n;

    move-result-object v1

    .line 19
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    new-instance v5, Lorg/opencv/core/Mat;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->e(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)I

    move-result v6

    iget-object v7, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {v7}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->f(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)I

    move-result v7

    sget v8, Lorg/opencv/core/CvType;->CV_8UC3:I

    invoke-direct {v5, v6, v7, v8}, Lorg/opencv/core/Mat;-><init>(III)V

    invoke-static {v4, v5}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->E(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Mat;)V

    .line 20
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->s(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/j;

    move-result-object v6

    iget-object v7, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {v7}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->r(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)I

    move-result v7

    new-instance v8, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$1;

    iget-object v9, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-direct {v8, v9}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V

    invoke-direct {v5, v6, v7, v8}, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/j;ILkotlin/jvm/b/l;)V

    invoke-static {v4, v5}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->H(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/t/h;)V

    .line 21
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;

    invoke-direct {v5}, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;-><init>()V

    invoke-static {v4, v5}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->F(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/t/g;)V

    .line 22
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->s(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/j;

    move-result-object v6

    invoke-direct {v5, v6}, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/j;)V

    invoke-static {v4, v5}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->z(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/t/f;)V

    .line 23
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    new-instance v5, Lorg/opencv/core/Mat;

    invoke-direct {v5}, Lorg/opencv/core/Mat;-><init>()V

    invoke-static {v4, v5}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->y(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Mat;)V

    .line 24
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$2;

    invoke-direct {v5, v1, v3}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$2;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/n;Lkotlin/coroutines/c;)V

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->Z$0:Z

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_6

    return-object v0

    :cond_6
    move v0, p1

    .line 25
    :goto_2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->C(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/n;)V

    .line 26
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->L(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Z)V

    .line 27
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "opencv\uff08for\u4eba\u8138\uff09\u521d\u59cb\u5316\u7ed3\u679c\uff1a"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->j(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/k;

    move-result-object p1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$3;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$3;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V

    invoke-interface {p1, v0}, Lcn/mucang/jiakaoyi/uilib/login/face/k;->a(Lkotlin/jvm/b/l;)V

    .line 29
    :cond_7
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
