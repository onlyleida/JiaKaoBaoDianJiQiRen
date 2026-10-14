.class public Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->list:[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    array-length v0, v0

    new-array v0, v0, [F

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->a:[F

    return-void
.end method

.method public static a(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z

    move-result p0

    return p0
.end method

.method private static b(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-static {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result p0

    return p0

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-static {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->f(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result p0

    return p0

    .line 7
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_3

    .line 8
    invoke-static {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result p0

    return p0

    .line 9
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_4

    .line 10
    invoke-static {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result p0

    return p0

    .line 11
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_5

    .line 12
    invoke-static {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->i(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result p0

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1
    invoke-static {p0, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result p0

    return p0
.end method

.method public static d(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {p0, v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->k(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {p0, v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->k(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result p0

    return p0
.end method

.method public static e(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {p0, v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->k(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result p0

    return p0
.end method

.method public static f(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {p0, v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->k(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {p0, v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->k(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result p0

    return p0
.end method

.method public static g(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {p0, v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->k(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {p0, v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->k(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result p0

    return p0
.end method

.method public static h(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {p0, v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->k(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result p0

    return p0
.end method

.method public static i(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {p0, v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->k(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {p0, v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->k(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z

    move-result p0

    return p0
.end method

.method private static j(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    if-gtz p2, :cond_1

    return p0

    .line 1
    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/16 v2, 0x5a

    if-ne p1, v1, :cond_2

    if-lt p2, v2, :cond_2

    return v0

    .line 2
    :cond_2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/16 v3, 0x32

    if-ne p1, v1, :cond_3

    if-lt p2, v3, :cond_3

    if-gt p2, v2, :cond_3

    return v0

    .line 3
    :cond_3
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v1, :cond_4

    const/16 v1, 0x41

    if-gt p2, v1, :cond_4

    const/16 v1, 0x21

    if-lt p2, v1, :cond_4

    return v0

    .line 4
    :cond_4
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v1, :cond_5

    if-gt p2, v3, :cond_5

    const/16 v1, 0x16

    if-lt p2, v1, :cond_5

    return v0

    .line 5
    :cond_5
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v1, :cond_6

    const/16 v1, 0x28

    if-gt p2, v1, :cond_6

    const/16 v1, 0xf

    if-le p2, v1, :cond_6

    return v0

    .line 6
    :cond_6
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v1, :cond_7

    if-lt p2, v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static k(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FI)Z
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->s()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p0, p1, p4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z

    move-result p0

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;F)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p0, v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->a:[F

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    aput p1, v0, p0

    :cond_0
    return-void
.end method

.method public static m(Lcn/mucang/android/jiakaoyi/signal/c/e;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    int-to-float p0, p0

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
