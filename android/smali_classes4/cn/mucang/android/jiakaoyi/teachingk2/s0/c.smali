.class public Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;
.super Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;",
        "Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final W:[Ljava/lang/String;

.field private static final X:[Ljava/lang/String;


# instance fields
.field private A:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcn/mucang/android/jiakaoyi/framework/base/model/a;

.field private C:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

.field private D:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:I

.field private J:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

.field public L:Z

.field private M:Z

.field private final N:Z

.field private final O:Z

.field private P:I

.field private final Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

.field private final R:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

.field private S:Z

.field private T:I

.field private U:J

.field private V:I

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field private z:Lcn/mucang/android/jiakaoyi/signal/utils/b;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_has_not_started:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_drive_into_project:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    sget v5, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_youdaoku:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v1, v8

    sget v7, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_zuochuku:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v1, v10

    sget v9, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_zuodaoku:I

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    aput-object v11, v1, v12

    sget v11, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_youchuku:I

    invoke-static {v11}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    aput-object v13, v1, v14

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->W:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v11}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v14

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->X:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->s:I

    .line 4
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->y:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->F:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->H:Z

    .line 7
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I:I

    .line 8
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-direct {p3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;-><init>(I)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    .line 9
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-direct {p3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;-><init>(I)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->R:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    .line 10
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->S:Z

    .line 11
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->T:I

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->U:J

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->V:I

    const-string p1, "keySwitchStep"

    .line 14
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N:Z

    const-string p1, "keyJudgePress"

    .line 15
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->O:Z

    return-void
.end method

.method private H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->T:I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->c(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->T:I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->h(II)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->T:I

    .line 4
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_please_forward_gear_train:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_1
    return v1

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p0, p3, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->f()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object p1

    .line 7
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_start_substep_train:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->desc:Ljava/lang/String;

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return p3
.end method

.method private I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;)Z
    .locals 1

    .line 1
    iget v0, p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;->a:I

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;->a:I

    .line 3
    :cond_1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;->b()Z

    move-result p1

    return p1
.end method

.method static synthetic J(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->l(Lcn/mucang/android/jiakaoyi/engine/model/Step;IZ)V

    return-void
.end method

.method private static K(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    .line 1
    sget p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_unknown_substep:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->W:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->X:[Ljava/lang/String;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p1, :cond_2

    aget-object p0, v2, p0

    goto :goto_0

    :cond_2
    aget-object p0, v1, p0

    :goto_0
    return-object p0

    .line 5
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private M(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V
    .locals 8

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->A:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->A:Landroid/util/SparseArray;

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->B:Lcn/mucang/android/jiakaoyi/framework/base/model/a;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/model/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/base/model/a;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->B:Lcn/mucang/android/jiakaoyi/framework/base/model/a;

    .line 6
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->A:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->A:Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->A:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->A:Landroid/util/SparseArray;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    cmpl-double v2, v4, v6

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 7
    :goto_0
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->z:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-nez v4, :cond_4

    .line 8
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->z:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 9
    :cond_4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->z:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v4}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    :goto_1
    int-to-float v0, v0

    .line 10
    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    double-to-float p1, v4

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    float-to-double v4, p1

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->A:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->A:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float p1, v4

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    mul-float v0, v0, p1

    .line 11
    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-int p1, v3

    .line 12
    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-int p2, v3

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->B:Lcn/mucang/android/jiakaoyi/framework/base/model/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8f66\u8eab\u4f4d\u7f6e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , \u89d2\u5ea6 : "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p2, v0

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    const-string p1, "\u53f3\u5e93"

    goto :goto_2

    :cond_6
    const-string p1, "\u5de6\u5e93"

    :goto_2
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcn/mucang/android/jiakaoyi/framework/base/model/a;->a:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->B:Lcn/mucang/android/jiakaoyi/framework/base/model/a;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private O(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private P(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 2
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->O(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->O(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->O(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->O(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    .line 9
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->O(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    .line 11
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 12
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->O(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->u:Z

    .line 13
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->M:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->O:Z

    if-nez p1, :cond_4

    .line 14
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->u:Z

    .line 15
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, v0, :cond_5

    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 16
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->u:Z

    .line 17
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->v:Z

    .line 18
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->w:Z

    .line 19
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->x:Z

    .line 20
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eq p1, v0, :cond_a

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eq p1, v0, :cond_a

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, p2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->t:Z

    return-void
.end method

.method private Q(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->y:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->y:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_1

    .line 5
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 6
    :cond_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->y:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_2

    .line 7
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 8
    :cond_2
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->y:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_3

    .line 9
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 10
    :cond_3
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->y:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_4

    .line 11
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 12
    :cond_4
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->y:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, v1, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->G:Z

    if-eqz p1, :cond_6

    .line 14
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_6
    return-void
.end method

.method private R(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;Z)V
    .locals 6

    .line 1
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p5, :cond_1

    .line 2
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p5

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-direct {p0, p5, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;)Z

    move-result p5

    if-eqz p5, :cond_2

    :cond_1
    const/4 p5, 0x1

    .line 3
    iput p5, p4, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;->a:I

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->P:I

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->h(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/signal/c/e;ILcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method protected E()J
    .locals 2

    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method protected G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 3
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->n()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-static {p2, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->l(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 4
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v4, :cond_0

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v4, :cond_0

    iget-object v4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 5
    invoke-static {p2, v4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->All:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;)V

    .line 7
    iput v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->s:I

    return v3

    :cond_0
    if-eqz v2, :cond_1

    .line 8
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v2, :cond_1

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v2, :cond_1

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 9
    invoke-static {p2, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->All:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;)V

    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->s:I

    return v3

    .line 12
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->g()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_6

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->D:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-eqz v2, :cond_6

    if-ne p3, v2, :cond_6

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 13
    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->D:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->D:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->D:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->D:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->C:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 17
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->All:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;)V

    const/4 p1, 0x3

    .line 18
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->s:I

    return v3

    .line 19
    :cond_6
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    .line 20
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 21
    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    iput v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->s:I

    return v3

    .line 23
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->All:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;)V

    .line 25
    iput v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->s:I

    return v3

    .line 26
    :cond_8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;->a()V

    .line 27
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->g()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-direct {p0, p2, p1, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x4

    .line 28
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->s:I

    return v3

    :cond_9
    return v4
.end method

.method protected L(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 1
    iput-object v9, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->C:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/a;->a()Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    move-result-object v0

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    .line 3
    iget-boolean v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->L:Z

    .line 4
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;->a()V

    .line 5
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->R:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;->a()V

    const/4 v10, 0x0

    .line 6
    iput v10, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->P:I

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->r()I

    move-result v0

    if-lez v0, :cond_0

    .line 9
    iput v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->V:I

    .line 10
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    return-void

    .line 11
    :cond_1
    iget v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->V:I

    if-lez v0, :cond_2

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v1, v2, :cond_2

    .line 12
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->find(I)Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    move-result-object v0

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    :cond_2
    const/4 v0, -0x1

    .line 13
    iput v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->V:I

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->g()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 15
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-direct {v6, v8, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 17
    invoke-static {v1, v2, v3, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->j(Lcn/mucang/android/jiakaoyi/signal/pos/c;DD)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->b(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->m(Z)V

    .line 19
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_please_forward_gear_continue_train:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto/16 :goto_1

    .line 20
    :cond_4
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v2, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->U:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 21
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    const-wide/16 v2, 0x7d0

    sub-long/2addr v0, v2

    iput-wide v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->U:J

    .line 22
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v2, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->U:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    .line 23
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->U:J

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 30
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_in_project_continue_train:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_6
    return-void

    .line 31
    :cond_7
    :goto_1
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const/4 v2, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-ne v0, v1, :cond_16

    if-eqz v11, :cond_f

    .line 32
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->S:Z

    if-nez v0, :cond_9

    .line 33
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->S:Z

    .line 34
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-direct {v6, v8, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 35
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;

    invoke-direct {v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 41
    :cond_9
    :goto_2
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->E:Z

    .line 42
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->f()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object v0

    .line 43
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Line:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne v0, v1, :cond_b

    .line 44
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-direct {v6, v8, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 45
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step8:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-direct {v6, v7, v9, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_a
    return-void

    .line 46
    :cond_b
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Left:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne v0, v1, :cond_d

    .line 47
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-direct {v6, v8, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 48
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-direct {v6, v7, v9, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_c
    return-void

    .line 49
    :cond_d
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Right:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne v0, v1, :cond_e

    .line 50
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-direct {v6, v8, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 51
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-direct {v6, v7, v9, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_e
    return-void

    .line 52
    :cond_f
    iget v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->s:I

    if-ne v0, v13, :cond_10

    .line 53
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_3

    :cond_10
    if-ne v0, v2, :cond_11

    .line 54
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_3

    :cond_11
    if-ne v0, v12, :cond_12

    .line 55
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_3

    .line 56
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isBack()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v8, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 57
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_3

    .line 58
    :cond_13
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isBack()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v8, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 59
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_3

    .line 60
    :cond_14
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 61
    :cond_15
    :goto_3
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 62
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 63
    iput v10, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->s:I

    .line 64
    :cond_16
    iget v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I:I

    if-nez v0, :cond_17

    .line 65
    iget v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->e:I

    iput v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I:I

    .line 66
    :cond_17
    invoke-direct {v6, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->P(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 67
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v0, :cond_18

    .line 68
    iget v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->P:I

    invoke-static {v0, v13, v13}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    iput v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->P:I

    .line 69
    :cond_18
    invoke-direct {v6, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 70
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->y:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_19

    .line 71
    iget v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->P:I

    invoke-static {v0, v2, v13}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    iput v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->P:I

    :cond_19
    if-eqz v11, :cond_1a

    .line 72
    iget v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->P:I

    iget-object v1, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-direct {v6, v8, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;)Z

    move-result v1

    invoke-static {v0, v12, v1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    iput v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->P:I

    const/4 v1, 0x5

    .line 73
    iget-object v2, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v8, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    iput v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->P:I

    const/4 v1, 0x4

    .line 74
    iget-object v2, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v8, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    iput v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->P:I

    .line 75
    :cond_1a
    invoke-direct {v6, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->M(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 76
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->J:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-nez v0, :cond_1b

    .line 77
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v0

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->J:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 78
    :cond_1b
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->H:Z

    if-nez v0, :cond_1c

    .line 79
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->J:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v8, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->H:Z

    .line 80
    :cond_1c
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v14, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v14, :cond_1d

    .line 81
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->M:Z

    .line 82
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_1d

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v8, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 83
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 84
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->E:Z

    .line 85
    :cond_1d
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v15, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v15, :cond_25

    .line 86
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->M:Z

    if-eqz v11, :cond_1e

    .line 87
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->E:Z

    .line 88
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 89
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v8, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 90
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Right:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->R:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object v12, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->R(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;Z)V

    .line 91
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->f()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object v0

    if-ne v0, v12, :cond_23

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 92
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_4

    .line 93
    :cond_1e
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 94
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v8, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 95
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->L:Z

    if-nez v0, :cond_1f

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Right:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-eq v1, v2, :cond_20

    :cond_1f
    if-eqz v0, :cond_21

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Left:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-ne v0, v1, :cond_21

    .line 96
    :cond_20
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_4

    .line 97
    :cond_21
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_4

    .line 98
    :cond_22
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 99
    invoke-virtual {v6, v14, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 100
    :cond_23
    :goto_4
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-direct {v6, v8, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-nez v0, :cond_24

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_25

    .line 101
    :cond_24
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->E:Z

    .line 102
    :cond_25
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v12, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    if-ne v0, v12, :cond_2f

    .line 103
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->M:Z

    if-eqz v11, :cond_27

    .line 104
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->E:Z

    .line 105
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_2f

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v8, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 106
    :cond_26
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto/16 :goto_6

    .line 107
    :cond_27
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->L:Z

    if-nez v0, :cond_28

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Right:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-eq v1, v2, :cond_29

    :cond_28
    if-eqz v0, :cond_2a

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Left:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-ne v0, v1, :cond_2a

    .line 108
    :cond_29
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 109
    :cond_2a
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v8, v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/c;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 110
    invoke-static {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpg-double v2, v0, v16

    if-gez v2, :cond_2b

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 111
    invoke-static {v8, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_5

    :cond_2b
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_2e

    .line 112
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->L:Z

    if-nez v0, :cond_2c

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Left:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-eq v1, v2, :cond_2f

    :cond_2c
    if-eqz v0, :cond_2d

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Right:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-ne v0, v1, :cond_2d

    goto :goto_6

    .line 113
    :cond_2d
    invoke-virtual {v6, v14, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_6

    .line 114
    :cond_2e
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_2f

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v8, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 115
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 116
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->E:Z

    .line 117
    :cond_2f
    :goto_6
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v14, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v14, :cond_39

    .line 118
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->M:Z

    if-eqz v11, :cond_32

    .line 119
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->E:Z

    .line 120
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 121
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v8, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 122
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Left:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->R:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object v10, v5

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->R(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;Z)V

    .line 123
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 124
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->f()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object v0

    if-ne v0, v10, :cond_30

    .line 125
    invoke-virtual {v6, v12, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto/16 :goto_8

    .line 126
    :cond_30
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->f()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Line:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne v0, v1, :cond_31

    .line 127
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step8:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_8

    .line 128
    :cond_31
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->f()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Right:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne v0, v1, :cond_39

    .line 129
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_8

    .line 130
    :cond_32
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 131
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v8, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 132
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->L:Z

    if-nez v0, :cond_33

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Left:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-eq v1, v2, :cond_34

    :cond_33
    if-eqz v0, :cond_35

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Right:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-ne v0, v1, :cond_35

    .line 133
    :cond_34
    invoke-virtual {v6, v12, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_7

    .line 134
    :cond_35
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_7

    .line 135
    :cond_36
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 136
    invoke-virtual {v6, v12, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 137
    :cond_37
    :goto_7
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-direct {v6, v8, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-nez v0, :cond_38

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_39

    .line 138
    :cond_38
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->E:Z

    .line 139
    :cond_39
    :goto_8
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v10, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v10, :cond_46

    if-eqz v11, :cond_3b

    .line 140
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->E:Z

    .line 141
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_46

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v8, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 142
    :cond_3a
    invoke-virtual {v6, v15, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto/16 :goto_c

    .line 143
    :cond_3b
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->L:Z

    if-nez v0, :cond_3c

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Left:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-eq v1, v2, :cond_3d

    :cond_3c
    if-eqz v0, :cond_3e

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Right:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-ne v0, v1, :cond_3e

    .line 144
    :cond_3d
    invoke-virtual {v6, v12, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 145
    :cond_3e
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v8, v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/c;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 146
    invoke-static {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpg-double v2, v0, v16

    if-gez v2, :cond_3f

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 147
    invoke-static {v8, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    goto :goto_9

    :cond_3f
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_42

    .line 148
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->L:Z

    if-nez v0, :cond_40

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Right:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-eq v1, v2, :cond_46

    :cond_40
    if-eqz v0, :cond_41

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Left:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-ne v0, v1, :cond_41

    goto :goto_c

    .line 149
    :cond_41
    invoke-virtual {v6, v12, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_c

    .line 150
    :cond_42
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_46

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v8, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 151
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N:Z

    if-nez v0, :cond_45

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->L:Z

    if-nez v0, :cond_43

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Right:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-eq v1, v2, :cond_45

    :cond_43
    if-eqz v0, :cond_44

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Left:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-ne v0, v1, :cond_44

    goto :goto_a

    .line 152
    :cond_44
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->M:Z

    goto :goto_b

    .line 153
    :cond_45
    :goto_a
    invoke-virtual {v6, v15, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    :goto_b
    const/4 v0, 0x0

    .line 154
    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->E:Z

    .line 155
    :cond_46
    :goto_c
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq v0, v15, :cond_47

    if-ne v0, v14, :cond_48

    .line 156
    :cond_47
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->j:Z

    if-nez v0, :cond_48

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v8, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 157
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->P()V

    :cond_48
    if-eqz v11, :cond_4d

    .line 158
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v8, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step8:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v8, :cond_49

    .line 159
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_4c

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 160
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step9:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_d

    .line 161
    :cond_49
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step9:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v1, :cond_4c

    .line 162
    sget-object v11, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Line:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->R:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->R(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;Z)V

    .line 163
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 164
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->f()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object v0

    if-ne v0, v11, :cond_4a

    .line 165
    invoke-virtual {v6, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_d

    .line 166
    :cond_4a
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->f()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Left:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne v0, v1, :cond_4b

    .line 167
    invoke-virtual {v6, v12, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    goto :goto_d

    .line 168
    :cond_4b
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->f()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Right:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne v0, v1, :cond_4c

    .line 169
    invoke-virtual {v6, v10, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 170
    :cond_4c
    :goto_d
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->f()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object v1

    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->R:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->R(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;Z)V

    .line 171
    :cond_4d
    iget v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4e

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v10, :cond_4e

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->G:Z

    if-eqz v0, :cond_4e

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->F:Z

    goto :goto_e

    :cond_4e
    const/4 v0, 0x0

    .line 173
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->F:Z

    .line 174
    :goto_e
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->M:Z

    if-eqz v1, :cond_4f

    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->O:Z

    if-nez v1, :cond_4f

    .line 175
    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->F:Z

    :cond_4f
    return-void
.end method

.method public N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 3
    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, v3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;-><init>(ILcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 4
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p1, p2, :cond_1

    .line 5
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/a;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5012\u5e93 : step:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method protected d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 7

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 3
    invoke-interface {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->D:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 5
    :cond_0
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->n()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-static {p2, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->l(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 6
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v4, :cond_1

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v4, :cond_1

    .line 7
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->k()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v4

    invoke-static {p2, v4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iput v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->s:I

    return v3

    :cond_1
    if-eqz v2, :cond_2

    .line 9
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v2, :cond_2

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v2, :cond_2

    .line 10
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v2

    invoke-static {p2, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->s:I

    return v3

    .line 12
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->g()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->D:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-eqz v2, :cond_7

    if-ne v2, p3, :cond_7

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->D:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 13
    invoke-static {p2, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 14
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->D:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_4

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->D:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    .line 15
    :goto_1
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->D:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast v5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->D:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast v5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const/4 v4, 0x1

    :cond_6
    if-eqz v2, :cond_7

    if-eqz v4, :cond_7

    const/4 p1, 0x3

    .line 16
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->s:I

    return v3

    .line 17
    :cond_7
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->n()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-static {p2, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v2, :cond_8

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_8

    .line 18
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    .line 19
    :cond_8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;->a()V

    .line 20
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, p3

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->Q:Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;

    invoke-direct {p0, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c$a;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p1, 0x4

    .line 21
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->s:I

    return v3

    .line 22
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->L(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method protected w()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->y:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->z:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->A:Landroid/util/SparseArray;

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->B:Lcn/mucang/android/jiakaoyi/framework/base/model/a;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->C:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {p0, v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->N(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    return-void
.end method
