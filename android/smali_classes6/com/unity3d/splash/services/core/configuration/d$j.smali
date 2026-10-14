.class public Lcom/unity3d/splash/services/core/configuration/d$j;
.super Lcom/unity3d/splash/services/core/configuration/d$f;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/splash/services/core/connectivity/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/configuration/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field private static f:I

.field private static g:J


# instance fields
.field private d:Lcom/unity3d/splash/services/core/configuration/d$b;

.field private e:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/d$b;Lcom/unity3d/splash/services/core/configuration/a;)V
    .locals 1

    const-string v0, "network error"

    invoke-direct {p0, v0, p1, p3}, Lcom/unity3d/splash/services/core/configuration/d$f;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/a;)V

    iput-object p2, p0, Lcom/unity3d/splash/services/core/configuration/d$j;->d:Lcom/unity3d/splash/services/core/configuration/d$b;

    return-void
.end method

.method private c()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/unity3d/splash/services/core/configuration/d$j;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    sget v0, Lcom/unity3d/splash/services/core/configuration/d$j;->f:I

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "Unity Ads init got disconnected event"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/unity3d/splash/services/core/configuration/d$b;
    .locals 4

    const-string v0, "Unity Ads init: network error, waiting for connection events"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/unity3d/splash/services/core/configuration/d$j;->e:Landroid/os/ConditionVariable;

    invoke-static {p0}, Lcom/unity3d/splash/services/core/connectivity/b;->a(Lcom/unity3d/splash/services/core/connectivity/d;)V

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/d$j;->e:Landroid/os/ConditionVariable;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/connectivity/b;->f(Lcom/unity3d/splash/services/core/connectivity/d;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/d$j;->d:Lcom/unity3d/splash/services/core/configuration/d$b;

    return-object v0

    :cond_0
    new-instance v0, Lcom/unity3d/splash/services/core/configuration/d$f;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "No connected events within the timeout!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unity3d/splash/services/core/configuration/d$f;->c:Lcom/unity3d/splash/services/core/configuration/a;

    const-string v3, "network error"

    invoke-direct {v0, v3, v1, v2}, Lcom/unity3d/splash/services/core/configuration/d$f;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/a;)V

    return-object v0
.end method

.method public onConnected()V
    .locals 2

    sget v0, Lcom/unity3d/splash/services/core/configuration/d$j;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unity3d/splash/services/core/configuration/d$j;->f:I

    const-string v0, "Unity Ads init got connected event"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unity3d/splash/services/core/configuration/d$j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/d$j;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    sget v0, Lcom/unity3d/splash/services/core/configuration/d$j;->f:I

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_1

    invoke-static {p0}, Lcom/unity3d/splash/services/core/connectivity/b;->f(Lcom/unity3d/splash/services/core/connectivity/d;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/unity3d/splash/services/core/configuration/d$j;->g:J

    return-void
.end method
