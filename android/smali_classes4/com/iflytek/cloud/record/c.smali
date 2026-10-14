.class public Lcom/iflytek/cloud/record/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/record/c$c;,
        Lcom/iflytek/cloud/record/c$d;
    }
.end annotation


# instance fields
.field private A:Z

.field B:Ljava/util/concurrent/locks/ReentrantLock;

.field C:Ljava/util/concurrent/locks/Condition;

.field D:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private E:I

.field private F:Landroid/os/Handler;

.field private a:Landroid/media/AudioTrack;

.field private b:Lcom/iflytek/cloud/record/b;

.field private c:Landroid/content/Context;

.field private d:Lcom/iflytek/cloud/record/c$d;

.field private e:Lcom/iflytek/cloud/record/c$c;

.field private volatile f:I

.field private g:Z

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:I

.field private final r:F

.field private final s:F

.field private final t:F

.field private u:I

.field private v:F

.field private w:F

.field private x:F

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioTrack;

    .line 40
    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->b:Lcom/iflytek/cloud/record/b;

    .line 41
    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->c:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->d:Lcom/iflytek/cloud/record/c$d;

    .line 43
    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->e:Lcom/iflytek/cloud/record/c$c;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/iflytek/cloud/record/c;->f:I

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/iflytek/cloud/record/c;->g:Z

    const/4 v1, 0x3

    .line 46
    iput v1, p0, Lcom/iflytek/cloud/record/c;->h:I

    .line 47
    iput-boolean v0, p0, Lcom/iflytek/cloud/record/c;->j:Z

    .line 48
    iput-boolean v0, p0, Lcom/iflytek/cloud/record/c;->k:Z

    .line 49
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/iflytek/cloud/record/c;->l:Ljava/lang/Object;

    .line 50
    iput-object p0, p0, Lcom/iflytek/cloud/record/c;->m:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 51
    iput v1, p0, Lcom/iflytek/cloud/record/c;->n:I

    const/16 v1, 0x1f4

    .line 52
    iput v1, p0, Lcom/iflytek/cloud/record/c;->o:I

    const/16 v1, 0x32

    .line 53
    iput v1, p0, Lcom/iflytek/cloud/record/c;->p:I

    const/16 v1, 0x640

    .line 54
    iput v1, p0, Lcom/iflytek/cloud/record/c;->q:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 55
    iput v1, p0, Lcom/iflytek/cloud/record/c;->r:F

    const/4 v2, 0x0

    .line 56
    iput v2, p0, Lcom/iflytek/cloud/record/c;->s:F

    const v3, 0x3dcccccd    # 0.1f

    .line 57
    iput v3, p0, Lcom/iflytek/cloud/record/c;->t:F

    const/16 v4, 0x3e80

    .line 58
    iput v4, p0, Lcom/iflytek/cloud/record/c;->u:I

    .line 59
    iput v2, p0, Lcom/iflytek/cloud/record/c;->v:F

    .line 60
    iput v1, p0, Lcom/iflytek/cloud/record/c;->w:F

    .line 61
    iput v3, p0, Lcom/iflytek/cloud/record/c;->x:F

    .line 62
    iput-boolean v0, p0, Lcom/iflytek/cloud/record/c;->y:Z

    .line 63
    iput-boolean v0, p0, Lcom/iflytek/cloud/record/c;->z:Z

    .line 64
    iput-boolean v0, p0, Lcom/iflytek/cloud/record/c;->A:Z

    .line 65
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/iflytek/cloud/record/c;->B:Ljava/util/concurrent/locks/ReentrantLock;

    .line 66
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/record/c;->C:Ljava/util/concurrent/locks/Condition;

    .line 67
    new-instance v1, Lcom/iflytek/cloud/record/c$a;

    invoke-direct {v1, p0}, Lcom/iflytek/cloud/record/c$a;-><init>(Lcom/iflytek/cloud/record/c;)V

    iput-object v1, p0, Lcom/iflytek/cloud/record/c;->D:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 68
    iput v0, p0, Lcom/iflytek/cloud/record/c;->E:I

    .line 69
    new-instance v0, Lcom/iflytek/cloud/record/c$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/record/c$b;-><init>(Lcom/iflytek/cloud/record/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->F:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/iflytek/cloud/record/c;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioTrack;

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->b:Lcom/iflytek/cloud/record/b;

    .line 4
    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->c:Landroid/content/Context;

    .line 5
    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->d:Lcom/iflytek/cloud/record/c$d;

    .line 6
    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->e:Lcom/iflytek/cloud/record/c$c;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/iflytek/cloud/record/c;->f:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/iflytek/cloud/record/c;->g:Z

    const/4 v1, 0x3

    .line 9
    iput v1, p0, Lcom/iflytek/cloud/record/c;->h:I

    .line 10
    iput-boolean v0, p0, Lcom/iflytek/cloud/record/c;->j:Z

    .line 11
    iput-boolean v0, p0, Lcom/iflytek/cloud/record/c;->k:Z

    .line 12
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/iflytek/cloud/record/c;->l:Ljava/lang/Object;

    .line 13
    iput-object p0, p0, Lcom/iflytek/cloud/record/c;->m:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 14
    iput v1, p0, Lcom/iflytek/cloud/record/c;->n:I

    const/16 v1, 0x1f4

    .line 15
    iput v1, p0, Lcom/iflytek/cloud/record/c;->o:I

    const/16 v1, 0x32

    .line 16
    iput v1, p0, Lcom/iflytek/cloud/record/c;->p:I

    const/16 v1, 0x640

    .line 17
    iput v1, p0, Lcom/iflytek/cloud/record/c;->q:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    iput v1, p0, Lcom/iflytek/cloud/record/c;->r:F

    const/4 v2, 0x0

    .line 19
    iput v2, p0, Lcom/iflytek/cloud/record/c;->s:F

    const v3, 0x3dcccccd    # 0.1f

    .line 20
    iput v3, p0, Lcom/iflytek/cloud/record/c;->t:F

    const/16 v4, 0x3e80

    .line 21
    iput v4, p0, Lcom/iflytek/cloud/record/c;->u:I

    .line 22
    iput v2, p0, Lcom/iflytek/cloud/record/c;->v:F

    .line 23
    iput v1, p0, Lcom/iflytek/cloud/record/c;->w:F

    .line 24
    iput v3, p0, Lcom/iflytek/cloud/record/c;->x:F

    .line 25
    iput-boolean v0, p0, Lcom/iflytek/cloud/record/c;->y:Z

    .line 26
    iput-boolean v0, p0, Lcom/iflytek/cloud/record/c;->z:Z

    .line 27
    iput-boolean v0, p0, Lcom/iflytek/cloud/record/c;->A:Z

    .line 28
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/iflytek/cloud/record/c;->B:Ljava/util/concurrent/locks/ReentrantLock;

    .line 29
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/record/c;->C:Ljava/util/concurrent/locks/Condition;

    .line 30
    new-instance v1, Lcom/iflytek/cloud/record/c$a;

    invoke-direct {v1, p0}, Lcom/iflytek/cloud/record/c$a;-><init>(Lcom/iflytek/cloud/record/c;)V

    iput-object v1, p0, Lcom/iflytek/cloud/record/c;->D:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 31
    iput v0, p0, Lcom/iflytek/cloud/record/c;->E:I

    .line 32
    new-instance v0, Lcom/iflytek/cloud/record/c$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/record/c$b;-><init>(Lcom/iflytek/cloud/record/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->F:Landroid/os/Handler;

    .line 33
    iput-object p1, p0, Lcom/iflytek/cloud/record/c;->c:Landroid/content/Context;

    .line 34
    iput p2, p0, Lcom/iflytek/cloud/record/c;->h:I

    .line 35
    iput-boolean p3, p0, Lcom/iflytek/cloud/record/c;->j:Z

    .line 36
    iput-boolean p4, p0, Lcom/iflytek/cloud/record/c;->A:Z

    .line 37
    iput-boolean p5, p0, Lcom/iflytek/cloud/record/c;->z:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/record/c;I)I
    .locals 0

    .line 5
    iput p1, p0, Lcom/iflytek/cloud/record/c;->E:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/cloud/record/c;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$c;)Lcom/iflytek/cloud/record/c$c;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/iflytek/cloud/record/c;->e:Lcom/iflytek/cloud/record/c$c;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$d;)Lcom/iflytek/cloud/record/c$d;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/iflytek/cloud/record/c;->d:Lcom/iflytek/cloud/record/c$d;

    return-object p1
.end method

.method private a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "PcmPlayer"

    const-string v1, "createAudio start"

    .line 12
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/iflytek/cloud/record/c;->b:Lcom/iflytek/cloud/record/b;

    invoke-virtual {v1}, Lcom/iflytek/cloud/record/b;->h()I

    move-result v4

    const/4 v1, 0x2

    .line 14
    invoke-static {v4, v1, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    iput v2, p0, Lcom/iflytek/cloud/record/c;->i:I

    .line 15
    div-int/lit16 v2, v4, 0x3e8

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x32

    iput v2, p0, Lcom/iflytek/cloud/record/c;->q:I

    mul-int/lit8 v2, v2, 0xa

    .line 16
    iput v2, p0, Lcom/iflytek/cloud/record/c;->u:I

    .line 17
    iget-object v2, p0, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/iflytek/cloud/record/c;->f()V

    .line 19
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAudio || mStreamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/iflytek/cloud/record/c;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", buffer size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/iflytek/cloud/record/c;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v9, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/iflytek/cloud/record/c;->h:I

    iget v2, p0, Lcom/iflytek/cloud/record/c;->i:I

    mul-int/lit8 v7, v2, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v8, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v9, p0, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioTrack;

    .line 21
    iget-object v2, p0, Lcom/iflytek/cloud/record/c;->b:Lcom/iflytek/cloud/record/b;

    iget v3, p0, Lcom/iflytek/cloud/record/c;->i:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/record/b;->d(I)V

    .line 22
    iget v1, p0, Lcom/iflytek/cloud/record/c;->i:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, "createAudio end"

    .line 23
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method private a(II)Z
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget v1, p0, Lcom/iflytek/cloud/record/c;->f:I

    if-ne p1, v1, :cond_0

    .line 10
    iput p2, p0, Lcom/iflytek/cloud/record/c;->f:I

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/iflytek/cloud/record/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/iflytek/cloud/record/c;->k:Z

    return p0
.end method

.method static synthetic a(Lcom/iflytek/cloud/record/c;II)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/record/c;->a(II)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/iflytek/cloud/record/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/iflytek/cloud/record/c;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/cloud/record/c;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/iflytek/cloud/record/c;->f:I

    return p1
.end method

.method static synthetic b(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/record/c;->e:Lcom/iflytek/cloud/record/c$c;

    return-object p0
.end method

.method static synthetic b(Lcom/iflytek/cloud/record/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/iflytek/cloud/record/c;->y:Z

    return p1
.end method

.method static synthetic c(Lcom/iflytek/cloud/record/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/iflytek/cloud/record/c;->y:Z

    return p0
.end method

.method static synthetic d(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/record/c;->F:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/iflytek/cloud/record/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/iflytek/cloud/record/c;->E:I

    return p0
.end method

.method private e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->d:Lcom/iflytek/cloud/record/c$d;

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c$d;->a()I

    move-result v1

    iget v2, p0, Lcom/iflytek/cloud/record/c;->h:I

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, "PcmPlayer"

    const-string v2, "prepAudioPlayer || audiotrack is null or stream type is change."

    .line 5
    invoke-static {v1, v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/iflytek/cloud/record/c;->a()V

    if-eqz v0, :cond_1

    .line 7
    iget v1, p0, Lcom/iflytek/cloud/record/c;->h:I

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/c$d;->a(I)V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static synthetic g(Lcom/iflytek/cloud/record/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/iflytek/cloud/record/c;->z:Z

    return p0
.end method

.method static synthetic h(Lcom/iflytek/cloud/record/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/iflytek/cloud/record/c;->u:I

    return p0
.end method

.method static synthetic i(Lcom/iflytek/cloud/record/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/iflytek/cloud/record/c;->w:F

    return p0
.end method

.method static synthetic j(Lcom/iflytek/cloud/record/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/iflytek/cloud/record/c;->q:I

    return p0
.end method

.method static synthetic k(Lcom/iflytek/cloud/record/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/iflytek/cloud/record/c;->h:I

    return p0
.end method

.method static synthetic l(Lcom/iflytek/cloud/record/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/iflytek/cloud/record/c;->g:Z

    return p0
.end method

.method static synthetic m(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/record/c;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic n(Lcom/iflytek/cloud/record/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/iflytek/cloud/record/c;->j:Z

    return p0
.end method

.method static synthetic o(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/record/c;->b:Lcom/iflytek/cloud/record/b;

    return-object p0
.end method

.method static synthetic p(Lcom/iflytek/cloud/record/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/record/c;->m:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic q(Lcom/iflytek/cloud/record/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/iflytek/cloud/record/c;->f:I

    return p0
.end method

.method static synthetic r(Lcom/iflytek/cloud/record/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/record/c;->e()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/record/b;Lcom/iflytek/cloud/record/c$c;)Z
    .locals 3

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play mPlaytate= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iflytek/cloud/record/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mAudioFocus= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iflytek/cloud/record/c;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PcmPlayer"

    invoke-static {v1, v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_0
    iget v1, p0, Lcom/iflytek/cloud/record/c;->f:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/iflytek/cloud/record/c;->f:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/iflytek/cloud/record/c;->f:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c;->d:Lcom/iflytek/cloud/record/c$d;

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/iflytek/cloud/record/c;->b:Lcom/iflytek/cloud/record/b;

    .line 29
    iput-object p2, p0, Lcom/iflytek/cloud/record/c;->e:Lcom/iflytek/cloud/record/c$c;

    .line 30
    new-instance p1, Lcom/iflytek/cloud/record/c$d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/iflytek/cloud/record/c$d;-><init>(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$a;)V

    iput-object p1, p0, Lcom/iflytek/cloud/record/c;->d:Lcom/iflytek/cloud/record/c$d;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    .line 32
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 4

    .line 4
    iget-boolean v0, p0, Lcom/iflytek/cloud/record/c;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget v2, p0, Lcom/iflytek/cloud/record/c;->w:F

    iget v3, p0, Lcom/iflytek/cloud/record/c;->v:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 7
    iget v2, p0, Lcom/iflytek/cloud/record/c;->w:F

    iput v2, p0, Lcom/iflytek/cloud/record/c;->v:F

    .line 8
    iput-boolean v1, p0, Lcom/iflytek/cloud/record/c;->y:Z

    const-string v1, "fading finish"

    .line 9
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    iget v1, p0, Lcom/iflytek/cloud/record/c;->v:F

    iget v2, p0, Lcom/iflytek/cloud/record/c;->x:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/iflytek/cloud/record/c;->v:F

    .line 11
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/iflytek/cloud/record/c;->v:F

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 14
    :cond_1
    iput-boolean v1, p0, Lcom/iflytek/cloud/record/c;->y:Z

    :goto_1
    return-void
.end method

.method public c()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/iflytek/cloud/record/c;->f:I

    return v0
.end method

.method public d()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/iflytek/cloud/record/c;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/iflytek/cloud/record/c;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pause start fade out"

    .line 3
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/record/c;->j()V

    .line 5
    iput v1, p0, Lcom/iflytek/cloud/record/c;->f:I

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioTrack;

    :cond_1
    const-string v1, "PcmPlayer"

    const-string v2, "mAudioTrack released"

    .line 8
    invoke-static {v1, v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()Z
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/iflytek/cloud/record/c;->a(II)Z

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/iflytek/cloud/record/c;->c:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/cloud/record/c;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/record/c;->D:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v2, v3, v4}, Lcom/iflytek/cloud/msc/util/g;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    if-eqz v0, :cond_0

    const-string v2, "resume start fade in"

    .line 4
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/iflytek/cloud/record/c;->F:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 6
    invoke-virtual {p0}, Lcom/iflytek/cloud/record/c;->i()V

    :cond_0
    return v0
.end method

.method public h()V
    .locals 4

    const-string v0, "fading set silence"

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/iflytek/cloud/record/c;->w:F

    const/4 v2, 0x0

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 5
    iput v2, p0, Lcom/iflytek/cloud/record/c;->v:F

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/iflytek/cloud/record/c;->y:Z

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/iflytek/cloud/record/c;->v:F

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public i()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/iflytek/cloud/record/c;->A:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "start fade in"

    .line 4
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/iflytek/cloud/record/c;->y:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    iput v1, p0, Lcom/iflytek/cloud/record/c;->w:F

    const v1, 0x3dcccccd    # 0.1f

    .line 7
    iput v1, p0, Lcom/iflytek/cloud/record/c;->x:F

    .line 8
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/iflytek/cloud/record/c;->A:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "start fade out"

    .line 4
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/iflytek/cloud/record/c;->y:Z

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/iflytek/cloud/record/c;->w:F

    const v1, -0x42333333    # -0.1f

    .line 7
    iput v1, p0, Lcom/iflytek/cloud/record/c;->x:F

    .line 8
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 2
    iget v0, p0, Lcom/iflytek/cloud/record/c;->f:I

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    const-string v0, "stop start fade out"

    .line 3
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/record/c;->j()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iput v1, p0, Lcom/iflytek/cloud/record/c;->f:I

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
