.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/ExamSiteRouteConfigModel;
.super Landroidx/lifecycle/j0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0006R#\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/ExamSiteRouteConfigModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "stepConfigData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
        "getStepConfigData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "getConfigs",
        "",
        "examSiteId",
        "",
        "cityCode",
        "",
        "getStepConfigSetupDistance",
        "",
        "step",
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
.field private final a:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/j0;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/ExamSiteRouteConfigModel;->a:Landroidx/lifecycle/z;

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)V
    .locals 9

    const-string v0, "cityCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/ExamSiteRouteConfigModel$getConfigs$1;

    const/4 v8, 0x0

    move-object v3, v0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p0

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/ExamSiteRouteConfigModel$getConfigs$1;-><init>(JLjava/lang/String;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/ExamSiteRouteConfigModel;Lkotlin/coroutines/c;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final b()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/ExamSiteRouteConfigModel;->a:Landroidx/lifecycle/z;

    return-object v0
.end method
