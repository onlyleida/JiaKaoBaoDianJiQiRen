.class public Lcn/mucang/android/jiakaoyi/signal/c/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;,
        Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;,
        Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;
    }
.end annotation


# instance fields
.field public a:F

.field public final b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

.field public final c:[Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;

.field public final d:[Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->a:F

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    const/16 v0, 0x10

    new-array v1, v0, [Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;

    .line 4
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->c:[Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->d:[Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    return-void
.end method

.method private d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V
    .locals 8

    .line 1
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    .line 2
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 3
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    if-eqz v0, :cond_2

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->a(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->c(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-gtz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->c(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;)J

    move-result-wide v4

    sub-long/2addr v1, v4

    iput-wide v1, v3, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->a:J

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->e(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;)F

    move-result v2

    sub-float/2addr p1, v2

    iput p1, v1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->b:F

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    invoke-static {v3, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->d(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;J)J

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->f(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;F)F

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    iput-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->a:J

    const/4 v1, 0x0

    .line 10
    iput v1, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->b:F

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->i()V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->h()V

    .line 13
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->b(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;Z)Z

    return-void
.end method

.method private f(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V
    .locals 13

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 2
    iget v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    .line 3
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lights:[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 4
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->d:[Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    iget v8, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    aget-object v9, v7, v8

    if-nez v9, :cond_0

    .line 5
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    invoke-direct {v9}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;-><init>()V

    .line 6
    aput-object v9, v7, v8

    .line 7
    :cond_0
    invoke-virtual {p1, v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8
    iget-boolean v7, v9, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    if-nez v7, :cond_1

    .line 9
    iput-wide v0, v9, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    .line 10
    iput v2, v9, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->b:F

    .line 11
    :cond_1
    iget-wide v7, v9, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    sub-long v7, v0, v7

    iput-wide v7, v9, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    .line 12
    iget v7, v9, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->b:F

    sub-float v7, v2, v7

    iput v7, v9, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->e:F

    goto :goto_1

    .line 13
    :cond_2
    iget-wide v7, v9, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-lez v12, :cond_3

    .line 14
    iput-wide v7, v9, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->f:J

    :cond_3
    const/4 v7, 0x0

    .line 15
    iput v7, v9, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->b:F

    .line 16
    iput-wide v10, v9, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    .line 17
    iput-wide v10, v9, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    .line 18
    iput v7, v9, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->e:F

    .line 19
    :goto_1
    iput-boolean v6, v9, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/g/b;)V
    .locals 4

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->a:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->a:F

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->d:[Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 3
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->d:[Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a(Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->c:[Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 6
    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->c:[Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->a(Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;

    move-result-object v1

    aput-object v1, v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->g(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->a:F

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->d:[Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->c:[Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->i()V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->h()V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->b(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;Z)Z

    return-void
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V
    .locals 2

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->a:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->a:F

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->f(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V

    .line 4
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V

    .line 5
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V

    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V
    .locals 12

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 2
    iget v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    .line 3
    iget v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    .line 4
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 5
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->c:[Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;

    iget v6, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    add-int/lit8 v7, v6, 0x1

    aget-object v7, v5, v7

    if-nez v7, :cond_0

    .line 6
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;-><init>()V

    add-int/lit8 v6, v6, 0x1

    .line 7
    aput-object v7, v5, v6

    :cond_0
    const/4 v5, 0x0

    .line 8
    :goto_0
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->c:[Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;

    array-length v7, v6

    if-ge v5, v7, :cond_5

    .line 9
    aget-object v6, v6, v5

    if-nez v6, :cond_1

    goto/16 :goto_1

    .line 10
    :cond_1
    iget v7, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v8, 0x0

    if-ne v5, v7, :cond_4

    .line 11
    iget-wide v10, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->a:J

    cmp-long v7, v10, v8

    if-lez v7, :cond_2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v7

    if-nez v7, :cond_3

    .line 12
    :cond_2
    iput-wide v0, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->a:J

    .line 13
    iput v2, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->b:F

    .line 14
    iput-wide v0, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->e:J

    .line 15
    iput v2, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->f:F

    .line 16
    :cond_3
    iget-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->a:J

    sub-long v7, v0, v7

    iput-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->c:J

    .line 17
    iget v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->b:F

    sub-float v7, v2, v7

    iput v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->d:F

    .line 18
    iget-wide v8, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->m:J

    iget-wide v10, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->e:J

    sub-long v10, v0, v10

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->m:J

    .line 19
    iget v8, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->n:F

    iget v9, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->f:F

    sub-float v9, v2, v9

    add-float/2addr v8, v9

    iput v8, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->n:F

    .line 20
    iput-wide v0, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->e:J

    .line 21
    iput v2, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->f:F

    .line 22
    iget v8, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->j:F

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->j:F

    .line 23
    iget v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->i:F

    iget v8, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->d:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->i:F

    .line 24
    iget-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->h:J

    iget-wide v9, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->c:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->h:J

    .line 25
    iget-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->g:J

    iget-wide v9, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->c:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    iput-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->g:J

    .line 26
    iget v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->l:F

    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->l:F

    .line 27
    iget v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->k:F

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->k:F

    goto :goto_1

    .line 28
    :cond_4
    iput-wide v8, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->e:J

    const/4 v7, 0x0

    .line 29
    iput v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->f:F

    .line 30
    iput-wide v8, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->a:J

    .line 31
    iput v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->b:F

    .line 32
    iput-wide v8, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->c:J

    .line 33
    iput v7, v6, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->d:F

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method
