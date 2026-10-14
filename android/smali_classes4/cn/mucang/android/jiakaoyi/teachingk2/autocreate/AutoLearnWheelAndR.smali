.class public Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;
    }
.end annotation


# static fields
.field private static final b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;

    const-wide v1, 0x3eebc20c30d19f67L    # 1.3236045129441394E-5

    const-wide v3, 0x3fac0352f0409568L    # 0.05471285994307601

    const-wide v5, 0x3fbcd80331c65434L    # 0.11267108884051497

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;-><init>(DDD)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;

    const-string v1, "factor-wheel-steer-front"

    invoke-static {v1, v7, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->h(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;

    const-wide v2, -0x411b93ee645a37f5L    # -9.738036955229281E-6

    const-wide v4, 0x3fadee11837df8c0L    # 0.05845694284561054

    const-wide v6, 0x3fd536b79226ee36L    # 0.33146466515219986

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;-><init>(DDD)V

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;

    const-string v2, "factor-wheel-steer-back"

    invoke-static {v2, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->h(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;

    return-void
.end method

.method public static a(DZ)D
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    goto :goto_0

    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    :goto_0
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;->getY(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static b(DZ)D
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    goto :goto_0

    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    :goto_0
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;->getX(D)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public c(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->i()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->e()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->b(Z)Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->b(Z)Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 5
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nfront = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nback = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-object v0
.end method
