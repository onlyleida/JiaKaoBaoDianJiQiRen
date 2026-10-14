.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

.field private c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private g:D

.field private h:D

.field private i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

.field private j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

.field private k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field private l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field private m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field private n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field private o:D

.field private p:D

.field private q:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->b:Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    .line 9
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    .line 10
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->q:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/a;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->q:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/a;

    if-nez v2, :cond_0

    .line 2
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/a;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/a;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->q:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/a;

    .line 3
    :cond_0
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->q:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/a;

    if-eqz v2, :cond_1

    move-object/from16 v3, p1

    .line 4
    invoke-virtual {v2, v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/a;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z

    move-result v1

    return v1

    :cond_1
    move-object/from16 v3, p1

    .line 5
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const/4 v8, 0x1

    if-nez v2, :cond_2

    .line 6
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 7
    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    .line 8
    invoke-virtual {v9, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    .line 9
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-direct {v11, v2, v9, v10, v8}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V

    iput-object v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 10
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    invoke-static {v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->a(D)Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->b:Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    .line 13
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    .line 14
    iget-object v9, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v10, v9, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v10, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v9

    mul-double v9, v9, v4

    iput-wide v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->p:D

    .line 15
    iget-object v9, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v11, v11, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v10, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v9

    iput-wide v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->o:D

    .line 16
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->b:Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->R:D

    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->p:D

    add-double v15, v11, v13

    add-double/2addr v11, v13

    mul-double v15, v15, v11

    mul-double v9, v9, v9

    add-double/2addr v15, v9

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    iput-wide v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->g:D

    .line 17
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->b:Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->R:D

    iget-wide v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->p:D

    sub-double/2addr v9, v11

    iput-wide v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->h:D

    .line 18
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    .line 19
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    .line 20
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v10, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v9, v10}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v11, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v11, v11, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v11, v12, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 21
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v10, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v11, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v11, v11, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v10, v11, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v11, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v11, v11, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v10, v11}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 22
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v11, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v11, v11, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v10, v11}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 23
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v10, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v9, v10}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 24
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 25
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 26
    :cond_2
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->b:Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->R:D

    const-wide v11, 0x4076800000000000L    # 360.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    .line 27
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/utils/b;->f:D

    sub-double/2addr v11, v13

    const-wide v13, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double/2addr v11, v13

    double-to-float v2, v11

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    float-to-double v11, v2

    .line 28
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v13

    iget-object v13, v13, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v14, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 29
    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v14

    iget-object v14, v14, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v14}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    .line 30
    iget-object v14, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 31
    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide/high16 v15, 0x4039000000000000L    # 25.0

    cmpg-double v17, v13, v15

    if-gez v17, :cond_3

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    cmpg-double v15, v13, v6

    if-gez v15, :cond_3

    return v8

    .line 32
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v6

    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v6

    if-nez v6, :cond_13

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v6

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v6, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_d

    .line 33
    :cond_4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 34
    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/16 v14, 0x0

    cmpl-double v13, v6, v14

    if-lez v13, :cond_5

    const/16 v6, -0x5a

    goto :goto_0

    :cond_5
    const/16 v6, 0x5a

    :goto_0
    int-to-double v6, v6

    add-double/2addr v6, v11

    .line 35
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 36
    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v9

    add-double v4, v4, v16

    iget-wide v14, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v9

    add-double/2addr v14, v6

    invoke-virtual {v1, v4, v5, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 37
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x4056800000000000L    # 90.0

    sub-double v4, v6, v4

    const-wide/16 v13, 0x0

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    sub-double v6, v4, v13

    double-to-int v13, v6

    const/16 v14, 0xa

    .line 38
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 39
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-double v13, v13

    div-double/2addr v6, v13

    .line 40
    new-instance v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    const-wide/16 v25, 0x0

    .line 41
    :goto_1
    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v13, v13, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    move-wide/from16 v27, v9

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v8, v16

    if-ltz v14, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v13, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->b(Z)V

    .line 42
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v9, v13, v16

    if-ltz v9, :cond_7

    const/4 v9, 0x1

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->b(Z)V

    .line 43
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v9, v13, v16

    if-ltz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->b(Z)V

    .line 44
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v9, v13, v16

    if-ltz v9, :cond_9

    const/4 v9, 0x1

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->b(Z)V

    .line 45
    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v13, v8, v16

    if-lez v13, :cond_a

    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    const/4 v8, -0x1

    :goto_6
    int-to-double v8, v8

    mul-double v8, v8, v25

    .line 46
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    .line 47
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    .line 48
    invoke-virtual {v15, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    move-wide/from16 v33, v16

    move-object v14, v1

    move-object v10, v15

    move-wide/from16 v15, v29

    move-wide/from16 v17, v31

    invoke-virtual/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 49
    iget-wide v13, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-wide/from16 v35, v4

    iget-wide v3, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    const-wide v17, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->tan(D)D

    move-result-wide v15

    div-double/2addr v3, v15

    sub-double/2addr v13, v3

    .line 50
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v4, v13, v4

    move-wide/from16 v37, v11

    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v11, v33, v11

    invoke-virtual {v3, v4, v5, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 51
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    cmpl-double v5, v3, v33

    if-lez v5, :cond_b

    add-double v25, v25, v6

    move-wide/from16 v39, v6

    move-object/from16 v43, v10

    move-wide/from16 v4, v27

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    const-wide v21, 0x4056800000000000L    # 90.0

    const-wide/high16 v23, 0x403e000000000000L    # 30.0

    goto/16 :goto_b

    .line 52
    :cond_b
    iget-wide v3, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v3, v13, v3

    .line 53
    iget-wide v11, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v3, v3, v3

    mul-double v11, v11, v11

    add-double/2addr v3, v11

    .line 54
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide v11, 0x4066800000000000L    # 180.0

    .line 55
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    sub-double/2addr v11, v15

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    mul-double v11, v11, v19

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    div-double v11, v27, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    sub-double/2addr v3, v11

    .line 56
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide v21, 0x4056800000000000L    # 90.0

    sub-double v15, v21, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    add-double v15, v15, v17

    move-wide/from16 v39, v6

    const-wide/high16 v23, 0x403e000000000000L    # 30.0

    div-double v5, v23, v15

    sub-double v11, v13, v11

    const-wide/high16 v15, -0x3fd2000000000000L    # -15.0

    cmpl-double v7, v11, v15

    move-wide/from16 v41, v8

    if-ltz v7, :cond_c

    neg-double v7, v5

    cmpl-double v9, v3, v7

    if-lez v9, :cond_c

    :goto_7
    const/4 v8, 0x1

    goto/16 :goto_c

    .line 57
    :cond_c
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->o:D

    move-object/from16 v43, v10

    neg-double v9, v7

    cmpg-double v15, v11, v9

    if-ltz v15, :cond_10

    neg-double v5, v5

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    mul-double v5, v5, v9

    cmpg-double v9, v3, v5

    if-ltz v9, :cond_10

    neg-double v3, v7

    cmpg-double v5, v13, v3

    if-gtz v5, :cond_d

    goto/16 :goto_9

    .line 58
    :cond_d
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 59
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 60
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    move-object v14, v1

    move-wide/from16 v15, v29

    move-wide/from16 v17, v31

    invoke-virtual/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 61
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 62
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 63
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    invoke-virtual/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 64
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v6, v4, v33

    move-wide/from16 v4, v27

    if-lez v6, :cond_e

    move-wide v6, v4

    goto :goto_8

    :cond_e
    neg-double v6, v4

    :goto_8
    invoke-virtual {v3, v11, v12, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 65
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 66
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->p:D

    invoke-virtual {v3, v11, v12, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 67
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->p:D

    neg-double v6, v6

    invoke-virtual {v3, v11, v12, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 68
    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 69
    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 70
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v8, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v8, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v9, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide v10, v6

    move-wide v12, v14

    invoke-virtual/range {v8 .. v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 71
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v8, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v8, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v9, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual/range {v8 .. v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 72
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v8, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    cmpl-double v3, v6, v8

    if-lez v3, :cond_f

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 73
    invoke-virtual {v6, v3, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, v6, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    cmpg-double v3, v6, v33

    if-gez v3, :cond_f

    goto/16 :goto_a

    .line 74
    :cond_f
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c()V

    .line 75
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c()V

    .line 76
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c()V

    .line 77
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->c()V

    .line 78
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 79
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 80
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 81
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 82
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 83
    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_7

    :cond_10
    :goto_9
    move-wide/from16 v4, v27

    :cond_11
    :goto_a
    add-double v25, v25, v39

    :goto_b
    cmpg-double v3, v25, v35

    if-ltz v3, :cond_12

    const/4 v8, 0x0

    :goto_c
    return v8

    :cond_12
    move-object/from16 v3, p1

    move-wide v9, v4

    move-wide/from16 v4, v35

    move-wide/from16 v11, v37

    move-wide/from16 v6, v39

    move-object/from16 v15, v43

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_13
    :goto_d
    const/4 v1, 0x1

    return v1
.end method
