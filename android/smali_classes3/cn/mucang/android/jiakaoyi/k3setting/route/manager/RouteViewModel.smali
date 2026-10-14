.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;
.super Lcn/mucang/android/jiakaoyi/framework/base/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000bJ\u000e\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000bJ\u000e\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0004J\u001e\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u0004J \u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\u0010\u0008\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u001fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;",
        "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;",
        "()V",
        "TYPE_MY_ROUTE",
        "",
        "cursor",
        "hasMore",
        "",
        "loading",
        "routeList",
        "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
        "getRouteList",
        "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "selectType",
        "getSelectType",
        "()Ljava/lang/String;",
        "setSelectType",
        "(Ljava/lang/String;)V",
        "addToMyRoute",
        "",
        "localRoute",
        "deleteRoute",
        "isMyRoute",
        "type",
        "loadRouteList",
        "firstLoad",
        "examSiteId",
        "",
        "reset",
        "resetSuccess",
        "Lkotlin/Function0;",
        "k3setting_release"
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
.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private final g:Lcn/mucang/jiakaoyi/uilib/model/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/d;-><init>()V

    const-string v0, "1"

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->c:Ljava/lang/String;

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->d:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->e:Z

    .line 5
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/model/f;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->g:Lcn/mucang/jiakaoyi/uilib/model/f;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->h:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->d:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->e:Z

    return-void
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->f:Z

    return-void
.end method


# virtual methods
.method public final m(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V
    .locals 9

    const-string v0, "localRoute"

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

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;

    invoke-direct {v6, p1, p0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final n(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V
    .locals 9

    const-string v0, "localRoute"

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

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$deleteRoute$1;

    invoke-direct {v6, p1, p0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$deleteRoute$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final o()Lcn/mucang/jiakaoyi/uilib/model/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->g:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final r(ZJLjava/lang/String;)V
    .locals 14

    move-object v7, p0

    const-string v0, "type"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, ""

    .line 1
    iput-object v1, v7, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->d:Ljava/lang/String;

    .line 2
    iput-boolean v0, v7, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->e:Z

    .line 3
    :cond_0
    iget-boolean v1, v7, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->f:Z

    if-nez v1, :cond_3

    iget-boolean v1, v7, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->e:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v0, v7, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->f:Z

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 5
    invoke-static {p0, v0, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 6
    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v8

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;

    const/4 v6, 0x0

    move-object v0, v11

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;-><init>(JLjava/lang/String;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;ZLkotlin/coroutines/c;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_3
    :goto_0
    return-void
.end method

.method public final s(JLkotlin/jvm/b/a;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

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

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;

    const/4 v10, 0x0

    move-object v5, v0

    move-wide v6, p1

    move-object v8, p0

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;-><init>(JLcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v6, v0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->h:Ljava/lang/String;

    return-void
.end method
