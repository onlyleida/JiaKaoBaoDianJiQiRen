.class public Lcom/amap/api/mapcore/util/m5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/amap/api/mapcore/util/i6;
    a = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/m5$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/mapcore/util/j6;
        a = "a1"
        b = 0x6
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/mapcore/util/j6;
        a = "a2"
        b = 0x6
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/amap/api/mapcore/util/j6;
        a = "a6"
        b = 0x2
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/mapcore/util/j6;
        a = "a3"
        b = 0x6
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/mapcore/util/j6;
        a = "a4"
        b = 0x6
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/mapcore/util/j6;
        a = "a5"
        b = 0x6
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/amap/api/mapcore/util/m5;->c:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/amap/api/mapcore/util/m5;->l:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/amap/api/mapcore/util/m5$b;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/amap/api/mapcore/util/m5;->c:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/amap/api/mapcore/util/m5;->l:[Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/amap/api/mapcore/util/m5$b;->d(Lcom/amap/api/mapcore/util/m5$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/m5;->g:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/amap/api/mapcore/util/m5$b;->e(Lcom/amap/api/mapcore/util/m5$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/m5;->h:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/amap/api/mapcore/util/m5$b;->f(Lcom/amap/api/mapcore/util/m5$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/m5;->j:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/amap/api/mapcore/util/m5$b;->g(Lcom/amap/api/mapcore/util/m5$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/m5;->i:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/amap/api/mapcore/util/m5$b;->h(Lcom/amap/api/mapcore/util/m5$b;)Z

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/m5;->c:I

    .line 13
    invoke-static {p1}, Lcom/amap/api/mapcore/util/m5$b;->i(Lcom/amap/api/mapcore/util/m5$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/m5;->k:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/amap/api/mapcore/util/m5$b;->j(Lcom/amap/api/mapcore/util/m5$b;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/m5;->l:[Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/amap/api/mapcore/util/m5;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/n5;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/m5;->b:Ljava/lang/String;

    .line 16
    iget-object p1, p0, Lcom/amap/api/mapcore/util/m5;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/n5;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/m5;->a:Ljava/lang/String;

    .line 17
    iget-object p1, p0, Lcom/amap/api/mapcore/util/m5;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/n5;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/m5;->d:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lcom/amap/api/mapcore/util/m5;->l:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/m5;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/mapcore/util/n5;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/m5;->e:Ljava/lang/String;

    .line 19
    iget-object p1, p0, Lcom/amap/api/mapcore/util/m5;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/n5;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/m5;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/m5$b;Lcom/amap/api/mapcore/util/m5$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/m5;-><init>(Lcom/amap/api/mapcore/util/m5$b;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/amap/api/mapcore/util/n5;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "a1"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Lcom/amap/api/mapcore/util/h6;->f(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private f(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, ";"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    const-string v0, "a6=1"

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/n5;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/m5;->j:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/m5;->c:I

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->g:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 1
    :cond_1
    const-class v2, Lcom/amap/api/mapcore/util/m5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Lcom/amap/api/mapcore/util/m5;

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/m5;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/m5;->hashCode()I

    move-result p1

    if-ne v2, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/n5;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/m5;->h:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/n5;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/m5;->i:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->i:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/z5;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/z5;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/m5;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/z5;->h(Ljava/lang/Object;)Lcom/amap/api/mapcore/util/z5;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/m5;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/z5;->h(Ljava/lang/Object;)Lcom/amap/api/mapcore/util/z5;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/m5;->h:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/z5;->h(Ljava/lang/Object;)Lcom/amap/api/mapcore/util/z5;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/m5;->l:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/z5;->q([Ljava/lang/Object;)Lcom/amap/api/mapcore/util/z5;

    .line 4
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/z5;->a()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/n5;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/m5;->k:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "standard"

    .line 4
    iput-object v0, p0, Lcom/amap/api/mapcore/util/m5;->k:Ljava/lang/String;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->k:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/m5;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public k()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->l:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/n5;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/m5;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/m5;->l:[Ljava/lang/String;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m5;->l:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
