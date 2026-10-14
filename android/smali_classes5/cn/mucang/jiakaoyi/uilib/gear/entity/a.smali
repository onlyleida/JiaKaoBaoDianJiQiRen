.class public final Lcn/mucang/jiakaoyi/uilib/gear/entity/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0012\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005*\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "convert",
        "Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;",
        "gearPose",
        "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
        "convertGearPoses",
        "",
        "Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;",
        "uilib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;
    .locals 6

    const-string v0, "gearPose"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->setGear(Ljava/lang/Integer;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->setPoints(Ljava/util/List;)V

    .line 5
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;-><init>()V

    .line 6
    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    neg-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->setDr(Ljava/lang/Float;)V

    .line 7
    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    neg-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->setDp(Ljava/lang/Float;)V

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;

    invoke-direct {v3}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;-><init>()V

    .line 12
    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v4, v4

    neg-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->setDr(Ljava/lang/Float;)V

    .line 13
    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v4

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->setDp(Ljava/lang/Float;)V

    .line 14
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final b(Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;->getGearTracks()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;

    .line 4
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->getGear()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->getPoints()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_5

    .line 5
    :cond_1
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;-><init>()V

    .line 6
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->getGear()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    const/16 v4, 0xa

    .line 8
    iput v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->getGear()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    :goto_1
    const/4 v4, 0x0

    .line 10
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_2
    add-int/lit8 v6, v4, 0x1

    .line 11
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->getPoints()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;

    .line 12
    invoke-virtual {v7}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->getDr()Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->getDp()Ljava/lang/Float;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_4

    .line 13
    :cond_3
    invoke-virtual {v7}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->getDr()Ljava/lang/Float;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    neg-float v8, v8

    const/16 v9, 0x64

    int-to-float v9, v9

    mul-float v8, v8, v9

    invoke-static {v8}, Lkotlin/y/a;->b(F)I

    move-result v8

    int-to-double v10, v8

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    .line 14
    invoke-virtual {v7}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->getDp()Ljava/lang/Float;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    neg-float v7, v7

    mul-float v7, v7, v9

    invoke-static {v7}, Lkotlin/y/a;->b(F)I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v7, v12

    if-nez v4, :cond_4

    double-to-float v4, v10

    .line 15
    iput v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    double-to-float v4, v7

    .line 16
    iput v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    goto :goto_3

    .line 18
    :cond_4
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 19
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v9, v10, v11, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    if-lt v6, v5, :cond_6

    goto/16 :goto_0

    :cond_6
    move v4, v6

    goto :goto_2

    :cond_7
    :goto_4
    const-string p0, " dr or dp \u662fnull \u6570\u636e\u6709\u95ee\u9898 "

    .line 20
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-object v0

    :cond_8
    :goto_5
    const-string p0, " gear or points \u662fnull \u6570\u636e\u6709\u95ee\u9898 "

    .line 21
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-object v0

    :cond_9
    return-object v1

    :cond_a
    return-object v0
.end method
