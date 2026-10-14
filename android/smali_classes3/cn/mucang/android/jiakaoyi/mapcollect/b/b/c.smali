.class public Lcn/mucang/android/jiakaoyi/mapcollect/b/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/mapcollect/c/h;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/b/b/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/b/b/a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/h;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/mapcollect/c/h;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->x:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->getZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->x:Lcn/mucang/android/jiakaoyi/signal/i/a;

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

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->a:Ljava/lang/String;

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

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
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 11
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 12
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 21
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_1

    .line 22
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

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
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/i;

    .line 27
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 28
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 29
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/i;->i:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 31
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/i;->j:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints(Ljava/util/List;)V

    .line 32
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/i;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_3

    .line 33
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/i;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 36
    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    :cond_4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;

    .line 38
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 39
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 40
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v5, :cond_5

    .line 49
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_5
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 54
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_6

    .line 55
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 58
    :cond_6
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 59
    :cond_7
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;

    .line 60
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 61
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 62
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 69
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_8

    .line 70
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 73
    :cond_8
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 74
    :cond_9
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;

    .line 75
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 76
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 77
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 82
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_a

    .line 83
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 86
    :cond_a
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 87
    :cond_b
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/n;

    .line 88
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 89
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 90
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/n;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/n;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/n;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/n;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 95
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/n;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_c

    .line 96
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/n;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 99
    :cond_c
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 100
    :cond_d
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/f;

    .line 101
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 102
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 103
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/f;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/f;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/f;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/f;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/f;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/f;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 110
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/f;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_e

    .line 111
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/f;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 114
    :cond_e
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 115
    :cond_f
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/e;

    .line 116
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 117
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 118
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/e;->i:Ljava/util/List;

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 119
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/e;->k:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints(Ljava/util/List;)V

    .line 120
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/e;->j:Ljava/util/List;

    invoke-static {v6}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 121
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/e;->j:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints2(Ljava/util/List;)V

    .line 122
    :cond_10
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/e;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_11

    .line 123
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/e;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 126
    :cond_11
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 127
    :cond_12
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/l;

    .line 128
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 129
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 130
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/l;->i:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 136
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/l;->k:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints(Ljava/util/List;)V

    .line 137
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/l;->j:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints2(Ljava/util/List;)V

    .line 138
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/l;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_13

    .line 139
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/l;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 142
    :cond_13
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 143
    :cond_14
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;

    .line 144
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 145
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 146
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->F:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->F:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->F:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->F:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhuangKao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 157
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->B:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_15

    .line 158
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->B:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 161
    :cond_15
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->v:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->w:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->x:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->y:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->z:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->A:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints(Ljava/util/List;)V

    .line 169
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 170
    :cond_16
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/c;

    .line 171
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 172
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 173
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/c;->x:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/c;->x:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/c;->x:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/c;->x:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_DanBian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 186
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/c;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_17

    .line 187
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/c;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 190
    :cond_17
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 191
    :cond_18
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/m;

    .line 192
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 193
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 194
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/m;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/m;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/m;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/m;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/m;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/m;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/m;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/m;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/m;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/m;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_XianKuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 205
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/m;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_19

    .line 206
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/m;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 209
    :cond_19
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 210
    :cond_1a
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/o;

    .line 211
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 212
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 213
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/o;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/o;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/o;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/o;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/o;->m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/o;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/o;->o:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/o;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/o;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/o;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhangAi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 224
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/o;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_1b

    .line 225
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/o;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 228
    :cond_1b
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 229
    :cond_1c
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/h;

    .line 230
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 231
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 232
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/h;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/h;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/h;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/h;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/h;->m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/h;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/h;->o:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/h;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/h;->q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/h;->r:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/h;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/h;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_QiFu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 245
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/h;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_1d

    .line 246
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/h;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 249
    :cond_1d
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 250
    :cond_1e
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;

    .line 251
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 252
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 253
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->i:Ljava/util/List;

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShanLu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 254
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->j:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints(Ljava/util/List;)V

    .line 255
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->k:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints2(Ljava/util/List;)V

    .line 256
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_1f

    .line 257
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 259
    :cond_1f
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :goto_f
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_20

    .line 262
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_20
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_21

    .line 265
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_21
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_22

    .line 268
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_22
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_23

    .line 271
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_23
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 274
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 275
    :cond_24
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;

    .line 276
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 277
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 278
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_GaoSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 284
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints(Ljava/util/List;)V

    .line 285
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints2(Ljava/util/List;)V

    .line 286
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->x:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_25

    .line 287
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->x:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 289
    :cond_25
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :goto_11
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->z:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_26

    .line 292
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->z:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_26
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->A:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_27

    .line 295
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->A:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_27
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->B:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_28

    .line 298
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->B:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_28
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->C:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_29

    .line 301
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->C:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_29
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->D:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_2a

    .line 304
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->D:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_2a
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->G:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v6, :cond_2b

    .line 307
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->G:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->G:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->G:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->G:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->G:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_2b
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->I:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_2c

    .line 314
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->I:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_2c
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->J:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_2d

    .line 317
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->J:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_2d
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 320
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 321
    :cond_2e
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->u:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/b;

    .line 322
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 323
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 324
    new-instance v4, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/b;->i:Ljava/util/List;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ChunHuaLu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 325
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/b;->k:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints(Ljava/util/List;)V

    .line 326
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/b;->j:Ljava/util/List;

    invoke-static {v5}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 327
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/b;->j:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints2(Ljava/util/List;)V

    .line 328
    :cond_2f
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/b;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v5, :cond_30

    .line 329
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/b;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {v4, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setReportPoints(Ljava/util/List;)V

    .line 332
    :cond_30
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 333
    :cond_31
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->p:Landroidx/lifecycle/z;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method
