.class public final Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;
.super Lcn/mucang/android/jiakaoyi/framework/base/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015R\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;",
        "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;",
        "()V",
        "siteList",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcn/mucang/jiakaoyi/uilib/siterule/ExamSiteItem;",
        "getSiteList",
        "()Landroidx/lifecycle/MutableLiveData;",
        "state",
        "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
        "getState",
        "loadSiteData",
        "",
        "keMu",
        "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "saveRuleExamSite",
        "examSiteModel",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "setRuleExamSite",
        "examSiteId",
        "",
        "uilib_release"
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
.field private final c:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/siterule/e0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/d;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;->c:Landroidx/lifecycle/z;

    .line 3
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;->d:Landroidx/lifecycle/z;

    return-void
.end method


# virtual methods
.method public final i()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/siterule/e0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;->d:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final j()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;->c:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final k(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 8

    const-string v0, "keMu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;->c:Landroidx/lifecycle/z;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Loading:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    const-string v2, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->buildMsg(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$loadSiteData$1;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p0, v0}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$loadSiteData$1;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;Lkotlin/coroutines/c;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final l(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 8

    const-string v0, "examSiteModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keMu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Loading:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    const-string v2, "\u6dfb\u52a0\u89c4\u5219\u4e2d..."

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->buildMsg(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p2, p0, v0}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel$saveRuleExamSite$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;Lkotlin/coroutines/c;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final m(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;->d:Landroidx/lifecycle/z;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/siterule/e0;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->a()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->c(Z)V

    goto :goto_0

    .line 4
    :cond_2
    :goto_2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;->d:Landroidx/lifecycle/z;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method
