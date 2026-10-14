.class public Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f$b;

.field private c:J

.field private final d:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f$a;

    const/high16 v1, 0x1a00000

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f$a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->d:Landroid/util/LruCache;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f$b;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic c(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->h(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;)V

    .line 2
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic e(Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 2
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private h(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;->scale:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 4
    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->d:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public synthetic d(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->c(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public synthetic f(Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->e(Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V

    return-void
.end method

.method public g(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;",
            ")Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;

    .line 3
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->d:Landroid/util/LruCache;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->tileScale:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;->scale:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->c:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gez v6, :cond_3

    return v5

    .line 8
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->c:J

    .line 9
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;

    .line 11
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/d;

    invoke-direct {v3, p0, v2, p2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/d;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v3}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 12
    :cond_4
    new-instance p2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/c;

    invoke-direct {p2, p0, v1, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/c;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V

    invoke-static {p2}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    return v5
.end method

.method public i(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->d:Landroid/util/LruCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->tileScale:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;->scale:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f$b;

    return-void
.end method
