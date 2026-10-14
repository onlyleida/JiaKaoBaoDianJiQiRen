.class public Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;
.super Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field private g:Z

.field private h:Z

.field private i:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

.field private j:J

.field private k:J

.field private l:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->None:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->i:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    return-void
.end method

.method private c(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;Z)Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->e:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->g(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->d:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->g(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "DashFullLineCollisionModel"

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 5
    iget-wide p3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v0, p3, v2

    if-nez v0, :cond_0

    iget-wide p3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v0, p3, v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    cmpl-double p3, p1, v2

    if-lez p3, :cond_2

    :cond_1
    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_3

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressFullLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    goto :goto_0

    .line 7
    :cond_3
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressDashLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    .line 8
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " result 3 "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 9
    :cond_4
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->e:Ljava/util/List;

    invoke-virtual {p0, v7, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->g(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 10
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->d:Ljava/util/List;

    invoke-virtual {p0, v8, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->g(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    .line 11
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 12
    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 13
    iget-wide p3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v0, p3, v2

    if-nez v0, :cond_5

    iget-wide p3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v0, p3, v2

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    cmpl-double p3, p1, v2

    if-lez p3, :cond_7

    :cond_6
    const/4 v4, 0x1

    :cond_7
    if-eqz v4, :cond_8

    .line 14
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressFullLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    goto :goto_1

    .line 15
    :cond_8
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressDashLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    .line 16
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " result 4 "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_9
    if-nez v0, :cond_16

    if-eqz v7, :cond_a

    goto/16 :goto_5

    :cond_a
    if-nez v1, :cond_14

    if-eqz v8, :cond_b

    goto/16 :goto_4

    .line 17
    :cond_b
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->g:Z

    if-nez p3, :cond_13

    .line 18
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->e:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x2

    if-le p3, p4, :cond_e

    .line 19
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->e:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->e:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p3, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p3

    if-nez p3, :cond_d

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->e:Ljava/util/List;

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, p4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p3, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p3

    if-eqz p3, :cond_c

    goto :goto_2

    :cond_c
    const/4 p3, 0x0

    goto :goto_3

    :cond_d
    :goto_2
    const/4 p3, 0x1

    :goto_3
    if-eqz p3, :cond_f

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " result 6 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressFullLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 22
    :cond_e
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->e:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p3, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " result 6.1 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressFullLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 24
    :cond_f
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, p4, :cond_12

    .line 25
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->d:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p3, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p3

    if-nez p3, :cond_10

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->d:Ljava/util/List;

    .line 26
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, p1, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_11

    :cond_10
    const/4 v4, 0x1

    :cond_11
    if-eqz v4, :cond_13

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " result 7 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressDashLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 28
    :cond_12
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->d:Ljava/util/List;

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->d:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, p1, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " result 7.1 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressDashLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_13
    const/4 p1, 0x0

    return-object p1

    :cond_14
    :goto_4
    if-nez p4, :cond_15

    .line 30
    sget-object p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressDashLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    .line 31
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " result 5.1 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    :cond_16
    :goto_5
    if-nez p4, :cond_17

    .line 32
    sget-object p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressFullLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    .line 33
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " result 5 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3
.end method

.method private d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-static {v0, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private e(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;
    .locals 9

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "DashFullLineCollisionModel"

    if-nez v1, :cond_2

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->k:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    cmp-long v1, v5, v7

    if-ltz v1, :cond_3

    :cond_2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCarRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-nez v1, :cond_4

    .line 4
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->k:J

    .line 5
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->h:Z

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkBodyPressLine result 1 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->l:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->l:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    return-object p1

    .line 8
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v5, :cond_5

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCarRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 10
    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCarRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    goto :goto_2

    .line 11
    :cond_5
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCarRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 12
    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCarRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 13
    :goto_2
    iget-boolean v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->h:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->e:Ljava/util/List;

    invoke-virtual {p0, v0, v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->d:Ljava/util/List;

    invoke-virtual {p0, v0, v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    :cond_6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->k:J

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkBodyPressLine result 2 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->l:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->l:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    return-object p1

    .line 17
    :cond_7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->l:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    iget-boolean v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->h:Z

    invoke-direct {p0, v1, v5, v0, v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->c(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;Z)Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 18
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->k:J

    .line 19
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->l:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    .line 20
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->h:Z

    return-object v0

    .line 21
    :cond_8
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->h:Z

    .line 22
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->None:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->l:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    .line 23
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->k:J

    const-string p1, "checkBodyPressLine result 8 false"

    .line 24
    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->l:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    return-object p1
.end method

.method private f(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;
    .locals 9

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "DashFullLineCollisionModel"

    if-nez v1, :cond_2

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->j:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    cmp-long v1, v5, v7

    if-ltz v1, :cond_8

    :cond_2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v1, :cond_3

    goto/16 :goto_3

    .line 4
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v5, :cond_4

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 6
    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    goto :goto_2

    .line 7
    :cond_4
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 8
    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 9
    :goto_2
    iget-boolean v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->g:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->e:Ljava/util/List;

    invoke-virtual {p0, v0, v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->d:Ljava/util/List;

    invoke-virtual {p0, v0, v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->j:J

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkWheelPressLine result 2 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->i:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->i:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    return-object p1

    .line 13
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->i:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    iget-boolean v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->g:Z

    invoke-direct {p0, v1, v5, v0, v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->c(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;Z)Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->j:J

    .line 15
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->i:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    .line 16
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->g:Z

    return-object v0

    .line 17
    :cond_7
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->g:Z

    .line 18
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->None:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->i:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    .line 19
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->j:J

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkWheelPressLine result 8 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->i:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->i:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    return-object p1

    .line 22
    :cond_8
    :goto_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->j:J

    .line 23
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->g:Z

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkWheelPressLine result 1 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->i:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->i:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    return-object p1
.end method

.method private k(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-static {v0, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->s(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, p2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->i(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;Z)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/model/Line;",
            ")",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget-object v3, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    invoke-direct {p0, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public i(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;Z)Z
    .locals 7

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p2

    .line 2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->None:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->i:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->l:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->k:J

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->j:J

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->g:Z

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->h:Z

    return v0

    .line 9
    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->WheelPressLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    const/4 v1, 0x1

    if-ne p3, p2, :cond_4

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->j:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_8

    if-eqz p4, :cond_2

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->i:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressFullLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 12
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->i:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressDashLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    if-ne p1, p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 13
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->k:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_8

    if-eqz p4, :cond_6

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->l:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressFullLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    if-ne p1, p2, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    .line 15
    :cond_6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->l:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressDashLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    if-ne p1, p2, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    :cond_8
    if-ne p3, p2, :cond_9

    .line 16
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_9
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->e(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    move-result-object p1

    :goto_0
    if-eqz p4, :cond_b

    .line 18
    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressFullLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    if-ne p1, p2, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    .line 19
    :cond_b
    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;->PressDashLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel$PressLineResult;

    if-ne p1, p2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public j(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    invoke-direct {p0, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->k(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
