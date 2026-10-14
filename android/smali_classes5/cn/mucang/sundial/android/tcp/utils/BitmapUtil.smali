.class public Lcn/mucang/sundial/android/tcp/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TEXT_PADDING:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v0

    sput v0, Lcn/mucang/sundial/android/tcp/utils/BitmapUtil;->TEXT_PADDING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawTextToBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 21

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "0.###"

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 2
    :try_start_1
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    move-object/from16 v7, p0

    .line 3
    invoke-virtual {v5, v7, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4
    new-instance v15, Landroid/text/TextPaint;

    invoke-direct {v15}, Landroid/text/TextPaint;-><init>()V

    .line 5
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v8}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v8, 0x41400000    # 12.0f

    .line 6
    invoke-virtual {v15, v8}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    const/4 v8, -0x1

    .line 7
    invoke-virtual {v15, v8}, Landroid/text/TextPaint;->setColor(I)V

    move/from16 v8, p3

    int-to-float v8, v8

    .line 8
    invoke-virtual {v15, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v8, 0x41c80000    # 25.0f

    const/high16 v9, -0x1000000

    .line 9
    invoke-virtual {v15, v8, v6, v6, v9}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 10
    invoke-virtual {v15}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v14

    .line 11
    iget v8, v14, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v9, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    .line 12
    iget v10, v14, Landroid/graphics/Paint$FontMetrics;->descent:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    float-to-double v10, v10

    sub-double/2addr v8, v10

    double-to-float v13, v8

    if-eqz v0, :cond_4

    .line 13
    :try_start_2
    sget-object v8, Lcn/mucang/sundial/android/tcp/upload/EventType;->COACH_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v8}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v8

    if-ne v1, v8, :cond_1

    .line 14
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/SundialManager;->getCoachInfo(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v0

    :cond_0
    :goto_0
    move-object/from16 v20, v3

    move-object v3, v0

    move-object/from16 v0, v20

    goto :goto_2

    .line 15
    :cond_1
    sget-object v8, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v8}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v8

    if-ne v1, v8, :cond_2

    .line 16
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v3

    .line 17
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/SundialManager;->getStudentInfo(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v0

    goto :goto_2

    .line 18
    :cond_2
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->coachLoginSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 20
    :goto_1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->studentLoginSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v4

    goto/16 :goto_5

    :cond_4
    move-object v0, v3

    .line 22
    :goto_2
    :try_start_3
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->getDeviceInfo()Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    move-result-object v1

    .line 23
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v12, " "

    if-eqz v3, :cond_5

    :try_start_4
    const-string v8, "\u9a7e\u6821\u540d\u79f0:"

    .line 24
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getSchoolName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n\u6559\u7ec3\u5458:"

    .line 26
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 30
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v0, :cond_6

    const-string v3, "\u5b66\u5458:"

    .line 31
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 35
    :cond_6
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 36
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v0

    move-object v10, v15

    move-object/from16 v19, v12

    move-object v12, v3

    move v3, v13

    move/from16 v13, v16

    move-object v6, v14

    move/from16 v14, v17

    move-object/from16 v17, v4

    move-object v4, v15

    move/from16 v15, v18

    :try_start_6
    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 37
    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_7
    move-object/from16 v17, v4

    move-object/from16 v19, v12

    move v3, v13

    move-object v6, v14

    move-object v4, v15

    .line 38
    :goto_3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getCarModel()Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v0

    .line 39
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u8f66\u901f:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_8

    .line 40
    iget v0, v0, Lcn/mucang/sundial/android/model/CarModel;->speed:F

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v9, "0.##"

    invoke-static {v0, v9}, Lcn/mucang/sundial/android/tcp/utils/BitmapUtil;->formatDigits(Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "km/h"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    const-string v0, "0km/h"

    .line 41
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :goto_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v3

    sget v9, Lcn/mucang/sundial/android/tcp/utils/BitmapUtil;->TEXT_PADDING:I

    int-to-float v10, v9

    sub-float/2addr v8, v10

    iget v10, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v8, v10

    const/4 v10, 0x0

    .line 44
    invoke-virtual {v5, v0, v10, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_9

    .line 45
    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getCarNo()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v8, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v8

    .line 47
    invoke-virtual {v5, v0, v10, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 48
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    sget-wide v10, Lcn/mucang/sundial/android/location/AppLocation;->latitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/mucang/sundial/android/tcp/utils/BitmapUtil;->formatDigits(Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v10, Lcn/mucang/sundial/android/location/AppLocation;->longitude:D

    .line 51
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/mucang/sundial/android/tcp/utils/BitmapUtil;->formatDigits(Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v3

    int-to-float v3, v9

    sub-float/2addr v1, v3

    iget v3, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v3

    .line 56
    invoke-virtual {v5, v0, v2, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/BitmapUtil;->formatTime(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v3

    .line 61
    invoke-virtual {v5, v0, v2, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v4, v17

    goto :goto_6

    :catch_1
    move-object/from16 v17, v4

    :catch_2
    move-object/from16 v3, v17

    :catch_3
    :goto_5
    move-object v4, v3

    :goto_6
    return-object v4
.end method

.method private static formatDigits(Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatTime(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "http"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 8
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 9
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
