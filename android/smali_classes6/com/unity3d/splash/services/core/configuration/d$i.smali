.class public Lcom/unity3d/splash/services/core/configuration/d$i;
.super Lcom/unity3d/splash/services/core/configuration/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/configuration/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field private a:Lcom/unity3d/splash/services/core/configuration/a;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/unity3d/splash/services/core/configuration/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/configuration/d$b;-><init>(Lcom/unity3d/splash/services/core/configuration/d$a;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->b:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->c:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->d:I

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->a:Lcom/unity3d/splash/services/core/configuration/a;

    return-void
.end method


# virtual methods
.method public b()Lcom/unity3d/splash/services/core/configuration/d$b;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads init: loading webapp from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/configuration/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->h(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/unity3d/splash/services/core/request/WebRequest;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/configuration/a;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->k()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/configuration/a;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/unity3d/splash/services/c/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/d$f;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid webViewHash"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->a:Lcom/unity3d/splash/services/core/configuration/a;

    const-string v3, "load web"

    invoke-direct {v0, v3, v1, v2}, Lcom/unity3d/splash/services/core/configuration/d$f;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/a;)V

    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/unity3d/splash/services/c/b/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/c/a/b;->g(Ljava/io/File;Ljava/lang/String;)Z

    :cond_1
    new-instance v1, Lcom/unity3d/splash/services/core/configuration/d$e;

    iget-object v2, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-direct {v1, v2, v0}, Lcom/unity3d/splash/services/core/configuration/d$e;-><init>(Lcom/unity3d/splash/services/core/configuration/a;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    iget v1, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->b:I

    iget v2, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->c:I

    if-ge v1, v2, :cond_2

    iget v0, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->d:I

    iget v1, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->b:I

    new-instance v1, Lcom/unity3d/splash/services/core/configuration/d$l;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/splash/services/core/configuration/d$l;-><init>(Lcom/unity3d/splash/services/core/configuration/d$b;I)V

    return-object v1

    :cond_2
    new-instance v1, Lcom/unity3d/splash/services/core/configuration/d$j;

    iget-object v2, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-direct {v1, v0, p0, v2}, Lcom/unity3d/splash/services/core/configuration/d$j;-><init>(Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/d$b;Lcom/unity3d/splash/services/core/configuration/a;)V

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "Malformed URL"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v1, Lcom/unity3d/splash/services/core/configuration/d$f;

    iget-object v2, p0, Lcom/unity3d/splash/services/core/configuration/d$i;->a:Lcom/unity3d/splash/services/core/configuration/a;

    const-string v3, "make webrequest"

    invoke-direct {v1, v3, v0, v2}, Lcom/unity3d/splash/services/core/configuration/d$f;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/a;)V

    return-object v1
.end method
