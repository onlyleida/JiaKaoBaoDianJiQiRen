.class public Lcn/mucang/android/jiakaoyi/mapcollect/b/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/b/b/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/b/b/b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->v:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->getZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->v:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->getZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->xy:Ljava/lang/String;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/engine/trace/upload/c;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/c;-><init>()V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->a:Ljava/lang/String;

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/s/j;->k(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/c;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->p:Landroidx/lifecycle/z;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v1, "Trace"

    const-string v2, "\u5730\u56fe check \u63a5\u53e3\u51fa\u9519\u6216\u5730\u56fe\u4e0d\u5b58\u5728"

    .line 6
    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 11
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 12
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 21
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_1

    .line 22
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 25
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_2
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    .line 27
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 28
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 29
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 38
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_3

    .line 39
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 42
    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    :cond_4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;

    .line 44
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 45
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 46
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 48
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints(Ljava/util/List;)V

    .line 49
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_5

    .line 50
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 53
    :cond_5
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 54
    :cond_6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    .line 55
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 56
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 57
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v5, :cond_7

    .line 66
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_7
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 71
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_8

    .line 72
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 75
    :cond_8
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 76
    :cond_9
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;

    .line 77
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 78
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 79
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 86
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_a

    .line 87
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 90
    :cond_a
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 91
    :cond_b
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/i;

    .line 92
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 93
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 94
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/i;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/i;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/i;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/i;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/i;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/i;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QuKa:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 101
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/i;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_c

    .line 102
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/i;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 105
    :cond_c
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 106
    :cond_d
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    .line 107
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 108
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 109
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 114
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_e

    .line 115
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 118
    :cond_e
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 119
    :cond_f
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;

    .line 120
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 121
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 122
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 127
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_10

    .line 128
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 131
    :cond_10
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 132
    :cond_11
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;

    .line 133
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 134
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 135
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 142
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_12

    .line 143
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 146
    :cond_12
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 147
    :cond_13
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;

    .line 148
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 149
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 150
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 151
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints(Ljava/util/List;)V

    .line 152
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->j:Ljava/util/List;

    invoke-static {v6}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 153
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->j:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints2(Ljava/util/List;)V

    .line 154
    :cond_14
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_15

    .line 155
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 158
    :cond_15
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 159
    :cond_16
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;

    .line 160
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 161
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 162
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 168
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints(Ljava/util/List;)V

    .line 169
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->j:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints2(Ljava/util/List;)V

    .line 170
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_17

    .line 171
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 174
    :cond_17
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 175
    :cond_18
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/a;

    .line 176
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 177
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 178
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/a;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/a;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/a;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/a;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_BianXianShiBie:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 183
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/a;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_19

    .line 184
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/a;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 187
    :cond_19
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 188
    :cond_1a
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/e;

    .line 189
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 190
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 191
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/e;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/e;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/e;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/e;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/e;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/e;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ETC:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 198
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/e;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_1b

    .line 199
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/e;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 202
    :cond_1b
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 203
    :cond_1c
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->r:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;

    .line 204
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 205
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 206
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->j:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    new-instance v4, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_YuanHuanLianXi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v4, v1, v5}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 210
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->i:Ljava/util/List;

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints(Ljava/util/List;)V

    .line 211
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 212
    :cond_1d
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->p:Landroidx/lifecycle/z;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method
