.class public Lcom/amap/api/mapcore/util/o6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/mapcore/util/m5;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/amap/api/mapcore/util/o8;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/o6;->c:Z

    const-string v0, "40C27E38DCAD404B5465362914090908"

    .line 3
    iput-object v0, p0, Lcom/amap/api/mapcore/util/o6;->d:Ljava/lang/String;

    .line 4
    new-instance v1, Lcom/amap/api/mapcore/util/o8;

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore/util/o8;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/o6;->e:Lcom/amap/api/mapcore/util/o8;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/m5$b;

    invoke-direct {v0, p3, p4, p3}, Lcom/amap/api/mapcore/util/m5$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/amap/api/mapcore/util/m5$b;->b([Ljava/lang/String;)Lcom/amap/api/mapcore/util/m5$b;

    invoke-virtual {v0, p5}, Lcom/amap/api/mapcore/util/m5$b;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/m5$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/m5$b;->c()Lcom/amap/api/mapcore/util/m5;

    move-result-object p3

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/o6;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/amap/api/mapcore/util/o6;->b:Lcom/amap/api/mapcore/util/m5;

    .line 4
    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/o6;->c:Z

    .line 5
    iget-object p2, p0, Lcom/amap/api/mapcore/util/o6;->e:Lcom/amap/api/mapcore/util/o8;

    invoke-virtual {p2, p1, p3}, Lcom/amap/api/mapcore/util/o8;->f(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/o6;->e:Lcom/amap/api/mapcore/util/o8;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/o6;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/o8;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 2
    sget-object v2, Lcom/amap/api/mapcore/util/q6$a;->a:Lcom/amap/api/mapcore/util/q6;

    .line 3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/o6;->a:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/amap/api/mapcore/util/o6;->c:Z

    iget-object v8, p0, Lcom/amap/api/mapcore/util/o6;->b:Lcom/amap/api/mapcore/util/m5;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/amap/api/mapcore/util/q6;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/amap/api/mapcore/util/m5;)Z

    return-void
.end method
