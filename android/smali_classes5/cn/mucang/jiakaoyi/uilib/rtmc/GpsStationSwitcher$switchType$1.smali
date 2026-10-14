.class final Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->m(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;)V
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
    c = "cn.mucang.jiakaoyi.uilib.rtmc.GpsStationSwitcher$switchType$1"
    f = "GpsStationSwitcher.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $targetStation:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

.field label:I


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->$targetStation:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->$targetStation:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/16 p1, 0x2c

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->b()Lcn/mucang/jiakaoyi/uilib/rtmc/g;

    move-result-object v1

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->d()Lcn/mucang/jiakaoyi/uilib/rtmc/f;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->$targetStation:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    invoke-virtual {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/rtmc/g;->a(Lcn/mucang/jiakaoyi/uilib/rtmc/f;Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;)Lcn/mucang/jiakaoyi/uilib/rtmc/d;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/rtmc/d;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->$targetStation:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    iget-object v3, v3, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->baseName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->s(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->$targetStation:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->isSelf()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->t(Z)V

    .line 6
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->a()Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    move-result-object v2

    iget-byte v2, v2, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->station:B

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->$targetStation:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    iget-byte v3, v3, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->station:B

    if-eq v2, v3, :cond_1

    .line 7
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->c()Lcn/mucang/jiakaoyi/uilib/rtmc/d;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/rtmc/d;->f()V

    .line 8
    :cond_1
    :goto_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->a()Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->$targetStation:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    invoke-virtual {v2, v3}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->set(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;)V

    .line 9
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->a()Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->isSelf()Z

    move-result v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->m(Z)V

    const-string v2, "\u672c\u5730\u57fa\u7ad9"

    .line 10
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->a()Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->baseName:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->a()Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->baseName:Ljava/lang/String;

    sput-object v2, Lcn/mucang/jiakaoyi/uilib/rtmc/e;->b:Ljava/lang/String;

    const-string v3, "\u5207\u6362\u57fa\u7ad9\uff0c\u8bbe\u7f6e\u57fa\u7ad9\u540d\u79f0:"

    .line 12
    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 13
    :cond_2
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/rtmc/d;->e()V

    .line 14
    sget-object v2, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->e(Lcn/mucang/jiakaoyi/uilib/rtmc/d;)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u57fa\u7ad9\u5207\u6362\u521d\u59cb\u5316\u6210\u529f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->$targetStation:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->desc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->$targetStation:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    iget-object v2, v2, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->baseId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_1

    .line 16
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u57fa\u7ad9\u5207\u6362\u521d\u59cb\u5316\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->$targetStation:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->desc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->$targetStation:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    iget-object v2, v2, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->baseId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5207\u6362\u5230"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->a()Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->desc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 18
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u57fa\u7ad9\u5207\u6362\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \uff0c"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->$targetStation:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->desc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;->$targetStation:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->baseId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    :goto_1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->f(Z)V

    .line 20
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :catchall_1
    move-exception p1

    .line 21
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->f(Z)V

    throw p1

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
