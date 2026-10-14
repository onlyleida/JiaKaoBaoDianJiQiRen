.class public Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

.field private c:Z

.field private final d:Lcn/mucang/android/jiakaoyi/framework/tts/play/f;

.field private final e:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

.field protected f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/framework/tts/play/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->a:Ljava/util/LinkedList;

    .line 3
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->f:Ljava/util/Vector;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->h:Ljava/util/Set;

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m$a;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->i:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    .line 7
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->e:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    .line 8
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/e;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->d:Lcn/mucang/android/jiakaoyi/framework/tts/play/f;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->c:Z

    return p1
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;)Lcn/mucang/android/jiakaoyi/framework/tts/play/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->e:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->u()V

    return-void
.end method

.method private g(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->c:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->d:Lcn/mucang/android/jiakaoyi/framework/tts/play/f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->g(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->u()V

    return-void
.end method

.method private synthetic l(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->f:Ljava/util/Vector;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->v(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method

.method private synthetic n(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->x(Z)V

    return-void
.end method

.method private p(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 2
    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private u()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/h;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/h;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->p(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 7
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    if-eqz v0, :cond_5

    .line 8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->u()V

    return-void

    .line 10
    :cond_4
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->p(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    .line 11
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->g(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    goto :goto_0

    .line 12
    :cond_5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "voice"

    const-string v2, "startLoop "

    .line 14
    invoke-static {v1, v2, v0}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->c:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public d(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->f:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->d:Lcn/mucang/android/jiakaoyi/framework/tts/play/f;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic m(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->l(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method

.method public synthetic o(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->n(Z)V

    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/k;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/k;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->w()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->d:Lcn/mucang/android/jiakaoyi/framework/tts/play/f;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->c()V

    return-void
.end method

.method public r(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public s(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method public t(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->d:Lcn/mucang/android/jiakaoyi/framework/tts/play/f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->f(F)V

    return-void
.end method

.method public v(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->f:Ljava/util/Vector;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/j;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/j;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/framework/a;

    if-eqz v0, :cond_4

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/framework/a;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/a;->n()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->f:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->VoiceRobot:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    if-eq v0, v1, :cond_4

    .line 7
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->g:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/b;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/b;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->f:Ljava/util/Vector;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u5728\u76d1\u542c\u8bed\u97f3\u8f93\u5165\uff0c\u76f4\u63a5\u8fd4\u56de\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/language/a;->b(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    .line 12
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->Padiguli:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->m:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    .line 14
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " currentTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; ttsGrade "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->f:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-nez v0, :cond_6

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_6
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->f:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SynthVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    if-ne v1, v2, :cond_7

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->f:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    if-eq v3, v2, :cond_7

    iget-boolean v2, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->i:Z

    if-eqz v2, :cond_7

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->x(Z)V

    .line 19
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_7
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->f:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    if-eq v2, v3, :cond_8

    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    if-ne v2, v3, :cond_9

    :cond_8
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->getGrade()I

    move-result v1

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->f:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->getGrade()I

    move-result v2

    if-lt v1, v2, :cond_9

    .line 21
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 22
    :cond_9
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->f:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->getGrade()I

    move-result v0

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->f:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->getGrade()I

    move-result v1

    if-gt v0, v1, :cond_a

    .line 23
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->w()V

    .line 24
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->f:Ljava/util/Vector;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 26
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->u()V

    return-void

    .line 27
    :cond_a
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->g:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    if-eqz v0, :cond_b

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/b;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/b;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    .line 29
    :cond_b
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->f:Ljava/util/Vector;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->x(Z)V

    return-void
.end method

.method public x(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/i;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/i;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;Z)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->c:Z

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    .line 6
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->g:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/b;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/b;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->f:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 10
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->d:Lcn/mucang/android/jiakaoyi/framework/tts/play/f;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->h()V

    return-void
.end method
