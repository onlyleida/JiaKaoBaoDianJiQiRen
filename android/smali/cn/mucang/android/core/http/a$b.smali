.class public Lcn/mucang/android/core/http/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/http/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/net/Proxy;

.field private f:Lokhttp3/Authenticator;

.field private g:Lokhttp3/Authenticator;

.field private h:Lcn/mucang/android/core/http/a$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/http/a$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/http/a$b;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcn/mucang/android/core/http/a$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/http/a$b;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcn/mucang/android/core/http/a$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/http/a$b;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcn/mucang/android/core/http/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/http/a$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/core/http/a$b;)Ljava/net/Proxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/http/a$b;->e:Ljava/net/Proxy;

    return-object p0
.end method

.method static synthetic f(Lcn/mucang/android/core/http/a$b;)Lokhttp3/Authenticator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/http/a$b;->f:Lokhttp3/Authenticator;

    return-object p0
.end method

.method static synthetic g(Lcn/mucang/android/core/http/a$b;)Lokhttp3/Authenticator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/http/a$b;->g:Lokhttp3/Authenticator;

    return-object p0
.end method

.method static synthetic h(Lcn/mucang/android/core/http/a$b;)Lcn/mucang/android/core/http/a$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/http/a$b;->h:Lcn/mucang/android/core/http/a$c;

    return-object p0
.end method


# virtual methods
.method public i()Lcn/mucang/android/core/http/a;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/core/http/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/core/http/a;-><init>(Lcn/mucang/android/core/http/a$b;Lcn/mucang/android/core/http/a$a;)V

    return-object v0
.end method

.method public j(Lcn/mucang/android/core/api/request/e/c;)Lcn/mucang/android/core/http/a$b;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/e/c;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/core/http/a$b;->a:J

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/e/c;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/core/http/a$b;->b:J

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/e/c;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/core/http/a$b;->c:J

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/e/c;->i()Z

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/e/c;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/http/a$b;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/e/c;->d()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/http/a$b;->e:Ljava/net/Proxy;

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/e/c;->a()Lokhttp3/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/http/a$b;->f:Lokhttp3/Authenticator;

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/e/c;->e()Lokhttp3/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/http/a$b;->g:Lokhttp3/Authenticator;

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/e/c;->b()Lcn/mucang/android/core/http/a$c;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/http/a$b;->h:Lcn/mucang/android/core/http/a$c;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcn/mucang/android/core/http/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/http/a$b;->d:Ljava/lang/String;

    return-object p0
.end method
