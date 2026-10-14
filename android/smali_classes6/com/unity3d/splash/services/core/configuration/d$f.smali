.class public Lcom/unity3d/splash/services/core/configuration/d$f;
.super Lcom/unity3d/splash/services/core/configuration/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/configuration/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Exception;

.field protected c:Lcom/unity3d/splash/services/core/configuration/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/configuration/d$b;-><init>(Lcom/unity3d/splash/services/core/configuration/d$a;)V

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/d$f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/splash/services/core/configuration/d$f;->b:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/unity3d/splash/services/core/configuration/d$f;->c:Lcom/unity3d/splash/services/core/configuration/a;

    return-void
.end method


# virtual methods
.method public b()Lcom/unity3d/splash/services/core/configuration/d$b;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads init: halting init in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/d$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/d$f;->b:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/d$f;->c:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/configuration/a;->c()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/unity3d/splash/services/core/configuration/d$f;->c:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-virtual {v4, v3}, Lcom/unity3d/splash/services/core/configuration/a;->b(Ljava/lang/String;)Lcom/unity3d/splash/services/core/configuration/c;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/unity3d/splash/services/core/configuration/d$f;->c:Lcom/unity3d/splash/services/core/configuration/a;

    iget-object v5, p0, Lcom/unity3d/splash/services/core/configuration/d$f;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/unity3d/splash/services/core/configuration/d$f;->b:Ljava/lang/Exception;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/unity3d/splash/services/core/configuration/c;->e(Lcom/unity3d/splash/services/core/configuration/a;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
