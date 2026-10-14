.class public Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WheelSteerFactor"
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:D


# direct methods
.method public constructor <init>()V
    .locals 7

    const-wide v1, 0x3eebc20c30d19f67L    # 1.3236045129441394E-5

    const-wide v3, 0x3fac0352f0409568L    # 0.05471285994307601

    const-wide v5, 0x3fbcd80331c65434L    # 0.11267108884051497

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;->a:D

    .line 4
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;->b:D

    .line 5
    iput-wide p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;->c:D

    return-void
.end method


# virtual methods
.method public getX(D)D
    .locals 8

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;->b:D

    neg-double v2, v0

    mul-double v0, v0, v0

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;->a:D

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double v4, v4, v6

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;->c:D

    sub-double/2addr v6, p1

    mul-double v4, v4, v6

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    add-double/2addr v2, p1

    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;->a:D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double p1, p1, v0

    div-double/2addr v2, p1

    return-wide v2
.end method

.method public getY(D)D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;->a:D

    mul-double v0, v0, p1

    mul-double v0, v0, p1

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;->b:D

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;->c:D

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
