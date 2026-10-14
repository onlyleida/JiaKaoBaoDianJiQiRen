.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;,
        Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b<",
            "*",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
            "+",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            ">;>;"
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

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->a:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->b:Ljava/util/Map;

    .line 5
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/m;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 6
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/z;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/z;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 7
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/a;

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 8
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/HandBrakeVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/e;

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 9
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/FootBrakeVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/o;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/o;

    const/4 v2, 0x6

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 10
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/v;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/v;

    const/16 v2, 0x34

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 11
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/q;

    const/16 v2, 0x32

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 12
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarCrossLineVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/x;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/x;

    const/16 v2, 0x35

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 13
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/b0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/b0;

    const/16 v2, 0x19

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 14
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossOverLineVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/h;

    const/16 v2, 0x15

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 15
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarStopVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/a0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/a0;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 16
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/w;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/w;

    const/16 v2, 0x36

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 17
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarCrossRectVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/i;

    const/16 v2, 0x3a

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 18
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/p;

    const/16 v2, 0x37

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 19
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/c0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/c0;

    const/16 v2, 0x18

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 20
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/j;

    const/16 v2, 0x3b

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 21
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarFaceToLineVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/t;

    const/16 v2, 0x3c

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 22
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/r;

    const/16 v2, 0x3e

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 23
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/n;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/n;

    const/16 v2, 0x3f

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 24
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/g;

    const/16 v2, 0x40

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 25
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/l;

    const/16 v2, 0x50

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 26
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/LightVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/c;

    const/16 v2, 0x51

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 27
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayTimeVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/y;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/y;

    const/16 v2, 0x5a

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 28
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayDistanceVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/k;

    const/16 v2, 0x5b

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 29
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/s;

    const/16 v2, 0x52

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 30
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/b;

    const/16 v2, 0x64

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 31
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/u;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/u;

    const/4 v2, 0x7

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 32
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/d;

    const/16 v2, 0x8

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    .line 33
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/f;

    const/16 v2, 0x41

    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            ">(I)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$c;->a()Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            "T::",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
            "TC;>;>(",
            "Ljava/lang/Class<",
            "TC;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$c;->a()Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;->create()Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;

    move-result-object p0

    return-object p0
.end method

.method private c(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            "T::",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
            "TC;>;>(I",
            "Ljava/lang/Class<",
            "TC;>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0$b<",
            "TC;TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->a:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
