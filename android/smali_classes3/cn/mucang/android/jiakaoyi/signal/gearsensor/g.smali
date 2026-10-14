.class public Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;,
        Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;
    }
.end annotation


# instance fields
.field final a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field final b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public d:Z

.field private final e:D

.field private final f:D

.field private g:I

.field private h:I

.field private i:F

.field private final j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    .line 2
    iput p4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->g:I

    .line 3
    iput p4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->h:I

    .line 4
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->k:Ljava/util/List;

    .line 5
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->l:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 9
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    const/4 p3, 0x0

    .line 10
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->i:F

    .line 11
    iget-wide p3, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr p3, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p3

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->f:D

    .line 12
    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide p4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr p2, p4

    mul-double p2, p2, v0

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->e:D

    .line 13
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->d()V

    return-void
.end method

.method private c(DDDD)V
    .locals 12

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    .line 2
    invoke-virtual/range {v3 .. v11}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;->a(DDDD)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    .line 4
    invoke-virtual/range {v3 .. v11}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;->a(DDDD)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private d()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->l(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 4
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40800000    # 4.0f

    const v7, 0x3e99999a    # 0.3f

    const v8, 0x3f333333    # 0.7f

    const v9, 0x3ecccccd    # 0.4f

    const v10, 0x3f19999a    # 0.6f

    if-ne v2, v3, :cond_1

    .line 5
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->k:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    mul-float v1, v1, v8

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v11, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    mul-float v11, v11, v7

    add-float v12, v1, v11

    iget v1, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    add-float v13, v1, v5

    iget v7, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    add-float/2addr v7, v5

    sub-float/2addr v1, v6

    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;-><init>(FFFILcn/mucang/android/jiakaoyi/signal/gearsensor/g$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->l:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    mul-float v5, v5, v10

    iget v7, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    mul-float v7, v7, v9

    add-float v12, v5, v7

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float v13, v3, v4

    add-float v14, v3, v6

    const/4 v15, -0x1

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;-><init>(FFFILcn/mucang/android/jiakaoyi/signal/gearsensor/g$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 7
    :cond_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/high16 v11, 0x42c80000    # 100.0f

    const/high16 v12, 0x40400000    # 3.0f

    if-ne v2, v3, :cond_2

    .line 8
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->k:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;

    iget v4, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    mul-float v4, v4, v8

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v8, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    mul-float v8, v8, v7

    add-float v14, v4, v8

    iget v4, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    add-float v15, v4, v11

    add-float v16, v4, v5

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;-><init>(FFFILcn/mucang/android/jiakaoyi/signal/gearsensor/g$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->l:Ljava/util/List;

    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    iget v6, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    mul-float v6, v6, v5

    add-float/2addr v4, v6

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float v5, v3, v12

    add-float v6, v3, v12

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;-><init>(FFFILcn/mucang/android/jiakaoyi/signal/gearsensor/g$a;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->l:Ljava/util/List;

    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    mul-float v4, v4, v10

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    mul-float v3, v3, v9

    add-float/2addr v4, v3

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float v5, v1, v12

    add-float v6, v1, v12

    const/4 v7, 0x1

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;-><init>(FFFILcn/mucang/android/jiakaoyi/signal/gearsensor/g$a;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 11
    :cond_2
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/high16 v13, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_3

    .line 12
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->k:Ljava/util/List;

    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    mul-float v1, v1, v9

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    mul-float v4, v4, v10

    add-float/2addr v4, v1

    iget v1, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    add-float v5, v1, v13

    sub-float v6, v1, v13

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;-><init>(FFFILcn/mucang/android/jiakaoyi/signal/gearsensor/g$a;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 13
    :cond_3
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v2, v3, :cond_4

    .line 14
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->k:Ljava/util/List;

    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    mul-float v1, v1, v9

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    mul-float v4, v4, v10

    add-float/2addr v4, v1

    iget v1, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    add-float v5, v1, v13

    sub-float v6, v1, v13

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;-><init>(FFFILcn/mucang/android/jiakaoyi/signal/gearsensor/g$a;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 15
    :cond_4
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v2, v3, :cond_5

    .line 16
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->k:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    mul-float v1, v1, v8

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v8, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    mul-float v8, v8, v7

    add-float v13, v1, v8

    iget v1, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float v14, v1, v5

    sub-float v15, v1, v11

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;-><init>(FFFILcn/mucang/android/jiakaoyi/signal/gearsensor/g$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->l:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    mul-float v4, v4, v10

    iget v5, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    mul-float v5, v5, v9

    add-float v12, v4, v5

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    const/high16 v4, 0x40e00000    # 7.0f

    sub-float v13, v3, v4

    add-float v14, v3, v6

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;-><init>(FFFILcn/mucang/android/jiakaoyi/signal/gearsensor/g$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 18
    :cond_5
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v2, v3, :cond_7

    .line 19
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->F()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 20
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->k:Ljava/util/List;

    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;

    iget v3, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    mul-float v3, v3, v10

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    mul-float v5, v5, v9

    add-float/2addr v5, v3

    iget v6, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    add-float v7, v6, v11

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v12

    move v4, v5

    move v5, v7

    move v7, v8

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;-><init>(FFFILcn/mucang/android/jiakaoyi/signal/gearsensor/g$a;)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->l:Ljava/util/List;

    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    const/high16 v3, 0x41200000    # 10.0f

    sub-float v5, v1, v3

    add-float v6, v1, v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;-><init>(FFFILcn/mucang/android/jiakaoyi/signal/gearsensor/g$a;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_6
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->k:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    mul-float v1, v1, v8

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v9, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    mul-float v9, v9, v7

    add-float v14, v1, v9

    iget v15, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float v16, v15, v11

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;-><init>(FFFILcn/mucang/android/jiakaoyi/signal/gearsensor/g$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->k:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    add-float v14, v5, v6

    iget v15, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float v16, v15, v12

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;-><init>(FFFILcn/mucang/android/jiakaoyi/signal/gearsensor/g$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->l:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->j:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    mul-float v5, v5, v7

    iget v7, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    mul-float v7, v7, v8

    add-float v10, v5, v7

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float v11, v3, v6

    add-float v12, v3, v4

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;-><init>(FFFILcn/mucang/android/jiakaoyi/signal/gearsensor/g$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_0
    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;

    .line 2
    iput-boolean v2, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;->e:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;

    .line 4
    iput-boolean v2, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;->d:Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static f(D)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    const-string p0, "%.1f"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()F
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;

    .line 2
    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;->e:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;

    .line 4
    iget-boolean v4, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$c;->d:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_3
    move v2, v0

    .line 5
    :goto_1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->i:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/16 v3, 0x258

    :goto_2
    int-to-float v1, v3

    add-float/2addr v0, v1

    return v0
.end method

.method public b(DDDDD)V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->l(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 4
    invoke-direct/range {p0 .. p8}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->c(DDDD)V

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    const/4 v5, 0x1

    cmpg-double v6, p9, v3

    if-gez v6, :cond_1

    .line 5
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->g:I

    add-int/2addr v3, v5

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->g:I

    goto :goto_0

    .line 6
    :cond_1
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->g:I

    .line 7
    :goto_0
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v9, v3, v7

    sub-double v11, p1, p5

    mul-double v9, v9, v11

    const-wide/16 v13, 0x0

    cmpl-double v15, v9, v13

    if-lez v15, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    sub-double v15, p1, v7

    sub-double v17, v7, p5

    mul-double v15, v15, v17

    const v10, 0x461c4000    # 10000.0f

    cmpl-double v17, v15, v13

    if-lez v17, :cond_5

    .line 8
    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->d:Z

    .line 9
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->g:I

    .line 10
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->h:I

    if-eqz v9, :cond_4

    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->i:F

    sub-double v9, v7, p5

    sub-double v15, p3, p7

    mul-double v9, v9, v15

    div-double/2addr v9, v11

    add-double v9, v9, p7

    sub-double v17, p1, v3

    sub-double v19, v3, p5

    mul-double v17, v17, v19

    cmpl-double v1, v17, v13

    if-lez v1, :cond_3

    sub-double v13, v3, p5

    mul-double v13, v13, v15

    div-double/2addr v13, v11

    add-double v11, v13, p7

    .line 12
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->d:Z

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    move-wide/from16 v3, p1

    move-wide/from16 v11, p3

    .line 13
    :goto_2
    iget-wide v13, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 14
    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->e:D

    sub-double v16, v3, v7

    mul-double v5, v5, v16

    add-double/2addr v5, v13

    move-wide/from16 v21, v5

    move-wide v5, v13

    move-wide v13, v3

    move-wide v3, v9

    move-wide v9, v11

    move-wide/from16 v11, v21

    goto/16 :goto_6

    .line 15
    :cond_4
    iput v10, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->i:F

    .line 16
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->e()V

    return-void

    :cond_5
    sub-double v16, p1, v3

    sub-double v18, v3, p5

    mul-double v16, v16, v18

    cmpl-double v5, v16, v13

    if-lez v5, :cond_7

    if-eqz v9, :cond_6

    sub-double v9, v3, p5

    sub-double v13, p3, p7

    mul-double v9, v9, v13

    div-double/2addr v9, v11

    add-double v9, v9, p7

    .line 17
    iget-wide v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->e:D

    sub-double v13, p5, v7

    mul-double v13, v13, v11

    iget-wide v5, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v13, v5

    sub-double v7, v3, v7

    mul-double v11, v11, v7

    add-double/2addr v5, v11

    const/4 v1, 0x3

    move-wide/from16 v7, p5

    move-wide v11, v5

    move-wide v5, v13

    move-wide v13, v3

    :goto_3
    move-wide/from16 v3, p7

    goto/16 :goto_6

    :cond_6
    const/4 v10, 0x4

    move-wide v3, v13

    move-wide v5, v3

    move-wide v7, v5

    move-wide v9, v7

    move-wide v11, v9

    const/4 v1, 0x4

    goto/16 :goto_6

    :cond_7
    sub-double v5, p1, v7

    sub-double v11, v7, v3

    mul-double v5, v5, v11

    cmpl-double v11, v5, v13

    if-lez v11, :cond_9

    sub-double v5, p5, v7

    sub-double v11, v7, v3

    mul-double v5, v5, v11

    cmpl-double v11, v5, v13

    if-lez v11, :cond_9

    .line 18
    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->d:Z

    .line 19
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->g:I

    .line 20
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->h:I

    .line 21
    iput v10, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->i:F

    .line 22
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v5, v1

    sub-double v5, p1, v5

    sub-double/2addr v7, v3

    mul-double v5, v5, v7

    cmpl-double v2, v5, v13

    if-lez v2, :cond_8

    float-to-double v1, v1

    sub-double v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    :cond_8
    return-void

    :cond_9
    sub-double v5, p1, v3

    sub-double v10, v3, v7

    mul-double v5, v5, v10

    cmpl-double v1, v5, v13

    if-lez v1, :cond_a

    sub-double v5, p5, v3

    sub-double/2addr v3, v7

    mul-double v5, v5, v3

    cmpl-double v1, v5, v13

    if-lez v1, :cond_a

    const/4 v1, 0x1

    .line 23
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->d:Z

    const/4 v10, 0x7

    move-wide v3, v13

    move-wide v5, v3

    move-wide v7, v5

    move-wide v9, v7

    move-wide v11, v9

    const/4 v1, 0x7

    goto/16 :goto_6

    .line 24
    :cond_a
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->d:Z

    if-nez v1, :cond_c

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->g:I

    const/4 v3, 0x5

    if-lt v1, v3, :cond_b

    sub-double v4, p1, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v10, 0x3fe199999999999aL    # 0.55

    mul-double v6, v6, v10

    cmpl-double v1, v4, v6

    if-lez v1, :cond_b

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v6, p1, v4

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v10, v4

    mul-double v6, v6, v10

    cmpl-double v1, v6, v13

    if-lez v1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    goto :goto_5

    :cond_c
    const/4 v3, 0x5

    :goto_4
    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->d:Z

    if-eqz v9, :cond_d

    .line 25
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->e:D

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v8, p5, v6

    mul-double v8, v8, v4

    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double v13, v8, v10

    sub-double v6, p1, v6

    mul-double v4, v4, v6

    add-double/2addr v4, v10

    move-wide/from16 v9, p3

    move-wide/from16 v7, p5

    move-wide v11, v4

    move-wide v5, v13

    const/4 v1, 0x5

    move-wide/from16 v13, p1

    goto/16 :goto_3

    :cond_d
    const/4 v10, 0x6

    move-wide v3, v13

    move-wide v5, v3

    move-wide v7, v5

    move-wide v9, v7

    move-wide v11, v9

    const/4 v1, 0x6

    :goto_6
    sub-double/2addr v13, v7

    sub-double/2addr v3, v5

    add-double v5, v3, v9

    sub-double/2addr v5, v11

    mul-double v5, v5, v13

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v7

    double-to-float v5, v5

    .line 26
    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->i:F

    add-float/2addr v6, v5

    iput v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->i:F

    .line 27
    iget-boolean v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->d:Z

    if-eqz v6, :cond_e

    .line 28
    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->h:I

    const/4 v6, 0x1

    add-int/2addr v2, v6

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->h:I

    goto :goto_7

    .line 29
    :cond_e
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->h:I

    .line 30
    :goto_7
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->d:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , area = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->a()F

    move-result v1

    float-to-double v6, v1

    invoke-static {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->f(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , thisArea = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-double v5, v5

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->f(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , dx="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->f(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , dyStart="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->f(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , dyEnd="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->f(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GearSensor"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
