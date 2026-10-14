.class public Lcn/mucang/android/core/api/request/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/net/Proxy;

.field private g:Lokhttp3/Authenticator;

.field private h:Lokhttp3/Authenticator;

.field private i:Lcn/mucang/android/core/http/a$c;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/core/api/request/e/c;->a:J

    .line 3
    iput-wide p3, p0, Lcn/mucang/android/core/api/request/e/c;->b:J

    .line 4
    iput-wide p5, p0, Lcn/mucang/android/core/api/request/e/c;->c:J

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/Authenticator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/e/c;->g:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public b()Lcn/mucang/android/core/http/a$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/e/c;->i:Lcn/mucang/android/core/http/a$c;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/api/request/e/c;->a:J

    return-wide v0
.end method

.method public d()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/e/c;->f:Ljava/net/Proxy;

    return-object v0
.end method

.method public e()Lokhttp3/Authenticator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/e/c;->h:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/api/request/e/c;->b:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/e/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/api/request/e/c;->c:J

    return-wide v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/api/request/e/c;->d:Z

    return v0
.end method

.method public j(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/api/request/e/c;->b:J

    return-void
.end method
