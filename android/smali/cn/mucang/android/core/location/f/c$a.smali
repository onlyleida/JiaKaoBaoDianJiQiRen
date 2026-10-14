.class Lcn/mucang/android/core/location/f/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/location/f/c;->j([Lcom/amap/api/location/AMapLocationClient;Ljava/util/concurrent/CountDownLatch;[Lcn/mucang/android/core/location/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:[Lcom/amap/api/location/AMapLocationClient;

.field final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field final synthetic d:[Lcn/mucang/android/core/location/c;

.field final synthetic e:Lcn/mucang/android/core/location/f/c;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/location/f/c;[Lcom/amap/api/location/AMapLocationClient;Ljava/util/concurrent/CountDownLatch;[Lcn/mucang/android/core/location/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/location/f/c$a;->e:Lcn/mucang/android/core/location/f/c;

    iput-object p2, p0, Lcn/mucang/android/core/location/f/c$a;->b:[Lcom/amap/api/location/AMapLocationClient;

    iput-object p3, p0, Lcn/mucang/android/core/location/f/c$a;->c:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcn/mucang/android/core/location/f/c$a;->d:[Lcn/mucang/android/core/location/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/mucang/android/core/location/f/c$a;->a:I

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/location/f/c$a;->b:[Lcom/amap/api/location/AMapLocationClient;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/location/f/c$a;->b:[Lcom/amap/api/location/AMapLocationClient;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/location/f/c$a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic b([Lcom/amap/api/location/AMapLocationClient;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/location/f/c$a;->e:Lcn/mucang/android/core/location/f/c;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/location/f/c;->l(Lcom/amap/api/location/AMapLocationClient;)V

    return-void
.end method


# virtual methods
.method public synthetic c([Lcom/amap/api/location/AMapLocationClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/location/f/c$a;->b([Lcom/amap/api/location/AMapLocationClient;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    iget v0, p0, Lcn/mucang/android/core/location/f/c$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/core/location/f/c$a;->a:I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcn/mucang/android/core/location/f/c$a;->e:Lcn/mucang/android/core/location/f/c;

    invoke-static {v2}, Lcn/mucang/android/core/location/f/c;->e(Lcn/mucang/android/core/location/f/c;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x44c

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/location/f/c$a;->e:Lcn/mucang/android/core/location/f/c;

    iget-object v1, p0, Lcn/mucang/android/core/location/f/c$a;->b:[Lcom/amap/api/location/AMapLocationClient;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/location/f/c;->l(Lcom/amap/api/location/AMapLocationClient;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/location/f/c$a;->b:[Lcom/amap/api/location/AMapLocationClient;

    new-instance v1, Lcn/mucang/android/core/location/f/a;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/core/location/f/a;-><init>(Lcn/mucang/android/core/location/f/c$a;[Lcom/amap/api/location/AMapLocationClient;)V

    invoke-static {v1, v2, v3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/location/f/c$a;->e:Lcn/mucang/android/core/location/f/c;

    invoke-static {v0, p1}, Lcn/mucang/android/core/location/f/c;->f(Lcn/mucang/android/core/location/f/c;Lcom/amap/api/location/AMapLocation;)Lcn/mucang/android/core/location/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/location/f/c$a;->d:[Lcn/mucang/android/core/location/c;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/core/location/f/c$a;->a()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/mucang/android/core/location/f/c$a;->e:Lcn/mucang/android/core/location/f/c;

    invoke-virtual {v0}, Lcn/mucang/android/core/location/f/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-\u7528\u6237\u7981\u6b62"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf/a/a/a/c;->l(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/core/location/f/c$a;->a()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/mucang/android/core/location/f/c$a;->e:Lcn/mucang/android/core/location/f/c;

    invoke-virtual {v0}, Lcn/mucang/android/core/location/f/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "retry............"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/mucang/android/core/location/f/c$a;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AmapLocateClientImpl"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget p1, p0, Lcn/mucang/android/core/location/f/c$a;->a:I

    iget-object v0, p0, Lcn/mucang/android/core/location/f/c$a;->e:Lcn/mucang/android/core/location/f/c;

    invoke-static {v0}, Lcn/mucang/android/core/location/f/c;->g(Lcn/mucang/android/core/location/f/c;)Lcn/mucang/android/core/location/MucangLocateOption;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/location/MucangLocateOption;->e()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/core/location/f/c$a;->d()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0}, Lcn/mucang/android/core/location/f/c$a;->a()V

    :goto_0
    return-void
.end method
