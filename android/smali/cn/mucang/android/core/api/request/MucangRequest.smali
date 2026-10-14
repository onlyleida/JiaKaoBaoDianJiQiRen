.class public final Lcn/mucang/android/core/api/request/MucangRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

.field private final b:Ljava/lang/String;

.field private final c:Lcn/mucang/android/core/api/request/e/b;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcn/mucang/android/core/api/request/e/c;

.field private final f:Lcn/mucang/android/core/http/c/b;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;Ljava/lang/String;Lcn/mucang/android/core/api/request/e/b;Ljava/util/List;Ljava/util/List;Lcn/mucang/android/core/api/request/e/c;Lcn/mucang/android/core/http/c/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;",
            "Ljava/lang/String;",
            "Lcn/mucang/android/core/api/request/e/b;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/d/b;",
            ">;",
            "Lcn/mucang/android/core/api/request/e/c;",
            "Lcn/mucang/android/core/http/c/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/api/request/MucangRequest;->a:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/core/api/request/MucangRequest;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/core/api/request/MucangRequest;->c:Lcn/mucang/android/core/api/request/e/b;

    .line 5
    invoke-static {p4}, Lcn/mucang/android/core/utils/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/api/request/MucangRequest;->d:Ljava/util/List;

    .line 6
    iput-object p6, p0, Lcn/mucang/android/core/api/request/MucangRequest;->e:Lcn/mucang/android/core/api/request/e/c;

    .line 7
    invoke-static {p5}, Lcn/mucang/android/core/utils/g;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/api/request/MucangRequest;->g:Ljava/util/List;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/core/api/request/MucangRequest;->f:Lcn/mucang/android/core/http/c/b;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/MucangRequest;->a:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    sget-object v1, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->GET:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/api/request/MucangRequest;->b()Lcn/mucang/android/core/http/a;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/api/request/MucangRequest;->d:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/core/http/a;->o(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->POST:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/core/api/request/MucangRequest;->b()Lcn/mucang/android/core/http/a;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/api/request/MucangRequest;->c:Lcn/mucang/android/core/api/request/e/b;

    iget-object v2, p0, Lcn/mucang/android/core/api/request/MucangRequest;->d:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/core/api/request/MucangRequest;->f:Lcn/mucang/android/core/http/c/b;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcn/mucang/android/core/http/a;->A(Ljava/lang/String;Lcn/mucang/android/core/api/request/e/b;Ljava/util/List;Lcn/mucang/android/core/http/c/b;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private b()Lcn/mucang/android/core/http/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/MucangRequest;->e:Lcn/mucang/android/core/api/request/e/c;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/http/a;->q()Lcn/mucang/android/core/http/a;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcn/mucang/android/core/http/a$b;

    invoke-direct {v1}, Lcn/mucang/android/core/http/a$b;-><init>()V

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/http/a$b;->j(Lcn/mucang/android/core/api/request/e/c;)Lcn/mucang/android/core/http/a$b;

    invoke-virtual {v1}, Lcn/mucang/android/core/http/a$b;->i()Lcn/mucang/android/core/http/a;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcn/mucang/android/core/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/MucangRequest;->g:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/api/request/MucangRequest;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/api/request/d/b;

    .line 3
    invoke-interface {v1, p1, p0}, Lcn/mucang/android/core/api/request/d/b;->a(Lcn/mucang/android/core/api/ApiResponse;Lcn/mucang/android/core/api/request/MucangRequest;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f(Ljava/lang/String;I)Lcn/mucang/android/core/api/ApiResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    const/4 v1, 0x0

    .line 1
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/core/api/ApiResponse;

    invoke-direct {v1, v0}, Lcn/mucang/android/core/api/ApiResponse;-><init>(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 3
    new-instance p2, Lcn/mucang/android/core/api/ApiResponse;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1}, Lcn/mucang/android/core/api/ApiResponse;-><init>(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    return-object p2

    .line 4
    :cond_0
    throw v0
.end method


# virtual methods
.method public c()Lcn/mucang/android/core/api/request/e/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/MucangRequest;->c:Lcn/mucang/android/core/api/request/e/b;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/MucangRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcn/mucang/android/core/api/ApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/api/request/MucangRequest;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/mucang/android/core/api/request/MucangRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/core/api/exception/HttpException;->getHttpStatusCode()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x130

    if-eq v1, v3, :cond_0

    move v0, v1

    move-object v1, v2

    .line 5
    :goto_0
    :try_start_1
    invoke-direct {p0, v1, v0}, Lcn/mucang/android/core/api/request/MucangRequest;->f(Ljava/lang/String;I)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/request/MucangRequest;->e(Lcn/mucang/android/core/api/ApiResponse;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 7
    new-instance v1, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {v1, v0}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    .line 8
    :goto_1
    throw v0

    :catch_5
    move-exception v0

    .line 9
    new-instance v1, Lcn/mucang/android/core/api/exception/HttpException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/core/api/exception/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 10
    :cond_0
    throw v0

    :catch_6
    move-exception v0

    .line 11
    new-instance v1, Lcn/mucang/android/core/api/exception/HttpException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/core/api/exception/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/MucangRequest;->b:Ljava/lang/String;

    invoke-static {v0}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcn/mucang/android/core/api/exception/InternalException;

    const-string v1, "network operation not permitted."

    invoke-direct {v0, v1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
