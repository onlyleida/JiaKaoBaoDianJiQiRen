.class public Lcom/unity3d/splash/services/core/configuration/d$g;
.super Lcom/unity3d/splash/services/core/configuration/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/configuration/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private a:Lcom/unity3d/splash/services/core/configuration/a;


# direct methods
.method public constructor <init>(Lcom/unity3d/splash/services/core/configuration/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/configuration/d$b;-><init>(Lcom/unity3d/splash/services/core/configuration/d$a;)V

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/d$g;->a:Lcom/unity3d/splash/services/core/configuration/a;

    return-void
.end method


# virtual methods
.method public b()Lcom/unity3d/splash/services/core/configuration/d$b;
    .locals 5

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/d$g;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/configuration/a;->c()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/unity3d/splash/services/core/configuration/d$g;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-virtual {v4, v3}, Lcom/unity3d/splash/services/core/configuration/a;->b(Ljava/lang/String;)Lcom/unity3d/splash/services/core/configuration/c;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/unity3d/splash/services/core/configuration/d$g;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-interface {v3, v4}, Lcom/unity3d/splash/services/core/configuration/c;->c(Lcom/unity3d/splash/services/core/configuration/a;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/unity3d/splash/services/core/configuration/d$d;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/d$g;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-direct {v0, v1}, Lcom/unity3d/splash/services/core/configuration/d$d;-><init>(Lcom/unity3d/splash/services/core/configuration/a;)V

    return-object v0
.end method
