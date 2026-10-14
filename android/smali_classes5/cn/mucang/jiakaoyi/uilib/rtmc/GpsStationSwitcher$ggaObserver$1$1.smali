.class final Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->h(Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;)V
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
    c = "cn.mucang.jiakaoyi.uilib.rtmc.GpsStationSwitcher$ggaObserver$1$1"
    f = "GpsStationSwitcher.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;

.field final synthetic $station:Lcn/mucang/jiakaoyi/uilib/rtmc/d;

.field label:I


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/rtmc/d;Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/rtmc/d;",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;->$station:Lcn/mucang/jiakaoyi/uilib/rtmc/d;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;->$it:Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;->$station:Lcn/mucang/jiakaoyi/uilib/rtmc/d;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;->$it:Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/rtmc/d;Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;->$station:Lcn/mucang/jiakaoyi/uilib/rtmc/d;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;->$it:Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/uilib/rtmc/d;->d(Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;)I

    move-result p1

    .line 3
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->a()Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->isSelf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;->$it:Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u53d1\u9001gga\u6570\u636e: \u957f\u5ea6"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->f(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gga\u53d1\u9001\u5f02\u5e38\uff0cgga="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;->$it:Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    .line 6
    :cond_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
