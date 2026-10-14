.class public Lcn/mucang/android/core/webview/tracker/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "c"


# instance fields
.field private a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcn/mucang/android/core/webview/tracker/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/webview/tracker/c;->a:Ljava/util/Queue;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/webview/tracker/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/webview/tracker/http/model/Track;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/core/webview/tracker/c;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/webview/tracker/a;

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x12e

    const/16 v4, 0xc8

    if-eqz v1, :cond_6

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/core/webview/tracker/a;->a()Lcn/mucang/android/core/webview/tracker/Event;

    move-result-object v5

    .line 4
    sget-object v6, Lcn/mucang/android/core/webview/tracker/c$b;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v3, 0x2

    if-eq v5, v3, :cond_0

    goto :goto_2

    :cond_0
    if-nez v2, :cond_1

    .line 5
    sget-object v2, Lcn/mucang/android/core/webview/tracker/c;->b:Ljava/lang/String;

    const-string v3, "PAGE_FINISHED should always has a PAGE_START before it."

    invoke-static {v2, v3}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6
    :cond_1
    sget-object v3, Lcn/mucang/android/core/webview/tracker/c;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pre "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/tracker/a;->a()Lcn/mucang/android/core/webview/tracker/Event;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " head "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/tracker/a;->a()Lcn/mucang/android/core/webview/tracker/Event;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_5

    .line 7
    invoke-virtual {v1}, Lcn/mucang/android/core/webview/tracker/a;->b()J

    move-result-wide v5

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/tracker/a;->b()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    .line 8
    sget-object v7, Lcn/mucang/android/core/webview/tracker/c;->b:Ljava/lang/String;

    const-string v8, "wrong raw event order. must check code immediately!!!"

    invoke-static {v7, v8}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_3
    invoke-virtual {v2}, Lcn/mucang/android/core/webview/tracker/a;->a()Lcn/mucang/android/core/webview/tracker/Event;

    move-result-object v7

    sget-object v8, Lcn/mucang/android/core/webview/tracker/Event;->PAGE_START:Lcn/mucang/android/core/webview/tracker/Event;

    if-ne v7, v8, :cond_4

    .line 10
    new-instance v4, Lcn/mucang/android/core/webview/tracker/http/model/Track;

    invoke-direct {v4, v2, v3, v5, v6}, Lcn/mucang/android/core/webview/tracker/http/model/Track;-><init>(Lcn/mucang/android/core/webview/tracker/a;IJ)V

    .line 11
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {v2}, Lcn/mucang/android/core/webview/tracker/a;->a()Lcn/mucang/android/core/webview/tracker/Event;

    move-result-object v3

    sget-object v7, Lcn/mucang/android/core/webview/tracker/Event;->PAGE_FINISHED:Lcn/mucang/android/core/webview/tracker/Event;

    if-ne v3, v7, :cond_5

    .line 13
    new-instance v3, Lcn/mucang/android/core/webview/tracker/http/model/Track;

    invoke-direct {v3, v2, v4, v5, v6}, Lcn/mucang/android/core/webview/tracker/http/model/Track;-><init>(Lcn/mucang/android/core/webview/tracker/a;IJ)V

    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    move-object v2, v1

    .line 15
    :goto_2
    iget-object v1, p0, Lcn/mucang/android/core/webview/tracker/c;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/webview/tracker/a;

    goto/16 :goto_0

    :cond_6
    if-eqz v2, :cond_8

    .line 16
    invoke-virtual {v2}, Lcn/mucang/android/core/webview/tracker/a;->a()Lcn/mucang/android/core/webview/tracker/Event;

    move-result-object v1

    sget-object v5, Lcn/mucang/android/core/webview/tracker/Event;->PAGE_FINISHED:Lcn/mucang/android/core/webview/tracker/Event;

    if-ne v1, v5, :cond_7

    .line 17
    new-instance v1, Lcn/mucang/android/core/webview/tracker/http/model/Track;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/tracker/a;->b()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-direct {v1, v2, v4, v5, v6}, Lcn/mucang/android/core/webview/tracker/http/model/Track;-><init>(Lcn/mucang/android/core/webview/tracker/a;IJ)V

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 19
    :cond_7
    invoke-virtual {v2}, Lcn/mucang/android/core/webview/tracker/a;->a()Lcn/mucang/android/core/webview/tracker/Event;

    move-result-object v1

    sget-object v4, Lcn/mucang/android/core/webview/tracker/Event;->PAGE_START:Lcn/mucang/android/core/webview/tracker/Event;

    if-ne v1, v4, :cond_8

    .line 20
    new-instance v1, Lcn/mucang/android/core/webview/tracker/http/model/Track;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/tracker/a;->b()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/android/core/webview/tracker/http/model/Track;-><init>(Lcn/mucang/android/core/webview/tracker/a;IJ)V

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    return-object v0
.end method


# virtual methods
.method public b(Lcn/mucang/android/core/webview/tracker/a;)V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/core/webview/tracker/c;->b:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/tracker/a;->a()Lcn/mucang/android/core/webview/tracker/Event;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/tracker/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/tracker/a;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "%s: startMs=%s, url=%s.)"

    .line 3
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcn/mucang/android/core/webview/tracker/c;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_0

    const-string p1, "queue is full."

    .line 5
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/tracker/c;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/tracker/c;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/core/webview/tracker/http/model/Track;

    .line 3
    sget-object v3, Lcn/mucang/android/core/webview/tracker/c;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/tracker/http/model/Track;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/core/webview/tracker/c;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 5
    new-instance v1, Lcn/mucang/android/core/webview/tracker/c$a;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/core/webview/tracker/c$a;-><init>(Lcn/mucang/android/core/webview/tracker/c;Ljava/util/List;)V

    invoke-static {v1}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method
