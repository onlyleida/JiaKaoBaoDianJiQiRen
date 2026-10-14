.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearRunningDistanceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompatibleGearData(Lcn/mucang/android/jiakaoyi/signal/center/model/c;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    iget v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-lt v0, v1, :cond_3

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-gt v0, v1, :cond_3

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;

    move-result-object v0

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-gt p1, p2, :cond_2

    add-int/lit8 p2, p1, -0x1

    .line 5
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;

    move-result-object p2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_0

    .line 7
    iget v1, p2, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->n:F

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->n:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    :goto_1
    move-object v0, p2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
