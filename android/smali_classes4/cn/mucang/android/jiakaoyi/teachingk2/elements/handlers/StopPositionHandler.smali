.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopVoiceConfig;,
        Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;",
        ">;"
    }
.end annotation


# static fields
.field public static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopVoiceConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

.field private b:Lcn/mucang/android/jiakaoyi/signal/utils/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopVoiceConfig;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopVoiceConfig;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v2, v1, v4, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "\u53f3\u8f66\u5934\u4e0d\u5728\u6869\u6746\u7ebf\u4e0a"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v2

    .line 4
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "\u5de6\u8f66\u5934\u4e0d\u5728\u6869\u6746\u7ebf\u4e0a"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v2

    .line 6
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_5

    const/16 v3, 0x1e

    if-le v0, v3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    double-to-int p1, p1

    if-lt p1, v1, :cond_4

    if-le p1, v3, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;->Good:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    invoke-direct {p0, p3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->d(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;)V

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_4
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u53f3\u540e\u8f6e\u8ddd\u79bb\u4e0d\u51c6\u786e:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v2

    .line 10
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u53f3\u524d\u8f6e\u8ddd\u79bb\u4e0d\u51c6\u786e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v2
.end method

.method private d(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;)V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopVoiceConfig;

    .line 2
    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopVoiceConfig;->step:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopVoiceConfig;->subStep:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopVoiceConfig;->area:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    if-ne v2, p2, :cond_0

    .line 3
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopVoiceConfig;->voice:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 4
    :goto_0
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    .line 6
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v3, :cond_2

    .line 7
    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    .line 8
    iput-object p2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->stopArea:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->c(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public c(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->d()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    return v6

    .line 2
    :cond_0
    instance-of v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    if-eqz v5, :cond_1

    .line 3
    move-object v1, v2

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    move-object/from16 v5, p2

    invoke-direct {v0, v5, v1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    move-result v1

    return v1

    :cond_1
    move-object/from16 v5, p2

    .line 4
    instance-of v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    if-nez v7, :cond_2

    instance-of v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    if-nez v7, :cond_2

    return v6

    .line 5
    :cond_2
    instance-of v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eqz v7, :cond_5

    .line 6
    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->s:I

    if-ne v3, v9, :cond_3

    iget v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-ne v7, v10, :cond_3

    return v6

    :cond_3
    if-ne v3, v10, :cond_4

    .line 7
    iget v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-ne v7, v8, :cond_4

    return v6

    :cond_4
    const/4 v7, 0x3

    if-ne v3, v7, :cond_5

    .line 8
    iget v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    const/4 v7, 0x5

    if-ne v3, v7, :cond_5

    return v6

    .line 9
    :cond_5
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-nez v3, :cond_6

    .line 10
    invoke-interface/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->g()Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 11
    :cond_6
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->b:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-nez v2, :cond_9

    .line 12
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    .line 13
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;->last:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 14
    iget v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-eq v3, v10, :cond_8

    if-ne v3, v8, :cond_7

    goto :goto_0

    .line 15
    :cond_7
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const/16 v17, 0x1

    move-object v11, v3

    move-object v12, v14

    move-object v13, v2

    invoke-direct/range {v11 .. v17}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->b:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    goto :goto_1

    .line 16
    :cond_8
    :goto_0
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const/16 v17, 0x1

    move-object v11, v3

    move-object v12, v2

    move-object v13, v14

    invoke-direct/range {v11 .. v17}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->b:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 17
    :goto_1
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;->stopRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    iget v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->top:I

    int-to-double v6, v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double v6, v6, v10

    iget v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->left:I

    mul-int/lit8 v3, v3, -0x1

    int-to-double v12, v3

    invoke-direct {v2, v6, v7, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 18
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;->stopRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    iget v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->top:I

    int-to-double v7, v7

    mul-double v7, v7, v10

    iget v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->right:I

    int-to-double v12, v6

    mul-double v12, v12, v10

    invoke-direct {v3, v7, v8, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 19
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;->stopRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    iget v8, v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->bottom:I

    mul-int/lit8 v8, v8, -0x1

    int-to-double v12, v8

    iget v7, v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->right:I

    int-to-double v7, v7

    mul-double v7, v7, v10

    invoke-direct {v6, v12, v13, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 20
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;->stopRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    iget v10, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->bottom:I

    mul-int/lit8 v10, v10, -0x1

    int-to-double v10, v10

    iget v8, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->left:I

    mul-int/lit8 v8, v8, -0x1

    int-to-double v12, v8

    invoke-direct {v7, v10, v11, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 21
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->b:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-virtual {v10, v2}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->b:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-virtual {v10, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->b:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->b:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-virtual {v3, v7}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->b:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/StopPositionAreaModel;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/StopPositionAreaModel;

    invoke-direct {v3, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/data/StopPositionAreaModel;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 28
    :cond_9
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->b:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 29
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;->Good:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    .line 30
    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;->stopRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    iget v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->left:I

    mul-int/lit8 v7, v7, -0x1

    int-to-double v7, v7

    cmpg-double v10, v5, v7

    if-gez v10, :cond_a

    .line 31
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;->Left:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    goto :goto_2

    .line 32
    :cond_a
    iget v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->right:I

    int-to-double v7, v7

    cmpl-double v10, v5, v7

    if-lez v10, :cond_b

    .line 33
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;->Right:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    goto :goto_2

    .line 34
    :cond_b
    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->top:I

    int-to-double v7, v2

    cmpl-double v2, v5, v7

    if-lez v2, :cond_c

    .line 35
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;->Front:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    goto :goto_2

    .line 36
    :cond_c
    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->bottom:I

    mul-int/lit8 v1, v1, -0x1

    int-to-double v1, v1

    cmpg-double v7, v5, v1

    if-gez v7, :cond_d

    .line 37
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;->Back:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    .line 38
    :cond_d
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u505c\u8f66\u4f4d\u7f6e\u68c0\u6d4b\u7ed3\u679c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 39
    invoke-direct {v0, v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;->d(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;)V

    return v9
.end method
