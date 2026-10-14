.class public Lcn/mucang/android/core/api/request/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/api/request/c$a;
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcn/mucang/android/core/api/request/e/b;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcn/mucang/android/core/api/request/e/c;

.field private j:Lcn/mucang/android/core/http/c/b;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcn/mucang/android/core/api/request/c$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->GET:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    iput-object v0, p0, Lcn/mucang/android/core/api/request/c;->a:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/api/request/c;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/core/api/request/c;->c:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcn/mucang/android/core/api/request/c;->d:Ljava/lang/String;

    return-void
.end method

.method private f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/c;->k:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/api/request/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/api/request/d/a;

    .line 3
    invoke-interface {v1, p0}, Lcn/mucang/android/core/api/request/d/a;->a(Lcn/mucang/android/core/api/request/c;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/c;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/api/request/c;->h:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/api/request/c;->h:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/core/api/request/e/a;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/core/api/request/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b()Lcn/mucang/android/core/api/request/MucangRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcn/mucang/android/core/api/request/c;->f()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/request/c;->m:Lcn/mucang/android/core/api/request/c$a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/core/api/request/a;

    iget-object v2, p0, Lcn/mucang/android/core/api/request/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/core/api/request/c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcn/mucang/android/core/api/request/c;->d:Ljava/lang/String;

    iget-object v5, p0, Lcn/mucang/android/core/api/request/c;->e:Ljava/util/Map;

    iget-object v6, p0, Lcn/mucang/android/core/api/request/c;->f:Ljava/util/Map;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/core/api/request/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 4
    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/core/api/request/c$a;->a()Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v0, Lcn/mucang/android/core/api/request/MucangRequest;

    iget-object v2, p0, Lcn/mucang/android/core/api/request/c;->a:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    iget-object v4, p0, Lcn/mucang/android/core/api/request/c;->g:Lcn/mucang/android/core/api/request/e/b;

    iget-object v5, p0, Lcn/mucang/android/core/api/request/c;->h:Ljava/util/List;

    iget-object v6, p0, Lcn/mucang/android/core/api/request/c;->l:Ljava/util/List;

    iget-object v7, p0, Lcn/mucang/android/core/api/request/c;->i:Lcn/mucang/android/core/api/request/e/c;

    iget-object v8, p0, Lcn/mucang/android/core/api/request/c;->j:Lcn/mucang/android/core/http/c/b;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/core/api/request/MucangRequest;-><init>(Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;Ljava/lang/String;Lcn/mucang/android/core/api/request/e/b;Ljava/util/List;Ljava/util/List;Lcn/mucang/android/core/api/request/e/c;Lcn/mucang/android/core/http/c/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {v1, v0}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()Lcn/mucang/android/core/api/request/e/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/c;->i:Lcn/mucang/android/core/api/request/e/c;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g(Lcn/mucang/android/core/api/request/e/c;)Lcn/mucang/android/core/api/request/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/request/c;->i:Lcn/mucang/android/core/api/request/e/c;

    return-object p0
.end method

.method public h(Ljava/util/Map;)Lcn/mucang/android/core/api/request/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/mucang/android/core/api/request/c;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/request/c;->e:Ljava/util/Map;

    return-object p0
.end method

.method public i(Ljava/util/Map;)Lcn/mucang/android/core/api/request/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/mucang/android/core/api/request/c;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/request/c;->f:Ljava/util/Map;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/request/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public k(Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Lcn/mucang/android/core/api/request/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/request/c;->a:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    return-object p0
.end method

.method public l(Lcn/mucang/android/core/api/request/e/b;)Lcn/mucang/android/core/api/request/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/request/c;->g:Lcn/mucang/android/core/api/request/e/b;

    return-object p0
.end method

.method public m(Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/http/c/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/request/c;->j:Lcn/mucang/android/core/http/c/b;

    return-object p1
.end method

.method public n(Ljava/util/List;)Lcn/mucang/android/core/api/request/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/d/a;",
            ">;)",
            "Lcn/mucang/android/core/api/request/c;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/request/c;->k:Ljava/util/List;

    return-object p0
.end method

.method public o(Ljava/util/List;)Lcn/mucang/android/core/api/request/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/d/b;",
            ">;)",
            "Lcn/mucang/android/core/api/request/c;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/request/c;->l:Ljava/util/List;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/request/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public q(Lcn/mucang/android/core/api/request/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/request/c;->m:Lcn/mucang/android/core/api/request/c$a;

    return-void
.end method
