.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;
.super Lcn/mucang/android/jiakaoyi/framework/base/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000fJ\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0012J\u0018\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001fJ\u0018\u0010 \u001a\u00020\u00182\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\"H\u0002J\u0010\u0010#\u001a\u00020\u00182\u0008\u0008\u0002\u0010$\u001a\u00020\u001fJ\u000e\u0010%\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000bJ\u000e\u0010&\u001a\u00020\u00182\u0006\u0010\'\u001a\u00020\u001fR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006("
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;",
        "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;",
        "()V",
        "carTypeSettingDialog",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarTypeSettingDialog;",
        "getCarTypeSettingDialog",
        "()Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarTypeSettingDialog;",
        "setCarTypeSettingDialog",
        "(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarTypeSettingDialog;)V",
        "configList",
        "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;",
        "getConfigList",
        "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "modelList",
        "Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;",
        "getModelList",
        "saveModel",
        "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;",
        "getSaveModel",
        "()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;",
        "setSaveModel",
        "(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V",
        "changeModel",
        "",
        "model",
        "getSelectCar",
        "loadCarList",
        "selectCode",
        "",
        "forReal",
        "",
        "postConfigList",
        "carItemModels",
        "",
        "saveCarModel",
        "notWriteToBox",
        "selectConfig",
        "showResult",
        "success",
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
.field private final c:Lcn/mucang/jiakaoyi/uilib/model/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcn/mucang/jiakaoyi/uilib/model/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

.field private f:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/d;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/f;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->c:Lcn/mucang/jiakaoyi/uilib/model/f;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/f;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->d:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->r(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->p(IZ)V

    return-void
.end method

.method private final r(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    .line 2
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/car/b;->e(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->setRpmScale(F)V

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/car/b;->g(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->setSpeedScale(F)V

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->d:Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final j(Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;)V
    .locals 4

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->c:Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->setSelect(Z)V

    .line 4
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->getConfigList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    .line 6
    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->setSelect(Z)V

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->setSelect(Z)V

    .line 8
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->c:Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->getConfigList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->r(Ljava/util/List;)V

    return-void
.end method

.method public final k()Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y;

    return-object v0
.end method

.method public final l()Lcn/mucang/jiakaoyi/uilib/model/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->d:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-object v0
.end method

.method public final m()Lcn/mucang/jiakaoyi/uilib/model/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->c:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-object v0
.end method

.method public final n()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->e:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    return-object v0
.end method

.method public final o()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->m()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;

    .line 3
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_3

    return-object v1

    .line 4
    :cond_3
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->getConfigList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    .line 6
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->isSelect()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_6
    :goto_2
    move-object v3, v1

    :goto_3
    if-nez v3, :cond_7

    return-object v1

    .line 7
    :cond_7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;-><init>()V

    .line 8
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->setModelName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->setConfig(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V

    return-object v0
.end method

.method public final p(IZ)V
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

    new-instance v6, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;

    invoke-direct {v6, p2, p1, p0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;-><init>(ZILcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final s(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->m()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;

    .line 3
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v1

    :goto_1
    const-string v0, "\u8bf7\u9009\u62e9\u8f66\u578b"

    if-nez v2, :cond_3

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_3
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->getConfigList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    .line 7
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->isSelect()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_6
    :goto_2
    move-object v4, v1

    :goto_3
    if-nez v4, :cond_7

    .line 8
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_7
    if-eqz p1, :cond_8

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/car/SelectedCarModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/car/SelectedCarModel;-><init>()V

    .line 10
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/car/SelectedCarModel;->setCode(Ljava/lang/Integer;)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/car/SelectedCarModel;->setModelName(Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_8
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getRpmScale()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-lez p1, :cond_f

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getRpmScale()F

    move-result p1

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_9

    goto/16 :goto_8

    .line 14
    :cond_9
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getSpeedScale()F

    move-result p1

    cmpg-float p1, p1, v0

    if-lez p1, :cond_e

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getSpeedScale()F

    move-result p1

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_a

    goto/16 :goto_7

    .line 15
    :cond_a
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->g()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/car/b;->h(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V

    const/4 p1, 0x0

    const-string v0, "\u8bbe\u7f6e\u8f66\u578b\u6210\u529f"

    .line 18
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->g(ZLjava/lang/String;)V

    return-void

    .line 19
    :cond_b
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;-><init>()V

    .line 20
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->setModelName(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1, v4}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->setConfig(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V

    .line 22
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 23
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->e:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    .line 24
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y$a;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "getCurrentActivity()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y$a;->a(Landroid/content/Context;)Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y;

    .line 25
    :try_start_0
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result p1

    int-to-byte p1, p1

    const-string v0, "\u8bbe\u7f6e\u8f66\u578b:"

    .line 26
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->e:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/car/d;->h(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V

    .line 28
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$saveCarModel$5;

    invoke-direct {v2, p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$saveCarModel$5;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;B)V

    invoke-virtual {v0, p1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->o(BLkotlin/jvm/b/a;)V

    .line 29
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    const-string v0, "\u70b9\u51fb\u6309\u94ae\u8bbe\u7f6e\u8f66\u578b "

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->e:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    if-nez v2, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getLogInfo()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 30
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->a()V

    .line 31
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y;

    if-nez v0, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y;->c()V

    .line 32
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u8f66\u578b\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_6
    return-void

    :cond_e
    :goto_7
    const-string p1, "\u901f\u5ea6\u6bd4\u8bbe\u7f6e\u4e0d\u5408\u7406"

    .line 33
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_f
    :goto_8
    const-string p1, "\u8f6c\u901f\u6bd4\u8bbe\u7f6e\u4e0d\u5408\u7406"

    .line 34
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final t(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V
    .locals 3

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->d:Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->setSelect(Z)V

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->isSelect()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->setSelect(Z)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->d:Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->r(Ljava/util/List;)V

    return-void
.end method

.method public final u(Z)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y;->d()V

    :goto_0
    const-string p1, "\u5e95\u5c42\u544a\u8bc9\u8bbe\u7f6e\u8f66\u578b\u6210\u529f\u66f4\u65b0UI"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->e:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    if-nez p1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/car/b;->h(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->n()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getLogInfo()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "\u5e95\u5c42\u544a\u8bc9\u8bbe\u7f6e\u8f66\u578b\u6210\u529f "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->type:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->d(I)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->type:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/e;->b(I)V

    goto :goto_2

    .line 8
    :cond_3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y;->c()V

    :goto_2
    return-void
.end method
