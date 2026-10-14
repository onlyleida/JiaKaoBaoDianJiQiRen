.class public Lcn/mucang/android/jiakaoyi/framework/utils/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Landroid/os/HandlerThread;

.field private static final g:Landroid/os/Handler;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public b:I

.field private volatile c:Z

.field private d:J

.field private final e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "hear_beat_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->f:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/v;->g:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/v$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/v$a;-><init>(Lcn/mucang/android/jiakaoyi/framework/utils/v;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->e:Ljava/lang/Runnable;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->a:Ljava/lang/Runnable;

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->b:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->c:Z

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/framework/utils/v;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->c:Z

    return p0
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/framework/utils/v;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/framework/utils/v;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->d:J

    return-wide p1
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/framework/utils/v;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->e:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public f(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->b:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/v;->h()V

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->b:I

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/v;->g()V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->c:Z

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->d:J

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public h()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->c:Z

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
