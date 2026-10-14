.class public Lcn/mucang/android/jiakaoyi/signal/car/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = -0x1

.field private static b:F = -1.0f

.field private static c:F = -1.0f

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/car/b;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static a()I
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/signal/car/b;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/signal/car/b;->a:I

    .line 6
    :cond_0
    sget v0, Lcn/mucang/android/jiakaoyi/signal/car/b;->a:I

    return v0
.end method

.method public static b()F
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lcn/mucang/android/jiakaoyi/signal/car/b;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/b;->a()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/car/b;->e(I)F

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/signal/car/b;->c:F

    .line 4
    :cond_1
    sget v0, Lcn/mucang/android/jiakaoyi/signal/car/b;->c:F

    return v0

    :cond_2
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static c()F
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lcn/mucang/android/jiakaoyi/signal/car/b;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/b;->a()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/car/b;->g(I)F

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/signal/car/b;->b:F

    .line 4
    :cond_1
    sget v0, Lcn/mucang/android/jiakaoyi/signal/car/b;->b:F

    return v0

    :cond_2
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_rpm_scale"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(I)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-gez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/car/b;->d(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/car/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    .line 4
    :cond_1
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->c(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_speed_scale"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(I)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-gez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/car/b;->f(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/car/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    .line 4
    :cond_1
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->c(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static h(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v0

    .line 3
    sput v0, Lcn/mucang/android/jiakaoyi/signal/car/b;->a:I

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/car/b;->f(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/car/b;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/car/b;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getSpeedScale()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/car/b;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getRpmScale()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getSpeedScale()F

    move-result v2

    sput v2, Lcn/mucang/android/jiakaoyi/signal/car/b;->b:F

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getRpmScale()F

    move-result v2

    sput v2, Lcn/mucang/android/jiakaoyi/signal/car/b;->c:F

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getSpeedScale()F

    move-result v2

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getRpmScale()F

    move-result p0

    invoke-static {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    :cond_1
    return-void
.end method
