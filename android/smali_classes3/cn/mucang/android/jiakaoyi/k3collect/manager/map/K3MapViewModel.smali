.class public final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;
.super Lcn/mucang/android/jiakaoyi/framework/base/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nJ\u000e\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;",
        "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;",
        "()V",
        "cursor",
        "",
        "hasMore",
        "",
        "loading",
        "mapList",
        "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "getMapList",
        "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "deleteMap",
        "",
        "mapModel",
        "loadMapList",
        "firstLoad",
        "MapCollectK3_release"
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
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
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
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->d:Z

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/f;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->f:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->c:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->d:Z

    return-void
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->e:Z

    return-void
.end method


# virtual methods
.method public final m(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 9

    const-string v0, "mapModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p0, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;

    invoke-direct {v6, p1, p0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final n()Lcn/mucang/jiakaoyi/uilib/model/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->f:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-object v0
.end method

.method public final o(Z)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, ""

    .line 1
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->c:Ljava/lang/String;

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->d:Z

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->e:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->d:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->e:Z

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

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$loadMapList$1;

    invoke-direct {v6, p0, p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$loadMapList$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;ZLkotlin/coroutines/c;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_3
    :goto_0
    return-void
.end method
