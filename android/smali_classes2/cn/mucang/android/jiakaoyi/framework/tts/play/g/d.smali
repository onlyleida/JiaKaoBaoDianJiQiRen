.class public Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

.field private volatile b:Z

.field private volatile c:Z

.field private d:Landroid/media/MediaPlayer;

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
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->f:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->b:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->c:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->h:F

    return-void
.end method

.method private synthetic b(Landroid/media/MediaPlayer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->h:F

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayerWrap"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->b:Z

    .line 8
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->e:Z

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic d(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->b:Z

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->f:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->h(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method

.method private synthetic f(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p2, 0x0

    .line 1
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->b:Z

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u64ad\u653e\u51fa\u9519:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaPlayerWrap"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->e:Z

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private declared-synchronized h(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->e:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->e:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/e;->a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->b:Z

    return v0
.end method

.method public synthetic c(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->b(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public synthetic e(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->d(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public synthetic g(Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->f(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->f:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/e;->d(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->d:Landroid/media/MediaPlayer;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->d:Landroid/media/MediaPlayer;

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/c;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/c;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->d:Landroid/media/MediaPlayer;

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/b;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->d:Landroid/media/MediaPlayer;

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/a;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->b:Z

    .line 12
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->e:Z

    if-nez p1, :cond_1

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
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

    :cond_0
    :goto_0
    return-void
.end method

.method public k(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->h:F

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->b:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->c:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->b:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->f:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->h(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->j()V

    return-void
.end method
