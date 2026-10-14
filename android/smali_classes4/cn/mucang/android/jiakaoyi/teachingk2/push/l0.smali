.class public final Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u0006\u0010\u0010\u001a\u00020\u0004J\u0006\u0010\u0011\u001a\u00020\u0008J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/push/FpsUtils;",
        "",
        "()V",
        "currentFps",
        "",
        "fpsList",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "fpsTime",
        "",
        "lastFps",
        "compute",
        "",
        "getAverageFps",
        "rangeTimeS",
        "getMaxFps",
        "getMinFps",
        "getSamplingFps",
        "getUpdateTimeMs",
        "getVariance",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;

.field private static b:J

.field private static c:I

.field private static d:I

.field private static e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->b:J

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->b:J

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->d:I

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->c:I

    const/4 v0, 0x0

    .line 8
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->d:I

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Lkotlin/collections/s;->G(Ljava/util/List;)Ljava/lang/Object;

    .line 11
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()J
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
