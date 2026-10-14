.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser$Creator;,
        Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser$Holder;
    }
.end annotation


# instance fields
.field private final variableCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser$Creator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->variableCache:Ljava/util/Map;

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Angle:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/h;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Light:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/a;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Gear:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/v;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/v;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Laba:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/b;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/b;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->BianDao:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/x;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/x;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Distance:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/d0;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/d0;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->FootBrake:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/n;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/n;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Engine:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/z;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/z;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Door:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/i;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->FingerPrint:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/e0;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/e0;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->AroundCar:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/o;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/o;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->ThreeTouch:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/u;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/u;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->DiaoTou:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/p;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/p;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->HandBrake:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/c;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->SeatBelt:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/w;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/w;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->SpeedUp:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/r;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/r;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->SpeedDown:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/a0;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/a0;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->StopCar:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/q;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/q;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->HuiZhen:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/g;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/g;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->ZhuanWan:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/y;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/y;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Offset:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/s;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/s;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Time:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/d;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->QiBu:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/c0;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/c0;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Clutch:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/t;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->KeepLight:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/b0;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/b0;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->level:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->level:I

    sub-int/2addr p0, p1

    return p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->position:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->position:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private createLevelVariables(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/e;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/e;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    if-eqz v3, :cond_0

    .line 5
    iget v5, v4, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->level:I

    if-eq v5, v1, :cond_1

    .line 6
    :cond_0
    iget v1, v4, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->level:I

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    invoke-virtual {p0, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->getVariableHandler(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 10
    new-instance v6, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;

    invoke-direct {v6, v4, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private fillVariables(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    .line 3
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->ruleCode:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->ruleCode:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    const-string v3, " ; variable "

    const-string v4, "K3Teach"

    if-eqz v2, :cond_1

    .line 5
    :try_start_0
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 7
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->value:Ljava/lang/Double;

    .line 8
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    .line 9
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ruleCode\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->ruleCode:Ljava/lang/Integer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u89e3\u6790\u51fa\u9519ruleCode\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->ruleCode:Ljava/lang/Integer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 12
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method public static getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser$Holder;->access$100()Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createActionHandler(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;)V

    .line 2
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->createLevelVariables(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->entryList:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->createLevelVariables(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->errorEntryList:Ljava/util/List;

    :cond_1
    return-object v0
.end method

.method public getVariableHandler(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;",
            ">(TT;)",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler<",
            "+",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->variableCache:Ljava/util/Map;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->type:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser$Creator;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser$Creator;->create()Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setRuleConfigValue(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-direct {p0, p2, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->fillVariables(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 8
    invoke-direct {p0, p2, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->fillVariables(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public transformTeachData(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    .line 2
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 3
    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/f;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/f;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    .line 6
    iput v2, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->position:I

    .line 7
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->value:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->parseVariables(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    .line 8
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorValue:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->parseVariables(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method
