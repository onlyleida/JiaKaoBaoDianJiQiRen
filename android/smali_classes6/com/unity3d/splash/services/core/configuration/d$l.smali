.class public Lcom/unity3d/splash/services/core/configuration/d$l;
.super Lcom/unity3d/splash/services/core/configuration/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/configuration/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field a:Lcom/unity3d/splash/services/core/configuration/d$b;

.field b:I


# direct methods
.method public constructor <init>(Lcom/unity3d/splash/services/core/configuration/d$b;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/configuration/d$b;-><init>(Lcom/unity3d/splash/services/core/configuration/d$a;)V

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/d$l;->a:Lcom/unity3d/splash/services/core/configuration/d$b;

    iput p2, p0, Lcom/unity3d/splash/services/core/configuration/d$l;->b:I

    return-void
.end method


# virtual methods
.method public b()Lcom/unity3d/splash/services/core/configuration/d$b;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads init: retrying in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/unity3d/splash/services/core/configuration/d$l;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->c(Ljava/lang/String;)V

    :try_start_0
    iget v0, p0, Lcom/unity3d/splash/services/core/configuration/d$l;->b:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Init retry interrupted"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/d$l;->a:Lcom/unity3d/splash/services/core/configuration/d$b;

    return-object v0
.end method
