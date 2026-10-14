.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/c;


# instance fields
.field private volatile a:Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->a:Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->c:Landroidx/lifecycle/a0;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 4
    iput-boolean v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->e:Z

    return-void

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u9879\u76ee\u56f4\u680f:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;->enable:B

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;->time:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;->time:I

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v2, v2, v8

    add-long/2addr v2, v6

    .line 8
    :cond_3
    iget-byte p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;->enable:B

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->e:Z

    if-eqz v1, :cond_5

    .line 9
    iput-wide v2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->f:J

    goto :goto_0

    .line 10
    :cond_5
    iput-wide v4, p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->f:J

    :goto_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->a:Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private synthetic c(Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->a:Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->b:Ljava/util/Map;

    iget-wide v1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic e()V
    .locals 2

    .line 1
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->c:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private g(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;
    .locals 8

    .line 1
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->a:Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;

    invoke-direct {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->b(Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;)V

    .line 2
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->b:Ljava/util/Map;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->b:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-object v1

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7
    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->f:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->b:Ljava/util/Map;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->b:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 9
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->b:Ljava/util/Map;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 10
    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->c:Ljava/util/List;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->c:Ljava/util/List;

    .line 11
    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->c:Ljava/util/List;

    .line 12
    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->c:Ljava/util/List;

    .line 13
    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 14
    :cond_3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->b:Ljava/util/Map;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->b:Ljava/lang/String;

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 15
    :cond_4
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 16
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->c:Ljava/util/List;

    invoke-static {p3, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 17
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->b:Ljava/util/Map;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->b:Ljava/lang/String;

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 18
    :cond_6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->b:Ljava/util/Map;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->b:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_8

    .line 19
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    .line 20
    :cond_7
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    return-object p1

    :cond_8
    :goto_0
    return-object v1
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {p0, p1, p3, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->g(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->c(Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;)V

    return-void
.end method

.method public synthetic f()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;->e()V

    return-void
.end method
