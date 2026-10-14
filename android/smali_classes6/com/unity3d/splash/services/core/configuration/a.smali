.class public Lcom/unity3d/splash/services/core/configuration/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.unity3d.splash.services.core.configuration.CoreModuleConfiguration"

    const-string v1, "com.unity3d.splash.services.ads.configuration.AdsModuleConfiguration"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/splash/services/core/configuration/a;->f:[Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/configuration/a;->c()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/unity3d/splash/services/core/configuration/a;->b(Ljava/lang/String;)Lcom/unity3d/splash/services/core/configuration/c;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/unity3d/splash/services/core/configuration/c;->a()[Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lcom/unity3d/splash/services/core/configuration/c;->a()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    iput-object v0, p0, Lcom/unity3d/splash/services/core/configuration/a;->g:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/unity3d/splash/services/core/configuration/c;
    .locals 3

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/a;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/splash/services/core/configuration/c;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/splash/services/core/configuration/c;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/unity3d/splash/services/core/configuration/a;->e:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/unity3d/splash/services/core/configuration/a;->e:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    :cond_2
    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/a;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public d()[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/a;->g:[Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/unity3d/splash/services/core/configuration/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/a;->g:[Ljava/lang/Class;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected i()V
    .locals 3

    invoke-static {}, Lcom/unity3d/splash/services/c/b/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "game_detail"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "url"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/splash/services/core/configuration/a;->a:Ljava/lang/String;

    const-string v1, "hash"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/splash/services/core/configuration/a;->b:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/splash/services/core/configuration/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "Invalid data. Web view URL is null or empty"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/a;->d:Ljava/lang/String;

    return-void
.end method
