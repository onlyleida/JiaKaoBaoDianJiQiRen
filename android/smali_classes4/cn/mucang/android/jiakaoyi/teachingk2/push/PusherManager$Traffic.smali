.class public final Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Traffic"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0006H\u0002J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u0006\u0010\u0016\u001a\u00020\u0014J\u0008\u0010\u0017\u001a\u00020\u0014H\u0002J\u0008\u0010\u0018\u001a\u00020\u0014H\u0002J\u0006\u0010\u0019\u001a\u00020\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;",
        "",
        "()V",
        "job",
        "Lkotlinx/coroutines/Job;",
        "keyFrameSize",
        "",
        "keyUploadSize",
        "lastTotalFrames",
        "",
        "statBitrateCount",
        "",
        "statFpsCount",
        "todayUploadSize",
        "uploadSize",
        "videoCaptureFps",
        "videoUploadBitrate",
        "getTodaySize",
        "key",
        "putTodaySize",
        "",
        "size",
        "start",
        "statPushStatsInfo",
        "statTraffic",
        "stop",
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
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:Lkotlinx/coroutines/t1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_pusher_today_upload_size"

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->h:J

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->b:J

    return-wide v0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->f:I

    return p0
.end method

.method public static final synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->d:I

    return p0
.end method

.method public static final synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->c:J

    return-wide v0
.end method

.method public static final synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->e:I

    return p0
.end method

.method public static final synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->g:I

    return p0
.end method

.method public static final synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->b:J

    return-void
.end method

.method public static final synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->f:I

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->d:I

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->c:J

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->e:I

    return-void
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->g:I

    return-void
.end method

.method public static final synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->r()V

    return-void
.end method

.method public static final synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->s()V

    return-void
.end method

.method private final o(Ljava/lang/String;)J
    .locals 10

    const-string v0, ""

    .line 1
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "string"

    .line 2
    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-wide/16 v8, 0x0

    if-eqz p1, :cond_3

    const-string p1, "#"

    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/l;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-static {p1, v7}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {p1, v0}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    :goto_1
    move-wide v2, v8

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lkotlin/text/l;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 6
    :goto_2
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-wide v2

    :cond_3
    return-wide v8
.end method

.method private final p(Ljava/lang/String;J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final r()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->h:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->o(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->h:J

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->e()Lkotlinx/coroutines/i0;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic$statPushStatsInfo$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic$statPushStatsInfo$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_0
    return-void
.end method

.method private final s()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->h:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->h:J

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->e:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->d:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lkotlin/a0/d;->b(II)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\n15\u5206\u949f\u5185\u5e73\u5747\u5e27\u7387\uff1a"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n15\u5206\u949f\u5185\u5e73\u5747\u7801\u7387\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->g:I

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->f:I

    invoke-static {v4, v3}, Lkotlin/a0/d;->b(II)I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "kb/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->c:J

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n15\u5206\u949f\u5185\u4e0a\u4f20\u6d41\u91cf\uff1a"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->h:J

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n\u4eca\u65e5\u4e0a\u4f20\u6d41\u91cf\uff1a"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->e:I

    .line 8
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->g:I

    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->c:J

    .line 10
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->d:I

    .line 11
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->f:I

    const-string v1, "\u963f\u91cc\u63a8\u6d41\u9636\u6bb5\u4fe1\u606f|"

    .line 12
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->h:J

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->p(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final q()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->i:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->e()Lkotlinx/coroutines/i0;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic$start$1;

    invoke-direct {v6, p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic$start$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;Lkotlin/coroutines/c;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->i:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->i:Lkotlinx/coroutines/t1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->s()V

    return-void
.end method
