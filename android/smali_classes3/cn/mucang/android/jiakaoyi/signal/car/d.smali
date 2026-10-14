.class public final Lcn/mucang/android/jiakaoyi/signal/car/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u000b\u001a\u00020\nH\u0007J\n\u0010\u000c\u001a\u0004\u0018\u00010\u0007H\u0007J\u0008\u0010\r\u001a\u00020\u000eH\u0007J\u0008\u0010\u000f\u001a\u00020\u0010H\u0007J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u0007J\u0008\u0010\u0012\u001a\u00020\u0004H\u0007J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0007J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/car/SelectCarManager;",
        "",
        "()V",
        "KEY_PRE_SELECT_CAR",
        "",
        "KEY_SELECT_CAR",
        "car",
        "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;",
        "emptyCar",
        "clearPreSelectCar",
        "",
        "clearSelectCar",
        "getCar",
        "getEnergyType",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;",
        "getGearType",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;",
        "getPreSelectCar",
        "getSelectCarDesc",
        "getSelectedCarCode",
        "savePreSelectCar",
        "model",
        "saveSelectCar",
        "signal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/signal/car/d;

.field private static final b:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

.field private static c:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/car/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/car/d;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/car/d;->a:Lcn/mucang/android/jiakaoyi/signal/car/d;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/car/d;->b:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    .line 2
    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/car/d;->c:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 1

    const-string v0, "key.preSelectCar"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->h(Ljava/lang/String;)Z

    return-void
.end method

.method public static final b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/car/d;->c:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/car/d;->b:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "key.selectCar"

    const-string v2, ""

    .line 2
    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u672c\u5730\u8f66\u8f86\u548c\u53c2\u6570:"

    .line 3
    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 5
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    const-class v2, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/car/d;->c:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    .line 7
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit v1

    const-string v0, "xyCarCode"

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/car/d;->c:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    if-nez v1, :cond_0

    :goto_0
    move-object v1, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/e/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 11
    :catch_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/car/d;->b:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    monitor-enter v0

    :try_start_3
    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/car/d;->c:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    .line 12
    :cond_2
    monitor-enter v1

    :try_start_4
    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/car/d;->c:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v1

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 13
    :cond_3
    :goto_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/car/d;->c:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    return-object v0
.end method

.method public static final c()Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getEnergyType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->oil:Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->type:I

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    :goto_1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    move-result-object v0

    const-string v1, "parse(type)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final d()Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getGearType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->auto:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->type:I

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    :goto_1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object v0

    const-string v1, "parse(type)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final e()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;
    .locals 2

    const-string v0, "key.preSelectCar"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    const-class v1, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final f()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getCarDesc()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static final g()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static final h(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u4fdd\u5b58\u9884\u8bbe\u7f6e\u672c\u5730\u8f66\u8f86\u548c\u53c2\u6570:"

    .line 2
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v0, "key.preSelectCar"

    .line 3
    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final i(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V
    .locals 3

    const-string v0, "model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4fdd\u5b58\u672c\u5730\u8f66\u8f86\u548c\u53c2\u6570:"

    .line 2
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v1, "key.selectCar"

    .line 3
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xyCarCode"

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/e/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/car/d;->b:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    monitor-enter v0

    .line 6
    :try_start_0
    sput-object p0, Lcn/mucang/android/jiakaoyi/signal/car/d;->c:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    .line 7
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/car/a;

    .line 9
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/car/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/car/a;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->a()V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getUniversalModelNum()I

    move-result v0

    :goto_1
    if-lez v0, :cond_5

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->setModelName(Ljava/lang/String;)V

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;-><init>()V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->setConfig(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V

    .line 15
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getUniversalModelNum()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->setCode(I)V

    .line 16
    :goto_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getUniversalModelNum()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->setUniversalModelNum(I)V

    .line 17
    :goto_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getUniversalModelName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->setUniversalModelName(Ljava/lang/String;)V

    .line 18
    :goto_4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/car/c;->c(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0

    throw p0
.end method
