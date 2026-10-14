.class final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;->c(Ljava/lang/String;)V
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
    c = "cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase.GpsBaseViewModel$loadGpsBaseData$1"
    f = "GpsBaseViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cityCode:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;->$cityCode:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;->$cityCode:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/h;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/h;-><init>()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;->$cityCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/h;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;->a()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel$loadGpsBaseData$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;->b()Landroidx/lifecycle/z;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Fail:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->buildMsg(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 6
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
