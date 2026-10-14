.class public Lcn/mucang/android/core/api/cache/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/api/cache/c$a;
    }
.end annotation


# static fields
.field static final h:Lcn/mucang/android/core/api/cache/c;


# instance fields
.field private a:Lcn/mucang/android/core/api/cache/d;

.field private b:Lcn/mucang/android/core/api/cache/g;

.field private c:Lcn/mucang/android/core/api/cache/f;

.field private d:Lcn/mucang/android/core/api/cache/e;

.field private e:Lcn/mucang/android/core/api/cache/CacheMode;

.field private f:J

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/cache/c;

    invoke-direct {v0}, Lcn/mucang/android/core/api/cache/c;-><init>()V

    sput-object v0, Lcn/mucang/android/core/api/cache/c;->h:Lcn/mucang/android/core/api/cache/c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/core/api/cache/c;->g:Z

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/api/cache/c;Lcn/mucang/android/core/api/cache/d;)Lcn/mucang/android/core/api/cache/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/c;->a:Lcn/mucang/android/core/api/cache/d;

    return-object p1
.end method

.method static synthetic b(Lcn/mucang/android/core/api/cache/c;Lcn/mucang/android/core/api/cache/g;)Lcn/mucang/android/core/api/cache/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/c;->b:Lcn/mucang/android/core/api/cache/g;

    return-object p1
.end method

.method static synthetic c(Lcn/mucang/android/core/api/cache/c;Lcn/mucang/android/core/api/cache/f;)Lcn/mucang/android/core/api/cache/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/c;->c:Lcn/mucang/android/core/api/cache/f;

    return-object p1
.end method

.method static synthetic d(Lcn/mucang/android/core/api/cache/c;Lcn/mucang/android/core/api/cache/e;)Lcn/mucang/android/core/api/cache/e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/c;->d:Lcn/mucang/android/core/api/cache/e;

    return-object p1
.end method

.method static synthetic e(Lcn/mucang/android/core/api/cache/c;Lcn/mucang/android/core/api/cache/CacheMode;)Lcn/mucang/android/core/api/cache/CacheMode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/c;->e:Lcn/mucang/android/core/api/cache/CacheMode;

    return-object p1
.end method

.method static synthetic f(Lcn/mucang/android/core/api/cache/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/api/cache/c;->g:Z

    return p1
.end method

.method static synthetic g(Lcn/mucang/android/core/api/cache/c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/api/cache/c;->f:J

    return-wide p1
.end method

.method public static h()Lcn/mucang/android/core/api/cache/c;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/api/cache/h;->a()Lcn/mucang/android/core/api/cache/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/cache/h;->b()Lcn/mucang/android/core/api/cache/impl/d;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/core/api/cache/c;->h:Lcn/mucang/android/core/api/cache/c;

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcn/mucang/android/core/api/cache/c;

    invoke-direct {v1}, Lcn/mucang/android/core/api/cache/c;-><init>()V

    .line 4
    iput-object v0, v1, Lcn/mucang/android/core/api/cache/c;->d:Lcn/mucang/android/core/api/cache/e;

    .line 5
    new-instance v0, Lcn/mucang/android/core/api/cache/impl/a;

    invoke-direct {v0}, Lcn/mucang/android/core/api/cache/impl/a;-><init>()V

    iput-object v0, v1, Lcn/mucang/android/core/api/cache/c;->a:Lcn/mucang/android/core/api/cache/d;

    .line 6
    sget-object v0, Lcn/mucang/android/core/api/cache/CacheMode;->AUTO:Lcn/mucang/android/core/api/cache/CacheMode;

    iput-object v0, v1, Lcn/mucang/android/core/api/cache/c;->e:Lcn/mucang/android/core/api/cache/CacheMode;

    .line 7
    new-instance v0, Lcn/mucang/android/core/api/cache/impl/b;

    invoke-direct {v0}, Lcn/mucang/android/core/api/cache/impl/b;-><init>()V

    iput-object v0, v1, Lcn/mucang/android/core/api/cache/c;->c:Lcn/mucang/android/core/api/cache/f;

    .line 8
    new-instance v0, Lcn/mucang/android/core/api/cache/impl/c;

    invoke-direct {v0}, Lcn/mucang/android/core/api/cache/impl/c;-><init>()V

    iput-object v0, v1, Lcn/mucang/android/core/api/cache/c;->b:Lcn/mucang/android/core/api/cache/g;

    const-wide/16 v2, 0x2710

    .line 9
    iput-wide v2, v1, Lcn/mucang/android/core/api/cache/c;->f:J

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, v1, Lcn/mucang/android/core/api/cache/c;->g:Z

    return-object v1

    .line 11
    :catch_0
    sget-object v0, Lcn/mucang/android/core/api/cache/c;->h:Lcn/mucang/android/core/api/cache/c;

    return-object v0
.end method


# virtual methods
.method public i(Ljava/lang/String;)Lcn/mucang/android/core/api/cache/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c;->d:Lcn/mucang/android/core/api/cache/e;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/core/api/cache/c;->a:Lcn/mucang/android/core/api/cache/d;

    invoke-interface {v1, p1}, Lcn/mucang/android/core/api/cache/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/mucang/android/core/api/cache/e;->a(Ljava/lang/String;)Lcn/mucang/android/core/api/cache/a;

    move-result-object p1

    return-object p1
.end method

.method public j()Lcn/mucang/android/core/api/cache/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c;->a:Lcn/mucang/android/core/api/cache/d;

    return-object v0
.end method

.method public k()Lcn/mucang/android/core/api/cache/CacheMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c;->e:Lcn/mucang/android/core/api/cache/CacheMode;

    return-object v0
.end method

.method public l()Lcn/mucang/android/core/api/cache/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c;->d:Lcn/mucang/android/core/api/cache/e;

    return-object v0
.end method

.method public m()Lcn/mucang/android/core/api/cache/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c;->c:Lcn/mucang/android/core/api/cache/f;

    return-object v0
.end method

.method public n()Lcn/mucang/android/core/api/cache/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c;->b:Lcn/mucang/android/core/api/cache/g;

    return-object v0
.end method

.method public o()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/api/cache/c;->f:J

    return-wide v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/api/cache/c;->g:Z

    return v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c;->d:Lcn/mucang/android/core/api/cache/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/core/api/cache/c;->a:Lcn/mucang/android/core/api/cache/d;

    invoke-interface {v1, p1}, Lcn/mucang/android/core/api/cache/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/mucang/android/core/api/cache/e;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public r(Ljava/lang/String;Lcn/mucang/android/core/api/cache/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c;->a:Lcn/mucang/android/core/api/cache/d;

    invoke-interface {v0, p1}, Lcn/mucang/android/core/api/cache/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c;->d:Lcn/mucang/android/core/api/cache/e;

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/core/api/cache/e;->b(Ljava/lang/String;Lcn/mucang/android/core/api/cache/a;)V

    return-void
.end method
