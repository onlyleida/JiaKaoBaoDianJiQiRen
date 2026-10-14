.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)[Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 8

    .line 1
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->isValid(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->isValid(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->isValid(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->isValid(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 3
    invoke-interface {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 4
    invoke-interface {v0, p3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p3

    .line 5
    invoke-interface {v0, p4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    .line 6
    invoke-interface {v0, p5}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p5

    const-wide/high16 v1, 0x402e000000000000L    # 15.0

    .line 7
    invoke-static {p3, p2, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 8
    invoke-static {p4, p5, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 9
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->isValid(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    const-wide v4, 0x4062c00000000000L    # 150.0

    .line 11
    invoke-static {v1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 12
    invoke-interface {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 13
    :cond_1
    invoke-static {p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->isValid(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 14
    new-instance p6, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    const-wide v4, 0x407f400000000000L    # 500.0

    .line 15
    invoke-static {v3, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 16
    invoke-interface {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v2

    invoke-virtual {p6, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    :cond_2
    const-wide v4, 0x4074f00000000000L    # 335.0

    .line 17
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->isValid(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-interface {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 19
    invoke-static {v2, v1, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    .line 20
    :cond_3
    invoke-static {p7}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->isValid(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21
    invoke-interface {v0, p7}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 22
    invoke-static {v2, v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    .line 23
    :cond_4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v1, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p3

    new-instance p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p4, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p2

    .line 24
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->isValid(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 25
    new-instance p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    .line 26
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    .line 27
    new-instance p5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p5, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v1, v1, v4

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    invoke-virtual {p5, v1, v2, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    .line 28
    invoke-interface {v0, p4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 29
    :cond_5
    invoke-static {p7}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->isValid(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z

    move-result p4

    if-nez p4, :cond_6

    .line 30
    new-instance p7, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {p7}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    .line 31
    invoke-interface {v0, p6}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    .line 32
    new-instance p5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p5, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v1, v1, v4

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double v4, v4, p2

    invoke-virtual {p5, v1, v2, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 33
    invoke-interface {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p2

    invoke-virtual {p7, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    :cond_6
    const/4 p2, 0x4

    new-array p2, p2, [Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    const/4 p0, 0x1

    aput-object p1, p2, p0

    const/4 p0, 0x2

    aput-object p6, p2, p0

    const/4 p0, 0x3

    aput-object p7, p2, p0

    return-object p2

    :cond_7
    :goto_0
    const-string p0, "\u8bf7\u5148\u91c7\u96c6\u5e93\u4f4d\u76843\u30014\u30015\u30016\u70b9"

    .line 34
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
