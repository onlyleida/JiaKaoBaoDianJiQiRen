.class public Lcn/mucang/android/jiakaoyi/hpmap/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p0, p3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;IZ)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g;

    invoke-virtual {p5, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    invoke-virtual {p5, p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    invoke-direct {v0, p3, p0, p5}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "DI",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const v0, 0x3f99999a    # 1.2f

    if-eqz p7, :cond_0

    const-string v1, "\u5165\u53e3"

    .line 1
    invoke-virtual {p7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    mul-float v1, v1, v0

    float-to-double v0, v1

    invoke-static {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    sget v1, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    mul-float v1, v1, v0

    float-to-double v0, v1

    invoke-static {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    :goto_0
    if-eqz p8, :cond_1

    .line 4
    new-instance p8, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e;

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    double-to-float p4, p4

    invoke-direct {v1, p4, p6}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;-><init>(FI)V

    .line 5
    invoke-virtual {v1, p7}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->e(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    const/high16 p4, 0x41f00000    # 30.0f

    invoke-virtual {v1, p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->c(F)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    invoke-virtual {v1, p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->d(F)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    iget-object p4, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p5, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    invoke-direct {p8, p3, p0, p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;)V

    .line 6
    invoke-interface {p2, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_1
    new-instance p8, Lcn/mucang/android/jiakaoyi/hpmap/view/p/i;

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    double-to-float p4, p4

    invoke-direct {v1, p4, p6}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;-><init>(FI)V

    invoke-virtual {v1, p7}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    iget-object p4, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p5, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    invoke-direct {p8, p3, p0, p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/i;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;)V

    .line 9
    invoke-interface {p2, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public static d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method

.method public static f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m;

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;

    sget v2, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->b:F

    invoke-direct {v1, v2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;-><init>(FI)V

    invoke-virtual {v1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;

    invoke-virtual {v1, p5}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;

    invoke-direct {v0, p4, p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    mul-double p3, p3, v0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "cm"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    return-object p0
.end method
