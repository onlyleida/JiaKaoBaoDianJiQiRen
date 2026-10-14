.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V
    .locals 0

    .line 1
    check-cast p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/k;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    .line 2
    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    .line 4
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->j()I

    move-result p3

    iput p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    .line 5
    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->q:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    iput p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    .line 7
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;-><init>()V

    .line 8
    iput p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iput p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;->gear:I

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u6321\u4f4d : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->desc:Ljava/lang/String;

    .line 11
    iget-object p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;-><init>()V

    const/4 p3, 0x3

    .line 13
    iput p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    float-to-int p3, p3

    iput p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;->speed:I

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u901f\u5ea6 : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;->speed:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->desc:Ljava/lang/String;

    .line 16
    iget-object p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;-><init>()V

    const/4 p3, 0x4

    .line 18
    iput p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    .line 19
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->direction:I

    iput p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;->direction:I

    .line 20
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u8fd0\u52a8\u65b9\u5411 : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->desc:Ljava/lang/String;

    .line 21
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    const-class p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method
