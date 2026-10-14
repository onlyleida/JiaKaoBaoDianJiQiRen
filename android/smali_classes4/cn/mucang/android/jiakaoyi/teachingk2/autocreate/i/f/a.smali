.class public Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

.field public final b:D

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    .line 3
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->b:D

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->d:Z

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->c:Z

    return-void
.end method

.method private static a(D)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4046800000000000L    # 45.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p0, "\u56de\u6b63"

    goto :goto_1

    :cond_1
    const-wide v0, 0x407f400000000000L    # 500.0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_2

    const-string p0, "\u5411\u53f3\u6253\u6ee1"

    goto :goto_1

    :cond_2
    const-wide v0, 0x4072c00000000000L    # 300.0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_3

    const-string p0, "\u5411\u53f3\u6253\u4e00\u5708"

    goto :goto_1

    :cond_3
    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_4

    const-string p0, "\u5411\u53f3\u6253\u534a\u5708"

    goto :goto_1

    :cond_4
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_5

    const-string p0, "\u5411\u53f3\u6253\u56db\u5206\u4e4b\u4e00\u5708"

    goto :goto_1

    :cond_5
    const-wide v0, -0x3f80c00000000000L    # -500.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_6

    const-string p0, "\u5411\u5de6\u6253\u6ee1"

    goto :goto_1

    :cond_6
    const-wide v0, -0x3f8d400000000000L    # -300.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_7

    const-string p0, "\u5411\u5de6\u6253\u4e00\u5708"

    goto :goto_1

    :cond_7
    const-wide/high16 v0, -0x3fa2000000000000L    # -120.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_8

    const-string p0, "\u5411\u5de6\u6253\u534a\u5708"

    goto :goto_1

    :cond_8
    const-wide/high16 v0, -0x3fb2000000000000L    # -60.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_9

    const-string p0, "\u5411\u5de6\u6253\u56db\u5206\u4e4b\u4e00\u5708"

    goto :goto_1

    :cond_9
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_a

    const-string p0, "\u5411\u53f3\u6253"

    goto :goto_1

    :cond_a
    const-string p0, "\u5411\u5de6\u6253"

    :goto_1
    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/model/Step;II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "II)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->c:Z

    iput-boolean v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->isRange:Z

    const/16 v2, 0x96

    .line 3
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setWidth(I)V

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    const/4 v2, 0x2

    .line 5
    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    .line 6
    iput-object p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    .line 7
    iget v2, p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    const-wide/16 v2, 0x0

    .line 8
    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->examSiteId:Ljava/lang/String;

    .line 9
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->f()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->programmeId:Ljava/lang/String;

    .line 10
    iput p3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    .line 11
    iput p4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    .line 13
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    .line 15
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e:Ljava/lang/String;

    if-nez v5, :cond_0

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->b:D

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->a(D)Ljava/lang/String;

    move-result-object v5

    .line 16
    :cond_0
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-direct {v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->sound(Z)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->d:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->c:Z

    if-nez v1, :cond_2

    .line 19
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    .line 20
    iput v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    .line 21
    iput-object p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    .line 22
    iget p1, p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    .line 23
    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->examSiteId:Ljava/lang/String;

    .line 24
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->programmeId:Ljava/lang/String;

    .line 25
    iput p3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    .line 26
    iput p4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    .line 28
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, p4, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object p2

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-wide p3, p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    invoke-virtual {p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setReportKey(J)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    .line 30
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->f:Ljava/lang/String;

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5373\u5c06"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->b:D

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->a(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u65b9\u5411\u76d8"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    :cond_1
    iget-object p2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-direct {p3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->c:Z

    return-object p0
.end method

.method public e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;
    .locals 1

    const-string v0, "\u8bf7\u505c\u8f66"

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e:Ljava/lang/String;

    const-string v0, "\u5373\u5c06\u505c\u8f66"

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->f:Ljava/lang/String;

    return-object p0
.end method
