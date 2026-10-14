.class Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/tts/play/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->b(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;)Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->b(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;)Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/e;->a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->b(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;)Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/e;->a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->c(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;)V

    return-void
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->g:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f;->onSpeakPaused()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->g:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f;->onSpeakResumed()V

    :cond_0
    return-void
.end method

.method private synthetic i(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->b(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;)Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->b(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;)Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/e;->d(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->g:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f;->onSpeakBegin()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;Z)Z

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->g:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/a;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/a;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->f:Ljava/util/Vector;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    const/4 v0, 0x0

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/e;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/e;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/c;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/c;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/f;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/f;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/g;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/g;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;Z)Z

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/d;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/d;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic f()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->e()V

    return-void
.end method

.method public synthetic j(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;->i(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method
