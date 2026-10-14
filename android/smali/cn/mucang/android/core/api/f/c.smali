.class public Lcn/mucang/android/core/api/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/api/f/c$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/core/api/f/a;->g()Lcn/mucang/android/core/api/f/a;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/api/f/b;->e()Lcn/mucang/android/core/api/f/b;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p2}, Lcn/mucang/android/core/api/f/b;->k(Ljava/util/Map;)Lcn/mucang/android/core/api/f/b;

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/f/a;->l(Lcn/mucang/android/core/api/f/b;)Lcn/mucang/android/core/api/f/a;

    .line 5
    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/f/a;->b(Ljava/util/Map;)Lcn/mucang/android/core/api/f/a;

    .line 6
    invoke-virtual {v0, p0}, Lcn/mucang/android/core/api/f/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p3, p2, p4}, Lcn/mucang/android/core/api/f/c;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    invoke-virtual {p0, p1, p3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/core/api/f/g;->c(Ljava/lang/String;)Lcn/mucang/android/core/api/f/g;

    move-result-object p2

    const/4 p3, 0x1

    .line 5
    invoke-virtual {p2, p3}, Lcn/mucang/android/core/api/f/g;->e(Z)Lcn/mucang/android/core/api/f/g;

    .line 6
    invoke-virtual {p2, p4}, Lcn/mucang/android/core/api/f/g;->f(Lorg/json/JSONObject;)Lcn/mucang/android/core/api/f/g;

    invoke-virtual {p2}, Lcn/mucang/android/core/api/f/g;->b()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    invoke-virtual {p0, p1, p3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 5
    invoke-virtual {v1}, Lcn/mucang/android/core/http/MucangNameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcn/mucang/android/core/http/MucangNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p0, v0}, Lcn/mucang/android/core/api/f/c;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->c(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/api/f/g;->c(Ljava/lang/String;)Lcn/mucang/android/core/api/f/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/api/f/g;->f(Lorg/json/JSONObject;)Lcn/mucang/android/core/api/f/g;

    invoke-virtual {p0}, Lcn/mucang/android/core/api/f/g;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/api/f/g;->c(Ljava/lang/String;)Lcn/mucang/android/core/api/f/g;

    move-result-object p0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/api/f/a;->g()Lcn/mucang/android/core/api/f/a;

    move-result-object v0

    .line 3
    invoke-static {}, Lcn/mucang/android/core/api/f/b;->e()Lcn/mucang/android/core/api/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/core/api/f/b;->j()Lcn/mucang/android/core/api/f/b;

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/f/a;->l(Lcn/mucang/android/core/api/f/b;)Lcn/mucang/android/core/api/f/a;

    .line 5
    invoke-virtual {p0, v0}, Lcn/mucang/android/core/api/f/g;->d(Lcn/mucang/android/core/api/f/a;)Lcn/mucang/android/core/api/f/g;

    .line 6
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/api/f/g;->f(Lorg/json/JSONObject;)Lcn/mucang/android/core/api/f/g;

    invoke-virtual {p0}, Lcn/mucang/android/core/api/f/g;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;Lcn/mucang/android/core/api/f/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/core/api/f/a;->k(Ljava/lang/String;Lcn/mucang/android/core/api/f/c$a;)V

    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/api/f/a;->m(Ljava/lang/String;)V

    return-void
.end method
