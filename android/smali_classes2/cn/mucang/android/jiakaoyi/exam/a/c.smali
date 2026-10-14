.class public Lcn/mucang/android/jiakaoyi/exam/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcn/mucang/android/jiakaoyi/exam/a/c;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/mucang/android/jiakaoyi/engine/i/c$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->c:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    return-void
.end method

.method private a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->c:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u521b\u5efa\u968f\u673a\u9879\u76ee: stepInfo stepIndexOnRoute= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->c:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " step "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->c:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static b()Lcn/mucang/android/jiakaoyi/exam/a/c;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/a/c;->d:Lcn/mucang/android/jiakaoyi/exam/a/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/a/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/a/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/a/c;->d:Lcn/mucang/android/jiakaoyi/exam/a/c;

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/a/c;->d:Lcn/mucang/android/jiakaoyi/exam/a/c;

    return-object v0
.end method

.method private c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public d(Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BanMaXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/exam/a/c;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BusStation:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {p0, p1, v1}, Lcn/mucang/android/jiakaoyi/exam/a/c;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BusStationStepConfig;

    .line 4
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_School:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {p0, p1, v2}, Lcn/mucang/android/jiakaoyi/exam/a/c;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;->p215122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BusStationStepConfig;->p213122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 7
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;->p214122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 8
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Random  BanMaXian "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ; BusStation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ; School "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    .line 9
    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->q:Ljava/util/List;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 10
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    if-eqz v5, :cond_3

    .line 11
    iget v6, v5, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    if-lez v6, :cond_3

    if-eqz v0, :cond_4

    .line 12
    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BanMaXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v6, v7, :cond_6

    :cond_4
    if-eqz v1, :cond_5

    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BusStation:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v6, v7, :cond_6

    :cond_5
    if-eqz v2, :cond_7

    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_School:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v6, v7, :cond_7

    :cond_6
    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_3

    .line 13
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->b:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 14
    :cond_8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/a/c;->a()V

    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/engine/i/c$b;)Z
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->c:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    if-eqz v1, :cond_0

    .line 2
    iget v2, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    if-ne v2, v0, :cond_0

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->a:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->a:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->c:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->a:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->a:Landroid/location/Location;

    .line 4
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/a/c;->c:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->a:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89e6\u53d1\u968f\u673a\u9879\u76ee: stepIndexOnRoute= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " step "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
