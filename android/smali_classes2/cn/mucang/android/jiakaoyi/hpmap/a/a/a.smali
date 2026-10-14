.class public final synthetic Lcn/mucang/android/jiakaoyi/hpmap/a/a/a;
.super Ljava/lang/Object;
.source "BoundDetector.java"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2
    .param p0, "_this"    # Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->k()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->k()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->b()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->b()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    return-object v0
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static c(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/hpmap/c/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static d(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static e(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 1
    .param p0, "_this"    # Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->n()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->l(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1
.end method

.method public static f(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 1
    .param p0, "_this"    # Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->n()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1
.end method

.method public static g(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 1
    .param p0, "_this"    # Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->n()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1
.end method

.method public static h(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 2
    .param p0, "_this"    # Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->o()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->o()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->n(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1
.end method

.method public static i(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static j(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method
