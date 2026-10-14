.class public Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final i:I


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

.field private volatile b:Z

.field private volatile c:Z

.field private d:Landroid/media/AudioTrack;

.field private volatile e:Z

.field private final f:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

.field private final g:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private h:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x3e80

    const/4 v1, 0x4

    const/4 v2, 0x2

    .line 1
    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->i:I

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/e;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/tts/play/e;",
            "Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->f:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->b:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->c:Z

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->e:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->h:F

    return-void
.end method

.method private a(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-array p1, p2, [B

    const/16 p2, -0x13

    .line 3
    invoke-static {p2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d:Landroid/media/AudioTrack;

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->c:Z

    if-nez p2, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    if-gtz p2, :cond_0

    const-wide/16 p1, 0xc8

    .line 6
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 7
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 8
    iget v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->h:F

    float-to-double v1, v1

    const-wide v3, 0x3fefae147ae147aeL    # 0.99

    const/4 v5, 0x0

    cmpg-double v6, v1, v3

    if-gtz v6, :cond_1

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v2, p2, -0x1

    if-ge v1, v2, :cond_1

    .line 9
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    int-to-short v2, v2

    int-to-double v6, v2

    .line 10
    iget v2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->h:F

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v8, v8, v10

    mul-double v6, v6, v8

    double-to-int v2, v6

    int-to-short v2, v2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    .line 11
    aput-byte v4, p1, v1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 12
    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 13
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1, v5, p2}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_0

    .line 14
    :cond_2
    :goto_2
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->c(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 17
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
.end method

.method private declared-synchronized c(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->b:Z

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->e:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->e:Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/e;->a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->b:Z

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->b:Z

    .line 2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d:Landroid/media/AudioTrack;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Landroid/media/AudioTrack;

    const/4 v4, 0x3

    const/16 v5, 0x3e80

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget v8, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->i:I

    const/4 v9, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d:Landroid/media/AudioTrack;

    .line 4
    :cond_0
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->c:Z

    if-nez v2, :cond_1

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->f:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-interface {v2, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/play/e;->d(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    .line 7
    sget v2, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->i:I

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->f:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->a(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d:Landroid/media/AudioTrack;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 11
    :catchall_0
    :try_start_1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->e:Z

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->b:Z

    return-void

    :catchall_1
    move-exception p1

    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->b:Z

    .line 14
    throw p1
.end method

.method public e()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerWrap"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public f(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->h:F

    return-void
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->b:Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->c:Z

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->f:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->c(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerWrap"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
