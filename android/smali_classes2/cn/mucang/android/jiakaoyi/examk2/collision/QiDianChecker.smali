.class public Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;
.super Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static volatile B:Z = false


# instance fields
.field private A:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public s:Z

.field public t:Z

.field public u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private final y:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

.field private final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->s:Z

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->t:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->u:Z

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->v:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->w:Z

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->x:Z

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->z:Ljava/util/List;

    .line 9
    sput-boolean p1, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->B:Z

    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;->p408101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->DoorOpen:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->y:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 14
    :cond_0
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;->p408101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 15
    array-length v1, p2

    if-gtz v1, :cond_1

    .line 16
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->DoorOpen:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->y:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 18
    :cond_1
    array-length v0, p2

    :goto_0
    if-ge p1, v0, :cond_4

    aget-object v1, p2, p1

    .line 19
    invoke-static {v1}, Lcn/mucang/android/core/utils/y;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 20
    :cond_2
    invoke-static {v1}, Lcn/mucang/android/core/utils/y;->g(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 21
    :pswitch_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->DoorClose:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    goto :goto_1

    .line 22
    :pswitch_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->DoorOpen:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    goto :goto_1

    .line 23
    :pswitch_2
    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->SeatBelt:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    goto :goto_1

    .line 24
    :pswitch_3
    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->Lock:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    goto :goto_1

    .line 25
    :pswitch_4
    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->Handbrake:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    goto :goto_1

    .line 26
    :pswitch_5
    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->GearN:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    :goto_1
    if-eqz v2, :cond_3

    .line 27
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->z:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 28
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->z:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 29
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->z:Ljava/util/List;

    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 30
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->z:Ljava/util/List;

    sget-object p2, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->DoorOpen:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->z:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->y:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private I(Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)Z
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->GearN:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 2
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 3
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->Handbrake:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    if-ne p1, v0, :cond_3

    .line 4
    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    xor-int/2addr p1, v2

    return p1

    .line 5
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->Lock:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    if-ne p1, v0, :cond_4

    .line 6
    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    xor-int/2addr p1, v2

    return p1

    .line 7
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->SeatBelt:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    if-ne p1, v0, :cond_5

    .line 8
    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    xor-int/2addr p1, v2

    return p1

    .line 9
    :cond_5
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->DoorOpen:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    if-ne p1, v0, :cond_6

    .line 10
    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    xor-int/2addr p1, v2

    return p1

    .line 11
    :cond_6
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->x:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method private K(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->t:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 3
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->t:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 5
    :cond_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->t:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 7
    :cond_2
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->t:Z

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_3
    return-void
.end method


# virtual methods
.method protected G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;)Z
    .locals 0

    .line 1
    sget-boolean p1, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->B:Z

    return p1
.end method

.method protected J(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 4

    .line 1
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p4, v0, :cond_0

    .line 2
    sget-object p4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 3
    new-instance p4, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p4, v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->A:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 4
    :cond_0
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->v:Z

    const/4 v0, 0x1

    if-nez p4, :cond_1

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->A:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->v:Z

    .line 6
    new-instance p4, Lcn/mucang/android/jiakaoyi/hpmap/model/ReportStepModel;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    invoke-direct {p4, v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/ReportStepModel;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 7
    :cond_1
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->x:Z

    if-nez p4, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget-boolean p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    if-nez p4, :cond_2

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->x:Z

    .line 9
    :cond_2
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const/4 v2, 0x0

    if-ne p4, v1, :cond_4

    .line 10
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz p4, :cond_4

    .line 11
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->A:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p4

    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->s:Z

    .line 12
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->K(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;)V

    .line 13
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->y:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    invoke-direct {p0, p2, p4}, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->I(Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    sput-boolean v2, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->B:Z

    .line 15
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 16
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->w:Z

    if-eqz p2, :cond_3

    .line 17
    new-instance p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    invoke-direct {p2, v2, v0, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;-><init>(ZZLcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 18
    :cond_3
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 19
    :cond_4
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->u:Z

    if-nez p2, :cond_7

    .line 20
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->z:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    const/4 p3, 0x1

    .line 21
    :goto_0
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->z:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_6

    .line 22
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->z:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-direct {p0, p4, v1}, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->I(Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 23
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->u:Z

    goto :goto_1

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 24
    :cond_6
    :goto_1
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->u:Z

    if-nez p3, :cond_7

    .line 25
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->I(Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 26
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->z:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method protected d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 1

    .line 1
    sget-boolean p1, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->B:Z

    if-eqz p1, :cond_0

    .line 2
    instance-of p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    if-eqz p1, :cond_0

    move-object p1, p3

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->o:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->w:Z

    .line 4
    new-instance p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;-><init>(ZZLcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 5
    :cond_0
    sget-boolean p1, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->B:Z

    return p1
.end method

.method protected bridge synthetic e(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->J(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method protected w()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->A:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    return-void
.end method
