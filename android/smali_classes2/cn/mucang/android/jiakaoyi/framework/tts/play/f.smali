.class public Lcn/mucang/android/jiakaoyi/framework/tts/play/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;
    }
.end annotation


# instance fields
.field private volatile a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

.field private volatile b:Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;

.field private final c:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

.field private d:F

.field private final e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->e:Ljava/util/concurrent/ExecutorService;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->c:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->d:F

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/framework/tts/play/f;)Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/framework/tts/play/f;)Lcn/mucang/android/jiakaoyi/framework/tts/play/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->c:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    return-object p0
.end method

.method private d(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->k()V

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/f;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Lcn/mucang/android/jiakaoyi/framework/tts/play/f$a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->d:F

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->j(F)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->e:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->h()V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->d:F

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->j(F)V

    :cond_0
    return-void
.end method

.method public g(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->d(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->k()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;

    return-void
.end method
