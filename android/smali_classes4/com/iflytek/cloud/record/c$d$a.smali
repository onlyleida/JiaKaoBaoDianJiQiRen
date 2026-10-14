.class Lcom/iflytek/cloud/record/c$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/cloud/record/c$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/record/c$d;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/record/c$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/record/c$d$a;->a:Lcom/iflytek/cloud/record/c$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 1

    const-string p1, "PcmPlayer onMarkerReached"

    .line 1
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/iflytek/cloud/record/c$d$a;->a:Lcom/iflytek/cloud/record/c$d;

    iget-object p1, p1, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    iget-object p1, p1, Lcom/iflytek/cloud/record/c;->B:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/cloud/record/c$d$a;->a:Lcom/iflytek/cloud/record/c$d;

    iget-object p1, p1, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    iget-object p1, p1, Lcom/iflytek/cloud/record/c;->C:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lcom/iflytek/cloud/record/c$d$a;->a:Lcom/iflytek/cloud/record/c$d;

    iget-object p1, p1, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    iget-object p1, p1, Lcom/iflytek/cloud/record/c;->B:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$d$a;->a:Lcom/iflytek/cloud/record/c$d;

    iget-object v0, v0, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    iget-object v0, v0, Lcom/iflytek/cloud/record/c;->B:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5
    throw p1

    .line 6
    :catch_0
    iget-object p1, p0, Lcom/iflytek/cloud/record/c$d$a;->a:Lcom/iflytek/cloud/record/c$d;

    iget-object p1, p1, Lcom/iflytek/cloud/record/c$d;->b:Lcom/iflytek/cloud/record/c;

    iget-object p1, p1, Lcom/iflytek/cloud/record/c;->B:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0

    return-void
.end method
