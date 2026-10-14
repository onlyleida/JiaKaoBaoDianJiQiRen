.class public Lcom/unity3d/splash/services/core/configuration/d$d;
.super Lcom/unity3d/splash/services/core/configuration/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/configuration/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lcom/unity3d/splash/services/core/configuration/a;


# direct methods
.method public constructor <init>(Lcom/unity3d/splash/services/core/configuration/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/configuration/d$b;-><init>(Lcom/unity3d/splash/services/core/configuration/d$a;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/d$d;->a:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/d$d;->b:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/d$d;->c:I

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/d$d;->d:Lcom/unity3d/splash/services/core/configuration/a;

    return-void
.end method


# virtual methods
.method public b()Lcom/unity3d/splash/services/core/configuration/d$b;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads init: load configuration from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/c/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->h(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/d$d;->d:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/configuration/a;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/d$h;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/d$d;->d:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-direct {v0, v1}, Lcom/unity3d/splash/services/core/configuration/d$h;-><init>(Lcom/unity3d/splash/services/core/configuration/a;)V

    return-object v0

    :catch_0
    move-exception v0

    iget v1, p0, Lcom/unity3d/splash/services/core/configuration/d$d;->a:I

    iget v2, p0, Lcom/unity3d/splash/services/core/configuration/d$d;->b:I

    if-ge v1, v2, :cond_0

    iget v0, p0, Lcom/unity3d/splash/services/core/configuration/d$d;->c:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/d$d;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/unity3d/splash/services/core/configuration/d$d;->a:I

    new-instance v1, Lcom/unity3d/splash/services/core/configuration/d$l;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/splash/services/core/configuration/d$l;-><init>(Lcom/unity3d/splash/services/core/configuration/d$b;I)V

    return-object v1

    :cond_0
    new-instance v1, Lcom/unity3d/splash/services/core/configuration/d$j;

    iget-object v2, p0, Lcom/unity3d/splash/services/core/configuration/d$d;->d:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-direct {v1, v0, p0, v2}, Lcom/unity3d/splash/services/core/configuration/d$j;-><init>(Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/d$b;Lcom/unity3d/splash/services/core/configuration/a;)V

    return-object v1
.end method
