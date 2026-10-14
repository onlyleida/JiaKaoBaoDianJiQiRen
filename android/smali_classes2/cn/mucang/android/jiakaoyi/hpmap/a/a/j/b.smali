.class public Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;,
        Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;
    }
.end annotation


# static fields
.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:I

.field private volatile c:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

.field private final e:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

.field private final f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

.field private final g:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

.field private volatile h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->i:Ljava/util/Map;

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->c:Ljava/lang/ref/Reference;

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$a;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$a;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->e:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$a;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$a;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    .line 8
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->h:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AskTag-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->b:I

    return p1
.end method

.method public static d()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->i:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;-><init>(I)V

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method private synthetic p(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V
    .locals 1

    .line 1
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-interface {p1, p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;->d(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method public static u(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    invoke-virtual {v1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->s(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public b(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->l()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->k()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->g(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->e()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object v0

    if-eqz v0, :cond_a

    if-eq v0, p1, :cond_a

    .line 5
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v2, v0, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->e:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->e()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_6

    .line 7
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->e:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->g(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->g(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->e()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object v0

    if-eq v0, p1, :cond_a

    if-eqz v0, :cond_9

    goto :goto_0

    .line 10
    :cond_9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->h(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V

    .line 11
    iput v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->b:I

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->c:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_a

    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;

    if-eqz v0, :cond_a

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/a;

    invoke-direct {v1, p0, v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->b:I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->b()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->b()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->e:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->b()V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->b()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->h:Ljava/util/List;

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->a()Z

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->b:I

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->e:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->i(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->c()V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->j()Z

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->i(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->i(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->b()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->e:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->i(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;)V

    return-void
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->h:Ljava/util/List;

    return-object v0
.end method

.method public i()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->e()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->f()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->d(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)Z

    move-result p1

    return p1
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->c:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic q(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->p(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V

    return-void
.end method

.method public r(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->h(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V

    return-void
.end method

.method public s(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->h:Ljava/util/List;

    return-void
.end method

.method public t(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->c:Ljava/lang/ref/Reference;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->c:Ljava/lang/ref/Reference;

    :goto_0
    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->b:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->e:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->b()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->b()V

    .line 4
    iput v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->b:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->b:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->e:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->b()V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$c;->b()V

    .line 8
    iput v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->b:I

    :cond_1
    :goto_0
    return-void
.end method
