.class public final Lcn/mucang/android/jiakaoyi/teachingk2/video/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/video/f;-><init>(Lcom/google/android/exoplayer2/ui/PlayerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayer$task$1",
        "Ljava/lang/Runnable;",
        "idleTime",
        "",
        "getIdleTime",
        "()J",
        "setIdleTime",
        "(J)V",
        "run",
        "",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/video/f;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/f$d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/f$d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/f;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/BasePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/f$d;->a:J

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/f$d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/video/f;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/f$d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/video/f$c;

    .line 5
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/f;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f$c;->a(J)V

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/f$d;->a:J

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/f$d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->a(Lcn/mucang/android/jiakaoyi/teachingk2/video/f;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/f$d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/video/f$c;

    .line 9
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/f;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f$c;->a(J)V

    goto :goto_1

    .line 10
    :cond_1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/f$d;->a:J

    const/16 v2, 0x1f4

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/f$d;->a:J

    :cond_2
    const-wide/16 v0, 0x1f4

    .line 11
    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method
