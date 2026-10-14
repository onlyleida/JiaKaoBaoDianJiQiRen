.class public Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;
.super Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;",
        "Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private A:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public x:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public y:Z

.field private z:J


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->u:Z

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->v:I

    .line 5
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->w:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 6
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->A:I

    return-void
.end method

.method static synthetic G(Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->z:J

    return-wide p1
.end method

.method private J(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 2
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->s:Z

    .line 8
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->t:Z

    return-void
.end method

.method private K(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;)V
    .locals 7

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/framework/tts/AbsTtsDataProvider;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    invoke-static {v2, v1, v4, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v1

    .line 3
    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    invoke-static {v1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    invoke-static {p1, v3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    .line 7
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    double-to-int p1, p1

    const/16 p2, 0x19

    const/16 v1, 0x32

    const/16 v2, 0x28

    const/16 v3, 0x1e

    const/16 v4, 0x23

    if-le p1, p2, :cond_1

    if-gt p1, v4, :cond_1

    const/16 p1, 0x1e

    goto :goto_0

    :cond_1
    const/16 p2, 0x2d

    if-le p1, v4, :cond_2

    if-gt p1, p2, :cond_2

    const/16 p1, 0x28

    goto :goto_0

    :cond_2
    if-le p1, p2, :cond_3

    const/16 p2, 0x37

    if-gt p1, p2, :cond_3

    const/16 p1, 0x32

    :cond_3
    :goto_0
    const/4 p2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne p1, v3, :cond_6

    .line 8
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_right_30_continue:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->z:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v6, v1, v3

    if-lez v6, :cond_5

    .line 10
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    invoke-virtual {v1, v0, p2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/framework/tts/AbsTtsDataProvider;

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;)V

    if-eqz p2, :cond_4

    .line 12
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-virtual {p2, p1, v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/AbsTtsDataProvider;->startSpeechLow(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    goto :goto_1

    .line 13
    :cond_4
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->C(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    .line 14
    :cond_5
    :goto_1
    iput v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->A:I

    goto :goto_3

    :cond_6
    if-eq p1, v2, :cond_8

    if-ne p1, v1, :cond_7

    goto :goto_2

    .line 15
    :cond_7
    iput v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->A:I

    goto :goto_3

    .line 16
    :cond_8
    :goto_2
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_right_side_distance:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->A:I

    if-eq v2, p1, :cond_a

    .line 18
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->A:I

    .line 19
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    invoke-virtual {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/tts/AbsTtsDataProvider;

    if-eqz p1, :cond_9

    .line 20
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-virtual {p1, v1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/AbsTtsDataProvider;->startSpeechLow(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_3

    .line 21
    :cond_9
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private L(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->w:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->w:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, v1, :cond_1

    .line 5
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_1
    return-void
.end method


# virtual methods
.method protected E()J
    .locals 2

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method protected H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    .line 2
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    return p1
.end method

.method protected I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 5

    .line 1
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p4, v0, :cond_0

    .line 2
    sget-object p4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 3
    new-instance p4, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p4, v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->x:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 4
    :cond_0
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->J(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;)V

    .line 5
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->L(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;)V

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->K(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->x:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p4, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->x:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->u:Z

    .line 9
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    invoke-static {p1, v4, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    .line 11
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->v:I

    add-int/lit8 p1, p1, -0x3

    .line 12
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->v:I

    .line 13
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->y:Z

    if-nez p1, :cond_4

    .line 14
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->y:Z

    .line 15
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, p4, :cond_6

    .line 16
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->j:Z

    if-nez p1, :cond_5

    .line 17
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->O()V

    .line 18
    :cond_5
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 20
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    const-string p1, "ShangPoTeachingChecker isEnd"

    .line 21
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method protected bridge synthetic f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method protected w()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->w:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    return-void
.end method
