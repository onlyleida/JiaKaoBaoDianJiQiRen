.class public Lcn/mucang/android/core/api/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/request/d/b;


# instance fields
.field private a:Ljava/util/concurrent/CountDownLatch;

.field private b:Z

.field private c:Ljava/lang/Object;

.field private d:Z

.field private final e:Lcn/mucang/android/core/api/verify/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/core/api/e/b$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/api/e/b$a;-><init>(Lcn/mucang/android/core/api/e/b;)V

    iput-object v0, p0, Lcn/mucang/android/core/api/e/b;->e:Lcn/mucang/android/core/api/verify/f;

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/core/api/e/b;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/e/b;->a:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/core/api/e/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/api/e/b;->b:Z

    return p1
.end method

.method static synthetic d(Lcn/mucang/android/core/api/e/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/e/b;->c:Ljava/lang/Object;

    return-object p1
.end method

.method private e(Lcn/mucang/android/core/api/request/MucangRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/e/b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/MucangRequest;->c()Lcn/mucang/android/core/api/request/e/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/request/e/b;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private f(Lcn/mucang/android/core/api/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/core/api/e/b;->d:Z

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/e/b;->g(Lcn/mucang/android/core/api/ApiResponse;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "\\?"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    .line 5
    invoke-static {v1}, Lf/a/a/a/i/h;->a(Ljava/lang/String;)Lf/a/a/a/i/c;

    move-result-object v1

    .line 6
    instance-of v2, v1, Lcn/mucang/android/core/api/verify/e;

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, Lcn/mucang/android/core/api/verify/e;

    iget-object v0, p0, Lcn/mucang/android/core/api/e/b;->e:Lcn/mucang/android/core/api/verify/f;

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/verify/e;->b(Lcn/mucang/android/core/api/verify/f;)V

    goto :goto_0

    .line 8
    :cond_1
    iput-boolean v0, p0, Lcn/mucang/android/core/api/e/b;->d:Z

    .line 9
    :goto_0
    new-instance v0, Lcn/mucang/android/core/api/e/b$b;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/core/api/e/b$b;-><init>(Lcn/mucang/android/core/api/e/b;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private g(Lcn/mucang/android/core/api/ApiResponse;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "action"

    .line 2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "minVersion"

    .line 3
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "retry"

    .line 5
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lcn/mucang/android/core/api/e/b;->d:Z

    .line 7
    :cond_0
    invoke-static {v0, p1}, Lcn/mucang/android/core/api/verify/ErrorAction;->isActionSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lcn/mucang/android/core/api/ApiResponse;Lcn/mucang/android/core/api/request/MucangRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/ErrorAction;->shouldIntercept(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/e/b;->f(Lcn/mucang/android/core/api/ApiResponse;)V

    .line 3
    iget-boolean v0, p0, Lcn/mucang/android/core/api/e/b;->d:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/core/api/e/b;->a:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcn/mucang/android/core/api/e/b;->b:Z

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 7
    iget-boolean v0, p0, Lcn/mucang/android/core/api/e/b;->b:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-direct {p0, p2}, Lcn/mucang/android/core/api/e/b;->e(Lcn/mucang/android/core/api/request/MucangRequest;)V

    .line 9
    invoke-virtual {p2}, Lcn/mucang/android/core/api/request/MucangRequest;->g()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/ApiResponse;->copyFromOtherResponse(Lcn/mucang/android/core/api/ApiResponse;)V

    nop

    :cond_0
    return-void
.end method
