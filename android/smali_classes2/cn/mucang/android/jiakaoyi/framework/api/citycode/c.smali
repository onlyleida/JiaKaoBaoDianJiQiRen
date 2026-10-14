.class public final Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J\u0008\u0010\u000b\u001a\u00020\u000cH\u0007J\u0008\u0010\r\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/api/citycode/CityCodeManager;",
        "",
        "()V",
        "DURATION",
        "",
        "cityCode",
        "",
        "fetching",
        "",
        "lastFetchTime",
        "",
        "fetchCityCode",
        "",
        "getCityCode",
        "framework_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;

.field private static b:Ljava/lang/String;

.field private static volatile c:Z

.field private static volatile d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->a:Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static final b()V
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->c:Z

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/api/citycode/a;->a:Lcn/mucang/android/jiakaoyi/framework/api/citycode/a;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final c()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/api/citycode/b;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/framework/api/citycode/b;-><init>()V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/api/citycode/b;->m()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "newKeyCityCode"

    .line 3
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "CityCodeHelper"

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_0
    :goto_0
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->c:Z

    return-void

    :goto_1
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->c:Z

    throw v1
.end method

.method public static final d()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->b:Ljava/lang/String;

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    sget-wide v4, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->d:J

    sub-long/2addr v0, v4

    const v2, 0x927c0

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 3
    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->b:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "newKeyCityCode"

    .line 4
    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->b:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->b()V

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    return-object v3
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->c()V

    return-void
.end method
