.class final Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
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
    c = "cn.mucang.jiakaoyi.sundial.client.SundialClient$onSignalChanged$1"
    f = "SundialClient.kt"
    l = {
        0xde
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $signalGetter:Lcn/mucang/android/jiakaoyi/signal/c/e;

.field label:I


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/c/e;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->$signalGetter:Lcn/mucang/android/jiakaoyi/signal/c/e;

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

    new-instance p1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->$signalGetter:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;-><init>(Lcn/mucang/android/jiakaoyi/signal/c/e;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    .line 4
    invoke-static {}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a()Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->$signalGetter:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    iput v1, p1, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->rpm:I

    .line 5
    invoke-static {}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a()Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->$signalGetter:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iput v1, p1, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->speed:F

    .line 6
    invoke-static {}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a()Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->$signalGetter:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    iput v1, p1, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->gpsSpeed:F

    .line 7
    invoke-static {}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a()Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->$signalGetter:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->id:I

    iput v1, p1, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->keyState:I

    .line 8
    invoke-static {}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a()Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->$signalGetter:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iput v1, p1, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->totalDistance:F

    .line 9
    invoke-static {}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a()Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->$signalGetter:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    iput v1, p1, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->wheelDegree:I

    .line 10
    invoke-static {}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a()Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->$signalGetter:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    iput-object v1, p1, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->location:Landroid/location/Location;

    .line 11
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->$signalGetter:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    .line 12
    invoke-static {}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->c()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 13
    sget-object v1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->l(Z)V

    .line 14
    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->$signalGetter:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    invoke-static {v1}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->k(F)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 16
    sget-object v1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->l(Z)V

    .line 17
    :cond_3
    :goto_0
    invoke-static {}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a()Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;

    move-result-object v1

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->$signalGetter:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    invoke-static {}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->b()F

    move-result v3

    sub-float/2addr p1, v3

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 19
    :goto_1
    iput p1, v1, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->currentDistance:F

    .line 20
    invoke-static {}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->e()Lkotlinx/coroutines/channels/f;

    move-result-object p1

    invoke-static {}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a()Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;

    move-result-object v1

    iput v2, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/channels/t;->F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 21
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
