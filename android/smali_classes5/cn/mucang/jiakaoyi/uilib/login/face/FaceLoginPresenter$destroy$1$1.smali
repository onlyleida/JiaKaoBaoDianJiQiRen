.class final Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->P()V
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
    c = "cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$destroy$1$1"
    f = "FaceLoginPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
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
            "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->label:I

    if-nez v0, :cond_8

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->q(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/t/h;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->i()V

    .line 3
    :goto_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->o(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/t/g;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->d()V

    .line 4
    :goto_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->d(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/t/f;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->f()V

    .line 5
    :goto_2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->D(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Landroid/graphics/Bitmap;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->J(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Landroid/graphics/Bitmap;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->n(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lorg/opencv/core/Mat;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->release()V

    .line 8
    :goto_3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->E(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Mat;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->t(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lorg/opencv/core/Mat;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->release()V

    .line 10
    :goto_4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->K(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Mat;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->c(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lorg/opencv/core/Mat;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->release()V

    .line 12
    :goto_5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->y(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Mat;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->l(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/n;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/n;->release()V

    .line 14
    :goto_6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->C(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/n;)V

    .line 15
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->I(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/p;)V

    .line 16
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->p(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Landroid/os/HandlerThread;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 17
    :goto_7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$destroy$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->G(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Landroid/os/HandlerThread;)V

    .line 18
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
