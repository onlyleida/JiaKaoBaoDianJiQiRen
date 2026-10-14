.class public Lcom/iflytek/cloud/c/a/k;
.super Lcom/iflytek/cloud/a/f/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/c/a/k$b;,
        Lcom/iflytek/cloud/c/a/k$a;,
        Lcom/iflytek/cloud/c/a/k$c;
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String; = "respath"


# instance fields
.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Lcom/iflytek/cloud/a/d/d;

.field private o:Lcom/iflytek/cloud/msc/util/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/f/e;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/iflytek/cloud/c/a/k;->f:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/k;->g:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/k;->h:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/k;->i:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/k;->j:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/k;->k:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/k;->l:Ljava/lang/String;

    .line 9
    iput-boolean p1, p0, Lcom/iflytek/cloud/c/a/k;->m:Z

    .line 10
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/k;->n:Lcom/iflytek/cloud/a/d/d;

    .line 11
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/k;->o:Lcom/iflytek/cloud/msc/util/b;

    .line 12
    iget-object p1, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/b;->a(Landroid/content/Context;)Lcom/iflytek/cloud/msc/util/b;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/c/a/k;->o:Lcom/iflytek/cloud/msc/util/b;

    return-void
.end method

.method private a(Lcom/iflytek/cloud/WakeuperListener;)I
    .locals 7

    .line 40
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 41
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/cloud/c/a/k;->h()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/iflytek/cloud/c/a/k;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ivw use resource from server"

    .line 42
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/iflytek/cloud/c/a/k;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/iflytek/cloud/c/a/k;->k:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/iflytek/cloud/c/a/k;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/iflytek/cloud/c/a/k;->k:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    :goto_0
    iget-object v4, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v5, "ivw_res_path"

    invoke-virtual {v4, v5, v2}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v4, "ivw_threshold"

    invoke-virtual {v2, v4, v3}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, v1}, Lcom/iflytek/cloud/c/a/k;->b(Z)V

    goto :goto_1

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "ivw_res_path"

    :try_start_1
    iget-object v5, p0, Lcom/iflytek/cloud/c/a/k;->g:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;
    :try_end_1
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "ivw_threshold"

    :try_start_2
    iget-object v5, p0, Lcom/iflytek/cloud/c/a/k;->j:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 51
    invoke-direct {p0, v2}, Lcom/iflytek/cloud/c/a/k;->b(Z)V

    .line 52
    :goto_1
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v4, "request_audio_focus"

    invoke-virtual {v2, v4, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/iflytek/cloud/c/a/k;->f:Z

    .line 53
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v2, Lcom/iflytek/cloud/a/d/c;

    invoke-virtual {v2, v1}, Lcom/iflytek/cloud/a/d/c;->cancel(Z)V

    .line 55
    :cond_2
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v4, "ivw_channel_num"

    invoke-virtual {v2, v4, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    .line 56
    new-instance v2, Lcom/iflytek/cloud/a/d/c;

    iget-object v4, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v6, "wakeuper"

    .line 57
    invoke-virtual {p0, v6}, Lcom/iflytek/cloud/a/f/e;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/iflytek/cloud/a/d/c;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    goto :goto_2

    .line 58
    :cond_3
    new-instance v2, Lcom/iflytek/cloud/a/d/a;

    iget-object v4, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v6, "wakeuper"

    .line 59
    invoke-virtual {p0, v6}, Lcom/iflytek/cloud/a/f/e;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/iflytek/cloud/a/d/a;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    .line 60
    :goto_2
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/iflytek/cloud/c/a/k;->f:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/iflytek/cloud/msc/util/g;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    .line 61
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v2, Lcom/iflytek/cloud/a/d/c;

    new-instance v3, Lcom/iflytek/cloud/c/a/k$b;

    invoke-direct {v3, p0, p1}, Lcom/iflytek/cloud/c/a/k$b;-><init>(Lcom/iflytek/cloud/c/a/k;Lcom/iflytek/cloud/WakeuperListener;)V

    .line 62
    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/a/d/c;->a(Lcom/iflytek/cloud/WakeuperListener;)V
    :try_end_2
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    const/16 v1, 0x5207

    .line 63
    :try_start_3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    .line 65
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 66
    :goto_3
    monitor-exit v0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method static synthetic a(Lcom/iflytek/cloud/c/a/k;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/c/a/k;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restart wake ,isError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 69
    :try_start_0
    iput-object v1, p0, Lcom/iflytek/cloud/c/a/k;->k:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast p1, Lcom/iflytek/cloud/a/d/c;

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/d/c;->a()Lcom/iflytek/cloud/WakeuperListener;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/c/a/k;->a(Lcom/iflytek/cloud/WakeuperListener;)I

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    sget-object v2, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->path:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    iget-object v3, p0, Lcom/iflytek/cloud/c/a/k;->o:Lcom/iflytek/cloud/msc/util/b;

    const-string v4, "ivw_config_path"

    .line 73
    invoke-virtual {v3, v4, v1}, Lcom/iflytek/cloud/msc/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {p1, v2, v3}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/c/a/k;->k:Ljava/lang/String;

    .line 75
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/k;->o:Lcom/iflytek/cloud/msc/util/b;

    const-string v2, "cfg_threshold"

    invoke-virtual {p1, v2, v1}, Lcom/iflytek/cloud/msc/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/c/a/k;->l:Ljava/lang/String;

    .line 76
    iget-object p1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast p1, Lcom/iflytek/cloud/a/d/c;

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/d/c;->a()Lcom/iflytek/cloud/WakeuperListener;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/c/a/k;->a(Lcom/iflytek/cloud/WakeuperListener;)I

    .line 77
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/iflytek/cloud/c/a/k;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/c/a/k;->h()Z

    move-result p0

    return p0
.end method

.method private declared-synchronized b(Z)V
    .locals 0

    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/iflytek/cloud/c/a/k;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/iflytek/cloud/c/a/k;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/iflytek/cloud/c/a/k;->f:Z

    return p0
.end method

.method static synthetic c(Lcom/iflytek/cloud/c/a/k;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/iflytek/cloud/c/a/k;)Lcom/iflytek/cloud/msc/util/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/c/a/k;->o:Lcom/iflytek/cloud/msc/util/b;

    return-object p0
.end method

.method static synthetic e(Lcom/iflytek/cloud/c/a/k;)Lcom/iflytek/cloud/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    return-object p0
.end method

.method private declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/cloud/c/a/k;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/iflytek/cloud/c/a/k;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/c/a/k;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/iflytek/cloud/c/a/k;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method private g()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/k;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/iflytek/cloud/a/d/d;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/iflytek/cloud/c/a/k;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/iflytek/cloud/a/d/d;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/iflytek/cloud/a/d/d;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v1, "ivw_net_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/cloud/util/FileDownloadListener;)I
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 31
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "CreateDownload"

    const/4 v2, 0x0

    .line 32
    invoke-static {v1, v2}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/k;->n:Lcom/iflytek/cloud/a/d/d;

    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/d;->a()V

    .line 35
    iput-object v2, p0, Lcom/iflytek/cloud/c/a/k;->n:Lcom/iflytek/cloud/a/d/d;

    .line 36
    :cond_1
    new-instance v1, Lcom/iflytek/cloud/a/d/d;

    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/a/d/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/cloud/c/a/k;->n:Lcom/iflytek/cloud/a/d/d;

    .line 37
    new-instance v2, Lcom/iflytek/cloud/c/a/k$a;

    invoke-direct {v2, p0, p4, p5}, Lcom/iflytek/cloud/c/a/k$a;-><init>(Lcom/iflytek/cloud/c/a/k;ZLcom/iflytek/cloud/util/FileDownloadListener;)V

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/iflytek/cloud/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/util/FileDownloadListener;)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_2
    :goto_0
    const/16 p1, 0x4e2c

    .line 38
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;ZLcom/iflytek/cloud/RequestListener;)I
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x6213

    if-eqz v1, :cond_0

    const-string p1, "respath is null. please set respath before startlisten"

    .line 5
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return v2

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 7
    iget-object v3, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    sget-object v4, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->path:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    iget-object v5, p0, Lcom/iflytek/cloud/c/a/k;->o:Lcom/iflytek/cloud/msc/util/b;

    const-string v6, "ivw_config_path"

    .line 8
    invoke-virtual {v5, v6, v1}, Lcom/iflytek/cloud/msc/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {v3, v4, v5}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 10
    :goto_0
    iget-object v4, p0, Lcom/iflytek/cloud/c/a/k;->n:Lcom/iflytek/cloud/a/d/d;

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v4}, Lcom/iflytek/cloud/a/d/d;->a()V

    .line 12
    iput-object v1, p0, Lcom/iflytek/cloud/c/a/k;->n:Lcom/iflytek/cloud/a/d/d;

    .line 13
    :cond_2
    new-instance v4, Lcom/iflytek/cloud/a/d/d;

    iget-object v5, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/iflytek/cloud/a/d/d;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/cloud/c/a/k;->n:Lcom/iflytek/cloud/a/d/d;

    .line 14
    invoke-static {p1, v3}, Lcom/iflytek/cloud/a/d/d;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_3

    const-string p1, "ivw invalid resource"

    .line 15
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 16
    monitor-exit v0

    return v2

    .line 17
    :cond_3
    sget-object v2, Lcom/iflytek/cloud/c/a/k;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 19
    iput-object v2, p0, Lcom/iflytek/cloud/c/a/k;->k:Ljava/lang/String;

    .line 20
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/k;->o:Lcom/iflytek/cloud/msc/util/b;

    const-string v2, "cfg_threshold"

    invoke-virtual {p1, v2, v1}, Lcom/iflytek/cloud/msc/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/c/a/k;->l:Ljava/lang/String;

    goto :goto_1

    .line 21
    :cond_4
    iput-object v1, p0, Lcom/iflytek/cloud/c/a/k;->k:Ljava/lang/String;

    .line 22
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/k;->o:Lcom/iflytek/cloud/msc/util/b;

    const-string v2, "ivw_config_path"

    invoke-virtual {p1, v2}, Lcom/iflytek/cloud/msc/util/b;->a(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/k;->o:Lcom/iflytek/cloud/msc/util/b;

    const-string v2, "cfg_threshold"

    invoke-virtual {p1, v2}, Lcom/iflytek/cloud/msc/util/b;->a(Ljava/lang/String;)V

    :goto_1
    const-string p1, "SendRequest"

    .line 24
    invoke-static {p1, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/k;->n:Lcom/iflytek/cloud/a/d/d;

    new-instance v1, Lcom/iflytek/cloud/c/a/k$c;

    invoke-direct {v1, p0, p2, p3}, Lcom/iflytek/cloud/c/a/k$c;-><init>(Lcom/iflytek/cloud/c/a/k;ZLcom/iflytek/cloud/RequestListener;)V

    invoke-virtual {p1, v3, v1}, Lcom/iflytek/cloud/a/d/d;->a(Lorg/json/JSONObject;Lcom/iflytek/cloud/RequestListener;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancel(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/k;->n:Lcom/iflytek/cloud/a/d/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/d;->a()V

    .line 4
    iput-object v2, p0, Lcom/iflytek/cloud/c/a/k;->n:Lcom/iflytek/cloud/a/d/d;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/cloud/c/a/k;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/iflytek/cloud/msc/util/g;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    .line 6
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/e;->cancel(Z)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public destroy()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/k;->n:Lcom/iflytek/cloud/a/d/d;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/d;->a()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/iflytek/cloud/c/a/k;->n:Lcom/iflytek/cloud/a/d/d;

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/e;->destroy()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isListening()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/e;->c()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startListening(Lcom/iflytek/cloud/WakeuperListener;)I
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v2, "ivw_res_path"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/c/a/k;->g:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v2, "ivw_threshold"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/c/a/k;->j:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/iflytek/cloud/c/a/k;->h:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/iflytek/cloud/c/a/k;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/iflytek/cloud/c/a/k;->g:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 7
    iget-object v4, p0, Lcom/iflytek/cloud/c/a/k;->g:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 8
    iget-object v4, p0, Lcom/iflytek/cloud/c/a/k;->g:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/cloud/c/a/k;->h:Ljava/lang/String;

    .line 9
    iget-object v4, p0, Lcom/iflytek/cloud/c/a/k;->g:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/cloud/c/a/k;->i:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/iflytek/cloud/c/a/k;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/iflytek/cloud/c/a/k;->i:Ljava/lang/String;

    .line 11
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/iflytek/cloud/c/a/k;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    sget-object v4, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->path:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    iget-object v5, p0, Lcom/iflytek/cloud/c/a/k;->o:Lcom/iflytek/cloud/msc/util/b;

    const-string v6, "ivw_config_path"

    .line 13
    invoke-virtual {v5, v6, v1}, Lcom/iflytek/cloud/msc/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-static {v2, v4, v5}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/cloud/c/a/k;->k:Ljava/lang/String;

    .line 15
    iget-object v2, p0, Lcom/iflytek/cloud/c/a/k;->o:Lcom/iflytek/cloud/msc/util/b;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "ivw_query_last_time"

    const-wide/16 v7, 0x0

    .line 17
    invoke-virtual {v2, v6, v7, v8}, Lcom/iflytek/cloud/msc/util/b;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 18
    iget-object v8, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v9, "ivw_query_period"

    const-wide/32 v10, 0x5265c00

    invoke-virtual {v8, v9, v10, v11}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 19
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "query ivw res period: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    sub-long v10, v4, v6

    cmp-long v12, v10, v8

    if-ltz v12, :cond_3

    .line 20
    invoke-direct {p0}, Lcom/iflytek/cloud/c/a/k;->g()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 21
    iget-object v6, p0, Lcom/iflytek/cloud/c/a/k;->k:Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_2
    iget-object v6, p0, Lcom/iflytek/cloud/c/a/k;->i:Ljava/lang/String;

    .line 23
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "begin resource query res path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v6, v3, v1}, Lcom/iflytek/cloud/c/a/k;->a(Ljava/lang/String;ZLcom/iflytek/cloud/RequestListener;)I

    const-string v1, "ivw_query_last_time"

    .line 25
    invoke-virtual {v2, v1, v4, v5}, Lcom/iflytek/cloud/msc/util/b;->b(Ljava/lang/String;J)V

    goto :goto_2

    :cond_3
    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    const-string v1, "ivw_query_last_time"

    .line 26
    invoke-virtual {v2, v1, v4, v5}, Lcom/iflytek/cloud/msc/util/b;->b(Ljava/lang/String;J)V

    .line 27
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/c/a/k;->a(Lcom/iflytek/cloud/WakeuperListener;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    const/16 v1, 0x5207

    .line 28
    :try_start_1
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/16 p1, 0x5207

    .line 29
    :goto_3
    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public stopListening()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v1, Lcom/iflytek/cloud/a/d/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/a/d/c;->a(Z)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeAudio([BII)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    if-nez v1, :cond_0

    const-string p1, "writeAudio error, no active session."

    .line 3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/16 p1, 0x520c

    .line 4
    monitor-exit v0

    return p1

    :cond_0
    const/16 v1, 0x277d

    if-eqz p1, :cond_4

    .line 5
    array-length v2, p1

    if-gtz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    array-length v2, p1

    add-int v3, p3, p2

    if-ge v2, v3, :cond_2

    const-string p1, "writeAudio error,buffer length < length."

    .line 7
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 8
    monitor-exit v0

    return v1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v1, Lcom/iflytek/cloud/a/d/c;

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/c;->getAudioSource()I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_3

    const/16 p1, 0x277a

    .line 10
    monitor-exit v0

    return p1

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v1, Lcom/iflytek/cloud/a/d/c;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iflytek/cloud/a/d/c;->a([BII)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_4
    :goto_0
    const-string p1, "writeAudio error,buffer is null."

    .line 12
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 13
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
