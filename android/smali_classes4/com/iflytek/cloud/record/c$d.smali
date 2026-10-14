.class Lcom/iflytek/cloud/record/c$d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/record/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/iflytek/cloud/record/c;


# direct methods
.method private constructor <init>(Lcom/iflytek/cloud/record/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/iflytek/cloud/record/c;->k(Lcom/iflytek/cloud/record/c;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/cloud/record/c$d;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/record/c$d;-><init>(Lcom/iflytek/cloud/record/c;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/iflytek/cloud/record/c$d;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/iflytek/cloud/record/c$d;->a:I

    return-void
.end method

.method public run()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    :try_start_0
    const-string v3, "PcmPlayer"

    const-string v4, "start player"

    .line 1
    invoke-static {v3, v4}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v3, "PcmPlayer"

    .line 2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAudioFocus= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v5}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v4}, Lcom/iflytek/cloud/record/c;->n(Lcom/iflytek/cloud/record/c;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    iget-object v5, v5, Lcom/iflytek/cloud/record/c;->D:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v3, v4, v5}, Lcom/iflytek/cloud/msc/util/g;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v4}, Lcom/iflytek/cloud/record/c;->n(Lcom/iflytek/cloud/record/c;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/iflytek/cloud/msc/util/g;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->o(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/cloud/record/b;->a()V

    .line 7
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->p(Lcom/iflytek/cloud/record/c;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 8
    :try_start_2
    iget-object v4, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v4}, Lcom/iflytek/cloud/record/c;->q(Lcom/iflytek/cloud/record/c;)I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v4, v2, :cond_1

    iget-object v4, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v4}, Lcom/iflytek/cloud/record/c;->q(Lcom/iflytek/cloud/record/c;)I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 9
    iget-object v4, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v4, v6}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;I)I

    .line 10
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 11
    :try_start_3
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v3}, Lcom/iflytek/cloud/record/c;->i()V

    .line 12
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->r(Lcom/iflytek/cloud/record/c;)V

    .line 13
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->q(Lcom/iflytek/cloud/record/c;)I

    move-result v3

    const-wide/16 v7, 0x5

    const/4 v4, 0x1

    if-eq v3, v6, :cond_6

    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->q(Lcom/iflytek/cloud/record/c;)I

    move-result v3

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->c(Lcom/iflytek/cloud/record/c;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->q(Lcom/iflytek/cloud/record/c;)I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 15
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    if-eq v6, v3, :cond_4

    .line 16
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->pause()V

    const-string v3, "pause done"

    .line 17
    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 18
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 19
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->c(Lcom/iflytek/cloud/record/c;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 20
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v3}, Lcom/iflytek/cloud/record/c;->h()V

    .line 21
    :cond_4
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 22
    :cond_5
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->q(Lcom/iflytek/cloud/record/c;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 23
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v3}, Lcom/iflytek/cloud/record/c;->h()V

    goto/16 :goto_7

    .line 24
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->o(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/cloud/record/b;->l()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 25
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3, v4, v6}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 26
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    const-string v3, "BUFFERING to PLAYING  fading "

    .line 27
    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 28
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v3}, Lcom/iflytek/cloud/record/c;->i()V

    .line 29
    :cond_7
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->o(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/cloud/record/b;->g()I

    move-result v3

    .line 30
    iget-object v4, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v4}, Lcom/iflytek/cloud/record/c;->o(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/cloud/record/b;->f()Lcom/iflytek/cloud/record/b$a;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 31
    iget-object v7, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    iget v8, v4, Lcom/iflytek/cloud/record/b$a;->d:I

    invoke-static {v7, v8}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;I)I

    .line 32
    iget-object v7, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v7}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v7

    iget v4, v4, Lcom/iflytek/cloud/record/b$a;->c:I

    invoke-static {v7, v5, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 33
    :cond_8
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    if-eq v3, v5, :cond_9

    .line 34
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    .line 35
    :cond_9
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 36
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->o(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/cloud/record/b;->j()Z

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    .line 37
    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->o(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v3

    iget-object v7, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v7}, Lcom/iflytek/cloud/record/c;->h(Lcom/iflytek/cloud/record/c;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/iflytek/cloud/record/b;->a(I)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    .line 38
    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->i(Lcom/iflytek/cloud/record/c;)F

    move-result v3

    const/4 v7, 0x0

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_a

    const-string v3, "no more size  fading "

    .line 39
    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 40
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v3}, Lcom/iflytek/cloud/record/c;->j()V

    goto :goto_3

    .line 41
    :cond_a
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->q(Lcom/iflytek/cloud/record/c;)I

    move-result v3

    if-ne v6, v3, :cond_c

    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    .line 42
    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->o(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/cloud/record/b;->j()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->o(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v3

    iget-object v7, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v7}, Lcom/iflytek/cloud/record/c;->h(Lcom/iflytek/cloud/record/c;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/iflytek/cloud/record/b;->a(I)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    .line 43
    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->i(Lcom/iflytek/cloud/record/c;)F

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_c

    const-string v3, "has buffer  fading "

    .line 44
    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v3}, Lcom/iflytek/cloud/record/c;->i()V

    .line 46
    :cond_c
    :goto_3
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->c(Lcom/iflytek/cloud/record/c;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 47
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v3}, Lcom/iflytek/cloud/record/c;->b()V

    .line 48
    :cond_d
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->o(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v4}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v4

    iget-object v7, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v7}, Lcom/iflytek/cloud/record/c;->j(Lcom/iflytek/cloud/record/c;)I

    move-result v7

    invoke-virtual {v3, v4, v7}, Lcom/iflytek/cloud/record/b;->a(Landroid/media/AudioTrack;I)V

    goto/16 :goto_1

    .line 49
    :cond_e
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->o(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/cloud/record/b;->k()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "play stoped"

    .line 50
    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 51
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v3

    .line 52
    iget-object v4, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v4}, Lcom/iflytek/cloud/record/c;->o(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/cloud/record/b;->i()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    long-to-int v5, v4

    if-le v5, v3, :cond_f

    .line 53
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    iget-object v3, v3, Lcom/iflytek/cloud/record/c;->B:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 54
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    const-string v3, "PcmPlayer setNotificationMarkerPosition"

    .line 55
    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v3

    new-instance v4, Lcom/iflytek/cloud/record/c$d$a;

    invoke-direct {v4, p0}, Lcom/iflytek/cloud/record/c$d$a;-><init>(Lcom/iflytek/cloud/record/c$d;)V

    invoke-virtual {v3, v4}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 57
    :try_start_4
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    iget-object v3, v3, Lcom/iflytek/cloud/record/c;->C:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 58
    :try_start_5
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    iget-object v3, v3, Lcom/iflytek/cloud/record/c;->B:Ljava/util/concurrent/locks/ReentrantLock;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_0
    move-exception v3

    goto :goto_5

    :catch_0
    move-exception v3

    :try_start_6
    const-string v4, "pcmplayer interrupted"

    .line 59
    invoke-static {v4}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 61
    :try_start_7
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    iget-object v3, v3, Lcom/iflytek/cloud/record/c;->B:Ljava/util/concurrent/locks/ReentrantLock;

    .line 62
    :goto_4
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_6

    .line 63
    :goto_5
    iget-object v4, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    iget-object v4, v4, Lcom/iflytek/cloud/record/c;->B:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 64
    throw v3

    .line 65
    :cond_f
    :goto_6
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->p(Lcom/iflytek/cloud/record/c;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 66
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pcmplayer isover stop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v5}, Lcom/iflytek/cloud/record/c;->q(Lcom/iflytek/cloud/record/c;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 67
    iget-object v4, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v4}, Lcom/iflytek/cloud/record/c;->q(Lcom/iflytek/cloud/record/c;)I

    move-result v4

    if-eq v4, v2, :cond_10

    .line 68
    iget-object v4, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v4, v2}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;I)I

    .line 69
    iget-object v4, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v4}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 70
    :cond_10
    iget-object v4, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v4, v0}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;Z)Z

    .line 71
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 72
    :goto_7
    :try_start_9
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 73
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 74
    :cond_11
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->p(Lcom/iflytek/cloud/record/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 75
    :try_start_a
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3, v2}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;I)I

    .line 76
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 77
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 78
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 79
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v0, v1}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    .line 80
    :cond_12
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_8

    :catchall_1
    move-exception v1

    .line 81
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v1

    :catchall_2
    move-exception v4

    .line 82
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v4

    .line 83
    :cond_13
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->c(Lcom/iflytek/cloud/record/c;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 84
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3, v0}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;Z)Z

    goto/16 :goto_1

    .line 85
    :cond_14
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3, v6, v4}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;II)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "play onpaused!"

    .line 86
    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 88
    :cond_15
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto/16 :goto_1

    :catchall_3
    move-exception v4

    .line 89
    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move-exception v3

    .line 90
    :try_start_10
    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 91
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/iflytek/cloud/SpeechError;

    const/16 v5, 0x4e2b

    invoke-direct {v4, v5}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-static {v3, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 93
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->p(Lcom/iflytek/cloud/record/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 94
    :try_start_11
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3, v2}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;I)I

    .line 95
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 96
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 97
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 98
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v0, v1}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    .line 99
    :cond_16
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 100
    :goto_8
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->n(Lcom/iflytek/cloud/record/c;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    iget-object v3, v3, Lcom/iflytek/cloud/record/c;->D:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v0, v2, v3}, Lcom/iflytek/cloud/msc/util/g;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    goto :goto_9

    .line 101
    :cond_17
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->n(Lcom/iflytek/cloud/record/c;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/iflytek/cloud/msc/util/g;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    .line 102
    :goto_9
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v0, v1}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$d;)Lcom/iflytek/cloud/record/c$d;

    const-string v0, "PcmPlayer"

    const-string v1, "player stopped"

    .line 103
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_5
    move-exception v1

    .line 104
    :try_start_12
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v1

    .line 105
    :goto_a
    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->p(Lcom/iflytek/cloud/record/c;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 106
    :try_start_13
    iget-object v4, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v4, v2}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;I)I

    .line 107
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 108
    iget-object v2, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 109
    iget-object v2, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 110
    iget-object v2, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v2, v1}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    .line 111
    :cond_18
    iget-object v2, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 112
    iget-object v2, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->n(Lcom/iflytek/cloud/record/c;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    iget-object v4, v4, Lcom/iflytek/cloud/record/c;->D:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v2, v3, v4}, Lcom/iflytek/cloud/msc/util/g;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    goto :goto_b

    .line 113
    :cond_19
    iget-object v2, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v3}, Lcom/iflytek/cloud/record/c;->n(Lcom/iflytek/cloud/record/c;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/iflytek/cloud/msc/util/g;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    .line 114
    :goto_b
    iget-object v2, p0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    invoke-static {v2, v1}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$d;)Lcom/iflytek/cloud/record/c$d;

    const-string v1, "PcmPlayer"

    const-string v2, "player stopped"

    .line 115
    invoke-static {v1, v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    throw v0

    :catchall_6
    move-exception v0

    .line 117
    :try_start_14
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    throw v0
.end method
