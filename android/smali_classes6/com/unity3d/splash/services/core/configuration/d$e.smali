.class public Lcom/unity3d/splash/services/core/configuration/d$e;
.super Lcom/unity3d/splash/services/core/configuration/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/configuration/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Lcom/unity3d/splash/services/core/configuration/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/splash/services/core/configuration/a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/configuration/d$b;-><init>(Lcom/unity3d/splash/services/core/configuration/d$a;)V

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/d$e;->a:Lcom/unity3d/splash/services/core/configuration/a;

    iput-object p2, p0, Lcom/unity3d/splash/services/core/configuration/d$e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Lcom/unity3d/splash/services/core/configuration/d$b;
    .locals 4

    const-string v0, "create webapp"

    const-string v1, "Unity Ads init: creating webapp"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/d$e;->a:Lcom/unity3d/splash/services/core/configuration/a;

    iget-object v2, p0, Lcom/unity3d/splash/services/core/configuration/d$e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/unity3d/splash/services/core/configuration/a;->k(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v1}, Lcom/unity3d/splash/services/core/webview/b;->b(Lcom/unity3d/splash/services/core/configuration/a;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/d$c;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/d$e;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-direct {v0, v1}, Lcom/unity3d/splash/services/core/configuration/d$c;-><init>(Lcom/unity3d/splash/services/core/configuration/a;)V

    return-object v0

    :cond_0
    const-string v1, "Unity Ads WebApp creation failed!"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/unity3d/splash/services/core/configuration/d$f;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Creation of WebApp failed!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unity3d/splash/services/core/configuration/d$e;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-direct {v1, v0, v2, v3}, Lcom/unity3d/splash/services/core/configuration/d$f;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/a;)V

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "Illegal Thread"

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v2, Lcom/unity3d/splash/services/core/configuration/d$f;

    iget-object v3, p0, Lcom/unity3d/splash/services/core/configuration/d$e;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-direct {v2, v0, v1, v3}, Lcom/unity3d/splash/services/core/configuration/d$f;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/a;)V

    return-object v2
.end method
