.class public Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private b:Ljava/io/BufferedWriter;

.field private c:Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->c:Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;)Ljava/io/BufferedWriter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->b:Ljava/io/BufferedWriter;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->b:Ljava/io/BufferedWriter;

    return-object p1
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->b:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->b:Ljava/io/BufferedWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :catchall_0
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/GearSpeed/Learn/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/mucang/android/core/utils/p0;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->b:Ljava/io/BufferedWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b$b;-><init>(Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b$a;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public d(IFLcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->d:J

    .line 3
    :cond_1
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->c:Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->c:Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    .line 6
    iput v0, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->max:F

    const v2, 0x47c35000    # 100000.0f

    .line 7
    iput v2, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->min:F

    const/4 v2, 0x0

    .line 8
    iput v2, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->count:I

    .line 9
    iput v0, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->sum:F

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 11
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->j(Ljava/lang/String;)V

    int-to-float p1, p1

    div-float/2addr p1, p2

    .line 12
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->c:Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    iget p3, p2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->max:F

    cmpg-float p3, p3, p1

    if-gez p3, :cond_3

    .line 13
    iput p1, p2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->max:F

    .line 14
    :cond_3
    iget p3, p2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->min:F

    cmpl-float p3, p3, p1

    if-lez p3, :cond_4

    .line 15
    iput p1, p2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->min:F

    .line 16
    :cond_4
    iget p3, p2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->sum:F

    add-float/2addr p3, p1

    iput p3, p2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->sum:F

    .line 17
    iget p1, p2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->count:I

    const/4 v0, 0x2

    if-le p1, v0, :cond_5

    .line 18
    iget v1, p2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->max:F

    sub-float/2addr p3, v1

    iget v1, p2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->min:F

    sub-float/2addr p3, v1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p3, p1

    iput p3, p2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->value:F

    goto :goto_0

    :cond_5
    int-to-float p1, p1

    div-float/2addr p3, p1

    .line 19
    iput p3, p2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->value:F

    :goto_0
    return-object p2
.end method

.method public f()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->c:Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    if-eqz v0, :cond_0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->count:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->c:Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->d:J

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->i()V

    return-void
.end method

.method public h()Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->c:Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    return-object v0
.end method
