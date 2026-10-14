.class public Lcom/amap/api/mapcore/util/v3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/v3$b;
    }
.end annotation


# static fields
.field private static final g:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private a:Lcom/amap/api/mapcore/util/z6;

.field private b:Lcom/amap/api/mapcore/util/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore/util/d3<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/mapcore/util/v3$b;

.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/amap/api/mapcore/util/v3;->g:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method private constructor <init>(Lcom/amap/api/mapcore/util/v3$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v3;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/v3;->e:Z

    .line 4
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/v3;->n(Lcom/amap/api/mapcore/util/v3$b;)V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->s0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int v0, v0, p0

    return v0
.end method

.method public static b(Ljava/io/File;)J
    .locals 5

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v3, p0

    mul-long v1, v1, v3

    return-wide v1
.end method

.method public static d(Lcom/amap/api/mapcore/util/v3$b;)Lcom/amap/api/mapcore/util/v3;
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/v3;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/v3;-><init>(Lcom/amap/api/mapcore/util/v3$b;)V

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/cache/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/amap/api/mapcore/util/v3;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/amap/api/mapcore/util/v3;->r()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_2
    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static g([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 3
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0x30

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/amap/api/mapcore/util/v3;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/v3;->f:Ljava/util/HashMap;

    return-object p0
.end method

.method private n(Lcom/amap/api/mapcore/util/v3$b;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/v3;->c:Lcom/amap/api/mapcore/util/v3$b;

    .line 2
    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/v3$b;->f:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/amap/api/mapcore/util/w3;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v3;->f:Ljava/util/HashMap;

    .line 5
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/v3$a;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/v3;->c:Lcom/amap/api/mapcore/util/v3$b;

    iget v1, v1, Lcom/amap/api/mapcore/util/v3$b;->a:I

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/v3$a;-><init>(Lcom/amap/api/mapcore/util/v3;I)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v3;->b:Lcom/amap/api/mapcore/util/d3;

    .line 6
    :cond_1
    iget-boolean p1, p1, Lcom/amap/api/mapcore/util/v3$b;->h:Z

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/v3;->i()V

    :cond_2
    return-void
.end method

.method private o(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    array-length p1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, v0, v1

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/v3;->o(Ljava/io/File;)V

    .line 5
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    .line 7
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a readable directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "utf-8"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/v3;->g([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :catchall_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static r()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic s()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/v3;->g:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->q0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v3;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/v3;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 6
    iget-object v2, p0, Lcom/amap/api/mapcore/util/v3;->b:Lcom/amap/api/mapcore/util/d3;

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v2, p1}, Lcom/amap/api/mapcore/util/d3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_3
    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public i()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v3;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v3;->a:Lcom/amap/api/mapcore/util/z6;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/z6;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v3;->c:Lcom/amap/api/mapcore/util/v3$b;

    iget-object v2, v1, Lcom/amap/api/mapcore/util/v3$b;->c:Ljava/io/File;

    .line 4
    iget-boolean v1, v1, Lcom/amap/api/mapcore/util/v3$b;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 5
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v3;->c:Lcom/amap/api/mapcore/util/v3$b;

    iget-boolean v1, v1, Lcom/amap/api/mapcore/util/v3$b;->i:Z

    if-eqz v1, :cond_2

    .line 7
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/v3;->o(Ljava/io/File;)V

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :catchall_0
    :cond_2
    :goto_0
    :try_start_2
    invoke-static {v2}, Lcom/amap/api/mapcore/util/v3;->b(Ljava/io/File;)J

    move-result-wide v3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/v3;->c:Lcom/amap/api/mapcore/util/v3$b;

    iget-wide v5, v1, Lcom/amap/api/mapcore/util/v3$b;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    const/4 v1, 0x1

    .line 11
    :try_start_3
    invoke-static {v2, v1, v1, v5, v6}, Lcom/amap/api/mapcore/util/z6;->d(Ljava/io/File;IIJ)Lcom/amap/api/mapcore/util/z6;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/v3;->a:Lcom/amap/api/mapcore/util/z6;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 12
    :catchall_1
    :try_start_4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v3;->c:Lcom/amap/api/mapcore/util/v3$b;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/amap/api/mapcore/util/v3$b;->c:Ljava/io/File;

    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/v3;->e:Z

    .line 14
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v3;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 15
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public j(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v3;->b:Lcom/amap/api/mapcore/util/d3;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/d3;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v3;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v3;->a:Lcom/amap/api/mapcore/util/z6;

    if-eqz v1, :cond_4

    .line 6
    invoke-static {p1}, Lcom/amap/api/mapcore/util/v3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/v3;->a:Lcom/amap/api/mapcore/util/z6;

    invoke-virtual {v2, p1}, Lcom/amap/api/mapcore/util/z6;->c(Ljava/lang/String;)Lcom/amap/api/mapcore/util/z6$e;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 8
    iget-object v2, p0, Lcom/amap/api/mapcore/util/v3;->a:Lcom/amap/api/mapcore/util/z6;

    .line 9
    invoke-virtual {v2, p1}, Lcom/amap/api/mapcore/util/z6;->n(Ljava/lang/String;)Lcom/amap/api/mapcore/util/z6$d;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1, v3}, Lcom/amap/api/mapcore/util/z6$d;->b(I)Ljava/io/OutputStream;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/amap/api/mapcore/util/v3;->c:Lcom/amap/api/mapcore/util/v3$b;

    iget-object v3, v2, Lcom/amap/api/mapcore/util/v3$b;->d:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, v2, Lcom/amap/api/mapcore/util/v3$b;->e:I

    invoke-virtual {p2, v3, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 12
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/z6$d;->c()V

    .line 13
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/z6$e;->a(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 15
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    if-eqz v1, :cond_4

    goto :goto_1

    .line 16
    :catchall_1
    :cond_4
    :goto_2
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :cond_5
    :goto_3
    return-void
.end method

.method public k(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v3;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v3;->b:Lcom/amap/api/mapcore/util/d3;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/d3;->c()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v3;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v3;->a:Lcom/amap/api/mapcore/util/z6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    .line 7
    :try_start_1
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/z6;->A()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/v3;->a:Lcom/amap/api/mapcore/util/z6;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/z6;->F()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/v3;->a:Lcom/amap/api/mapcore/util/z6;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/z6;->close()V

    :goto_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/amap/api/mapcore/util/v3;->a:Lcom/amap/api/mapcore/util/z6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :catchall_0
    :cond_3
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public l(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/v3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v3;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :catchall_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/v3;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v3;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v3;->a:Lcom/amap/api/mapcore/util/z6;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 6
    :try_start_3
    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/z6;->c(Ljava/lang/String;)Lcom/amap/api/mapcore/util/z6$e;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore/util/z6$e;->a(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_1

    .line 8
    :try_start_4
    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    .line 9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const v3, 0x7fffffff

    .line 10
    invoke-static {v1, v3, v3, p0}, Lcom/amap/api/mapcore/util/t3;->w(Ljava/io/FileDescriptor;IILcom/amap/api/mapcore/util/v3;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    move-object v2, p1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    if-eqz v2, :cond_3

    .line 11
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    :cond_3
    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-object p1, v2

    :catchall_3
    if-eqz p1, :cond_4

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 12
    :catchall_4
    :cond_4
    :goto_3
    :try_start_7
    monitor-exit v0

    return-object v2

    :catchall_5
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public m()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v3;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v3;->b:Lcom/amap/api/mapcore/util/d3;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/d3;->c()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v3;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 6
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/v3;->e:Z

    .line 7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v3;->a:Lcom/amap/api/mapcore/util/z6;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/z6;->A()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/v3;->a:Lcom/amap/api/mapcore/util/z6;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/z6;->close()V

    .line 9
    sget-object v2, Lcom/amap/api/mapcore/util/ea;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/v3;->c:Lcom/amap/api/mapcore/util/v3$b;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/v3$b;->j:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/amap/api/mapcore/util/v3;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/v3;->o(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :catchall_0
    :try_start_2
    iput-object v1, p0, Lcom/amap/api/mapcore/util/v3;->a:Lcom/amap/api/mapcore/util/z6;

    .line 11
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/v3;->i()V

    .line 12
    :cond_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v3;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v3;->a:Lcom/amap/api/mapcore/util/z6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/z6;->C()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :catchall_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
