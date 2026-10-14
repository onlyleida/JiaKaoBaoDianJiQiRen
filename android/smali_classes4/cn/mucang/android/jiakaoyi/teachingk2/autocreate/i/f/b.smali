.class public Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->d:I

    .line 4
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->e:I

    return-void
.end method

.method public static a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 8

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    if-eqz p2, :cond_0

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v6, p1

    const-wide/16 v4, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "D)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    div-double/2addr v0, p2

    double-to-int p2, v0

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    add-int/lit8 p2, p2, 0x1

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-gt v2, p2, :cond_0

    .line 4
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    int-to-double v4, v2

    mul-double v4, v4, v0

    invoke-static {p0, p1, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static d(D)I
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public c(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->e()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    const-wide/16 v2, 0x0

    .line 6
    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->examSiteId:Ljava/lang/String;

    .line 7
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->programmeId:Ljava/lang/String;

    .line 8
    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->d:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->f()I

    move-result v2

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    .line 11
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->e()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->d:I

    invoke-direct {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;-><init>(II)V

    .line 12
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    .line 14
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    const-string v5, "\u91c7\u96c6\u6807\u51c6\u8f68\u8ff9"

    invoke-direct {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    .line 19
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->d:I

    iget v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->e:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->b(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/model/Step;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
