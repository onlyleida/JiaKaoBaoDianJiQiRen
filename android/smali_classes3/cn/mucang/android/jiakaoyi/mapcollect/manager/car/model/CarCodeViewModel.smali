.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;
.super Lcn/mucang/android/jiakaoyi/framework/base/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0013\u001a\u00020\u00102\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005J\u0016\u0010\u0006\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;",
        "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;",
        "()V",
        "carCodeList",
        "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;",
        "getCarCodeList",
        "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "cursor",
        "",
        "hasMore",
        "",
        "loading",
        "status",
        "",
        "deleteAgentCarData",
        "",
        "id",
        "",
        "enableAgentCarData",
        "hpCarMapModel",
        "firstLoad",
        "mapcollect_release"
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
.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private final f:Lcn/mucang/jiakaoyi/uilib/model/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/d;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;->d:Z

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/f;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;->f:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;->c:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;->d:Z

    return-void
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;->e:Z

    return-void
.end method


# virtual methods
.method public final m(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-string p1, "\u8f66\u8eab\u6570\u636e\u5f02\u5e38,\u65e0\u6cd5\u5220\u9664"

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "\u5220\u9664\u8f66\u8eab\u6570\u636e\u4e2d..."

    .line 2
    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->e(ZLjava/lang/String;)V

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel$deleteAgentCarData$1;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p2, p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel$deleteAgentCarData$1;-><init>(JLcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;Lkotlin/coroutines/c;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final n(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "\u542f\u7528\u8f66\u8eab\u6570\u636e\u4e2d..."

    .line 2
    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->e(ZLjava/lang/String;)V

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel$enableAgentCarData$1;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel$enableAgentCarData$1;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;Lkotlin/coroutines/c;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    :cond_1
    :goto_0
    const-string p1, "\u8f66\u8eab\u6570\u636e\u5f02\u5e38,\u65e0\u6cd5\u542f\u7528"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final o()Lcn/mucang/jiakaoyi/uilib/model/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;->f:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-object v0
.end method

.method public final p(ZI)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, ""

    .line 1
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;->c:Ljava/lang/String;

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;->d:Z

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;->e:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;->d:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;->e:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 5
    invoke-static {p0, v1, v0, v2, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 6
    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel$getCarCodeList$1;

    invoke-direct {v6, p0, p2, p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel$getCarCodeList$1;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;IZLkotlin/coroutines/c;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_3
    :goto_0
    return-void
.end method
