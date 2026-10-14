.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;",
            "Lcn/mucang/android/jiakaoyi/signal/utils/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/g;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V
    .locals 0

    .line 1
    check-cast p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/g;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    .line 3
    iput-object p2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 4
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    .line 5
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->j()I

    move-result p3

    iput p3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    .line 6
    iget-boolean p3, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->p:Z

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    iput p3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    .line 8
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;

    invoke-direct {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;-><init>()V

    .line 9
    iput v2, p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iput v2, p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;->gear:I

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u6321\u4f4d : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->desc:Ljava/lang/String;

    .line 12
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;

    invoke-direct {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;-><init>()V

    const/4 v2, 0x3

    .line 14
    iput v2, p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    .line 15
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    float-to-int v2, v2

    iput v2, p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;->speed:I

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u901f\u5ea6 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;->speed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->desc:Ljava/lang/String;

    .line 17
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;

    invoke-direct {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;-><init>()V

    const/4 v2, 0x4

    .line 19
    iput v2, p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    .line 20
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->direction:I

    iput v2, p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;->direction:I

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u8fd0\u52a8\u65b9\u5411 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->desc:Ljava/lang/String;

    .line 22
    iget-object p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;-><init>()V

    const/16 p3, 0x3f

    .line 24
    iput p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    .line 25
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/g;->a:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-nez p3, :cond_1

    .line 26
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object p3

    .line 27
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/g;->a:Ljava/util/Map;

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_1
    iget-object p2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 29
    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-int p3, v2

    int-to-double v2, p3

    iput-wide v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;->x:D

    .line 30
    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-int p2, p2

    int-to-double p2, p2

    iput-wide p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;->y:D

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8f66\u5b50\u5728\u66f2\u7ebf\u5750\u6807\u7cfb\u4e2d\u4f4d\u7f6e:("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;->x:D

    double-to-int p3, v2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;->y:D

    double-to-int p3, v2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->desc:Ljava/lang/String;

    .line 32
    iget-object p2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    const-class p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method
