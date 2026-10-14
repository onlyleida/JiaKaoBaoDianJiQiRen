.class public final Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/location/DefaultLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/device/LocationDataStrategy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "cn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1",
        "Lcn/mucang/sundial/android/location/DefaultLocationListener;",
        "Landroid/location/Location;",
        "location",
        "Lkotlin/v;",
        "onLocationChanged",
        "(Landroid/location/Location;)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/device/LocationDataStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "location"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v2}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$readSavedMileageIfNeed(Lcn/mucang/sundial/library/device/LocationDataStrategy;)V

    .line 2
    iget-object v2, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v2}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getLastLocation$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Landroid/location/Location;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v3}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getLastLocationTime$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)J

    move-result-wide v3

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    cmpg-double v9, v5, v7

    if-nez v9, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    cmpg-double v9, v5, v7

    if-nez v9, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 6
    iget-object v7, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v7, v1}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$setLastLocation$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;Landroid/location/Location;)V

    .line 7
    iget-object v7, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v7, v5, v6}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$setLastLocationTime$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;J)V

    if-eqz v2, :cond_d

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-gtz v9, :cond_1

    goto/16 :goto_3

    .line 8
    :cond_1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v9

    const-string v10, "SundialManager.getInstance()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcn/mucang/sundial/android/SundialManager;->getMaxSpeedLimit()F

    move-result v9

    .line 9
    sget-object v11, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    invoke-virtual {v11}, Lcn/mucang/sundial/library/util/LoginUtil;->studentLoginSuccess()Z

    move-result v11

    const-string v12, " \u6700\u5927\u65f6\u901f\uff1a"

    const-string v13, ""

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v11, :cond_7

    .line 10
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v11

    invoke-static {v11, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v11

    .line 11
    iget-object v15, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v15}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getLastCourseCode$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getCourseCode()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v7, v17

    goto :goto_0

    :cond_2
    move-object/from16 v7, v16

    :goto_0
    invoke-static {v15, v7}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_8

    .line 12
    iget-object v7, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getCourseCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    move-object v13, v8

    :cond_3
    invoke-static {v7, v13}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$setLastCourseCode$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v7

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getCourseCode()Ljava/lang/String;

    move-result-object v16

    :cond_4
    move-object/from16 v8, v16

    invoke-virtual {v7, v8}, Lcn/mucang/sundial/android/SundialManager;->getCourseTypeByCourseCode(Ljava/lang/String;)I

    move-result v7

    .line 14
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v8

    invoke-static {v8, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcn/mucang/sundial/android/SundialManager;->getK2LearnDataFactor()F

    move-result v8

    .line 15
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v11

    invoke-static {v11, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcn/mucang/sundial/android/SundialManager;->getK3LearnDataFactor()F

    move-result v10

    .line 16
    iget-object v11, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    const/4 v13, 0x2

    if-ne v7, v13, :cond_5

    move v14, v8

    goto :goto_1

    :cond_5
    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    move v14, v10

    :cond_6
    :goto_1
    invoke-static {v11, v14}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$setFactor$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;F)V

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u5207\u6362\u79d1\u76ee\uff1a"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " \u653e\u5927\u56e0\u5b50\uff1a"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v7}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getFactor$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)F

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_7
    iget-object v7, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v7}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getFactor$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)F

    move-result v7

    cmpg-float v7, v7, v14

    if-eqz v7, :cond_8

    .line 19
    iget-object v7, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v7, v14}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$setFactor$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;F)V

    .line 20
    iget-object v7, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v7, v13}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$setLastCourseCode$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;Ljava/lang/String;)V

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u65e0\u79d1\u76ee\u8bad\u7ec3 \u653e\u5927\u56e0\u5b50\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v8}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getFactor$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 22
    :cond_8
    :goto_2
    invoke-virtual {v1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v7

    iget-object v8, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v8}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getFactor$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)F

    move-result v8

    mul-float v7, v7, v8

    const v8, 0x3e99999a    # 0.3f

    invoke-static {v7, v8}, Lkotlin/a0/d;->a(FF)F

    move-result v7

    sub-long/2addr v5, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v7, v3

    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    cmp-long v8, v5, v10

    if-lez v8, :cond_a

    long-to-float v5, v5

    div-float v3, v5, v3

    const/16 v6, 0xe10

    int-to-float v6, v6

    div-float/2addr v3, v6

    int-to-float v8, v4

    cmpl-float v8, v3, v8

    if-lez v8, :cond_a

    div-float v3, v7, v3

    .line 23
    iget-object v8, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v8}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getCarModel$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v8

    iput v3, v8, Lcn/mucang/sundial/android/model/CarModel;->speed:F

    cmpl-float v8, v3, v9

    if-lez v8, :cond_9

    .line 24
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u5f53\u524d\u8d85\u901f\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " km/h"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u4f4d\u7f6e\u79fb\u52a8\uff1a"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :cond_9
    if-lez v8, :cond_a

    const/16 v1, 0x32

    int-to-float v2, v1

    cmpl-float v3, v9, v2

    if-lez v3, :cond_a

    .line 26
    iget-object v3, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v3}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getCarModel$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v3

    int-to-double v7, v1

    sub-float/2addr v9, v2

    float-to-double v1, v9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v1, v1, v9

    add-double/2addr v7, v1

    double-to-float v1, v7

    iput v1, v3, Lcn/mucang/sundial/android/model/CarModel;->speed:F

    .line 27
    iget-object v1, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v1}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getCarModel$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/sundial/android/model/CarModel;->speed:F

    div-float/2addr v1, v6

    const/16 v2, 0x3e8

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v7, v1, v5

    :cond_a
    int-to-float v1, v4

    cmpl-float v1, v7, v1

    if-lez v1, :cond_b

    .line 28
    iget-object v1, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v1}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getCarModel$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v1

    iget v2, v1, Lcn/mucang/sundial/android/model/CarModel;->currentDistance:F

    add-float/2addr v2, v7

    iput v2, v1, Lcn/mucang/sundial/android/model/CarModel;->currentDistance:F

    .line 29
    iget-object v1, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v1}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getCarModel$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v1

    iget v2, v1, Lcn/mucang/sundial/android/model/CarModel;->totalDistance:F

    add-float/2addr v2, v7

    iput v2, v1, Lcn/mucang/sundial/android/model/CarModel;->totalDistance:F

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 31
    iget-object v3, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v3}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getLastSavedTime$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const/16 v5, 0x7530

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_b

    .line 32
    iget-object v3, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v3}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getPref$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 33
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "editor"

    .line 34
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v4, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v4}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getCarModel$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v4

    iget v4, v4, Lcn/mucang/sundial/android/model/CarModel;->totalDistance:F

    const-string v5, "mileage"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    iget-object v3, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v3, v1, v2}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$setLastSavedTime$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;J)V

    .line 38
    sget-object v1, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1$onLocationChanged$2;->INSTANCE:Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1$onLocationChanged$2;

    invoke-static {v1}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    .line 39
    :cond_b
    iget-object v1, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v1}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$setRpmAndGpsSpeed(Lcn/mucang/sundial/library/device/LocationDataStrategy;)V

    .line 40
    iget-object v1, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v1}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getDataCallBack$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v2, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v2}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getCarModel$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;->onResult(Lcn/mucang/sundial/android/model/CarModel;)V

    :cond_c
    return-void

    .line 41
    :cond_d
    :goto_3
    iget-object v1, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v1}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$setRpmAndGpsSpeed(Lcn/mucang/sundial/library/device/LocationDataStrategy;)V

    .line 42
    iget-object v1, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v1}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getDataCallBack$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v2, v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;->this$0:Lcn/mucang/sundial/library/device/LocationDataStrategy;

    invoke-static {v2}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->access$getCarModel$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;->onResult(Lcn/mucang/sundial/android/model/CarModel;)V

    .line 43
    :cond_e
    sget-object v1, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    new-instance v2, Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;

    invoke-direct {v2}, Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->post(Ljava/lang/Object;)V

    return-void
.end method
