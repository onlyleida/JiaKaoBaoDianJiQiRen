.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007J\u0008\u0010\u0006\u001a\u00020\u0007H\u0007J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarInfoManager;",
        "",
        "()V",
        "carInfo",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;",
        "getCarInfo",
        "isAlreadyBindCar",
        "",
        "saveCarInfo",
        "",
        "info",
        "teachbase_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;

.field private static b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized a()Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;
    .locals 3

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "key.carInfo"

    const-string v2, ""

    .line 3
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    .line 6
    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final b()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;->a()Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getPlateNum()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final declared-synchronized c(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;)V
    .locals 3

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 1
    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "key.carInfo"

    .line 2
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
