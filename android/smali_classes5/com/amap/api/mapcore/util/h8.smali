.class public Lcom/amap/api/mapcore/util/h8;
.super Lcom/amap/api/mapcore/util/k8;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZIILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/k8;-><init>()V

    const-string v0, "iKey"

    .line 2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/h8;->b:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/amap/api/mapcore/util/h8;->c:Landroid/content/Context;

    .line 4
    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/h8;->d:Z

    .line 5
    iput p3, p0, Lcom/amap/api/mapcore/util/h8;->e:I

    .line 6
    iput p4, p0, Lcom/amap/api/mapcore/util/h8;->f:I

    .line 7
    iput-object p5, p0, Lcom/amap/api/mapcore/util/h8;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h8;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/g5;->V(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "yyyyMMdd"

    invoke-static {v2, v3, v0}, Lcom/amap/api/mapcore/util/n5;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h8;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h8;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/c6;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "\\|"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 7
    aget-object v3, v2, v3

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h8;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h8;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/c6;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h8;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h8;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/amap/api/mapcore/util/c6;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected c()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h8;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/g5;->V(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h8;->d:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h8;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h8;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/c6;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    const-string v3, "\\|"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6
    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    aget-object v3, v0, v2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "yyyyMMdd"

    invoke-static {v4, v5, v6}, Lcom/amap/api/mapcore/util/n5;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 11
    iget v3, p0, Lcom/amap/api/mapcore/util/h8;->f:I

    if-lt v0, v3, :cond_4

    return v2

    :cond_4
    return v1

    .line 12
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h8;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h8;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/c6;->g(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method public d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h8;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/g5;->V(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/h8;->e:I

    if-gtz v0, :cond_1

    :cond_0
    const v0, 0x7fffffff

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/k8;->a:Lcom/amap/api/mapcore/util/k8;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/k8;->d()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    return v0
.end method
