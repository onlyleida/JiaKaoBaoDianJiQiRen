.class Lcom/amap/api/mapcore/util/y9$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/y9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/amap/api/mapcore/util/y9$j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/y9$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/y9$k;-><init>()V

    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$k;->a:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x20000

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/y9$k;->b:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$k;->d:Z

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$k;->a:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/amap/api/mapcore/util/y9$j;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/y9$j;->e(Lcom/amap/api/mapcore/util/y9$j;Z)Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9$k;->f:Lcom/amap/api/mapcore/util/y9$j;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/amap/api/mapcore/util/y9$k;->f:Lcom/amap/api/mapcore/util/y9$j;

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$k;->c:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/y9$k;->f()V

    const/16 v0, 0x1f01

    .line 3
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget v0, p0, Lcom/amap/api/mapcore/util/y9$k;->b:I

    const/high16 v1, 0x20000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    const-string v0, "Q3Dimension MSM7500 "

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/y9$k;->d:Z

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    :cond_1
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/y9$k;->d:Z

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/y9$k;->e:Z

    .line 8
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/y9$k;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$k;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/y9$k;->f()V

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y9$k;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Lcom/amap/api/mapcore/util/y9$j;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9$k;->f:Lcom/amap/api/mapcore/util/y9$j;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/y9$k;->f()V

    .line 3
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/y9$k;->d:Z

    if-eqz p1, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/y9$k;->f:Lcom/amap/api/mapcore/util/y9$j;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/y9$j;->m()V

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 6
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/y9$k;->f:Lcom/amap/api/mapcore/util/y9$j;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return v1
.end method

.method public g(Lcom/amap/api/mapcore/util/y9$j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9$k;->f:Lcom/amap/api/mapcore/util/y9$j;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/y9$k;->f:Lcom/amap/api/mapcore/util/y9$j;

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method
