.class public Lcn/mucang/android/account/g/b;
.super Lcn/mucang/android/core/api/cache/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/cache/b;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/account/g/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/api/request/d/a;

    .line 3
    invoke-virtual {p0, v1}, Lcn/mucang/android/core/api/a;->addRequestInterceptor(Lcn/mucang/android/core/api/request/d/a;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/account/g/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/api/request/d/b;

    .line 5
    invoke-virtual {p0, v1}, Lcn/mucang/android/core/api/a;->addResponseInterceptor(Lcn/mucang/android/core/api/request/d/b;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method protected getApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/account/g/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected getExtraParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/account/g/a;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/account/g/a;->b:Ljava/lang/String;

    return-object v0
.end method
