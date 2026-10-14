.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;
.super Lcn/mucang/android/jiakaoyi/framework/base/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\rJ\u0010\u0010\u0014\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000bJ\u0006\u0010\u0016\u001a\u00020\u0011J\u0016\u0010\u0017\u001a\u00020\u00112\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0019J\u0006\u0010\u001a\u001a\u00020\u0011J\u0014\u0010\u001b\u001a\u00020\u00112\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001dR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;",
        "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;",
        "()V",
        "assembleList",
        "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
        "getAssembleList",
        "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "cursor",
        "",
        "hasMore",
        "",
        "lightList",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "getLightList",
        "loading",
        "deleteAssemble",
        "",
        "item",
        "deleteLight",
        "loadAssembles",
        "firstLoad",
        "loadLights",
        "resetAssemblesAndLights",
        "successAction",
        "Lkotlin/Function0;",
        "saveAssembles",
        "saveLights",
        "callback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
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
.field private final c:Lcn/mucang/jiakaoyi/uilib/model/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcn/mucang/jiakaoyi/uilib/model/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/d;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/f;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->c:Lcn/mucang/jiakaoyi/uilib/model/f;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/f;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->d:Lcn/mucang/jiakaoyi/uilib/model/f;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->e:Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->f:Z

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->f:Z

    return-void
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->g:Z

    return-void
.end method


# virtual methods
.method public final m(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;)V
    .locals 9

    const-string v0, "item"

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

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;

    invoke-direct {v6, p1, p0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteAssemble$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final n(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V
    .locals 9

    const-string v0, "item"

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

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteLight$1;

    invoke-direct {v6, p1, p0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$deleteLight$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Lkotlin/coroutines/c;)V

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
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->d:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-object v0
.end method

.method public final p()Lcn/mucang/jiakaoyi/uilib/model/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->c:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-object v0
.end method

.method public final q(Z)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, ""

    .line 1
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->e:Ljava/lang/String;

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->f:Z

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->g:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->f:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->g:Z

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

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;

    invoke-direct {v6, p0, p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;ZLkotlin/coroutines/c;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_3
    :goto_0
    return-void
.end method

.method public final r()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 1
    invoke-static {p0, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadLights$1;

    invoke-direct {v6, p0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadLights$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final s(Lkotlin/jvm/b/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$resetAssemblesAndLights$1;

    invoke-direct {v6, p0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$resetAssemblesAndLights$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final t()V
    .locals 9

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

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;

    invoke-direct {v6, p0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final u(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

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

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveLights$1;

    invoke-direct {v6, p0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveLights$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Lcn/mucang/android/jiakaoyi/framework/h/b;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
