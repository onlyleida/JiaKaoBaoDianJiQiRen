.class public Lcn/mucang/android/jiakaoyi/framework/utils/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public static a()Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->a:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->b()Landroid/app/Application;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->e(Landroid/app/Application;)V

    return-object v0
.end method

.method private static b()Landroid/app/Application;
    .locals 6

    const-string v0, "u should init first"

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "getApplication"

    new-array v5, v3, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    check-cast v1, Landroid/app/Application;

    return-object v1

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 10
    :goto_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(DDZ)[I
    .locals 31

    .line 1
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0x7d0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 4
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 5
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v7, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v7, v2

    long-to-int v2, v7

    const-wide v3, -0x40155810624dd2f2L    # -0.833

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const-wide/16 v7, 0x0

    const-wide v9, 0x4066800000000000L    # 180.0

    move-wide v11, v7

    move-wide v13, v9

    :goto_0
    sub-double v15, v11, v13

    .line 7
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide v17, 0x3fb999999999999aL    # 0.1

    cmpl-double v19, v15, v17

    if-ltz v19, :cond_1

    int-to-double v11, v2

    const-wide v15, 0x4076800000000000L    # 360.0

    div-double v15, v13, v15

    add-double/2addr v11, v15

    const-wide v15, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v11, v15

    const-wide v15, 0x4071875c28f5c28fL    # 280.46

    const-wide v17, 0x40e19418dd2f1aa0L    # 36000.777

    mul-double v17, v17, v11

    add-double v17, v17, v15

    const-wide v15, 0x40765872b020c49cL    # 357.528

    const-wide v19, 0x40e193e19999999aL    # 35999.05

    mul-double v19, v19, v11

    add-double v19, v19, v15

    .line 8
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    .line 9
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    const-wide v21, 0x3ffea3d70a3d70a4L    # 1.915

    mul-double v19, v19, v21

    add-double v17, v17, v19

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    mul-double v23, v15, v19

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    const-wide v27, 0x3f947ae147ae147bL    # 0.02

    mul-double v25, v25, v27

    add-double v17, v17, v25

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    const-wide v25, 0x40377075f6fd21ffL    # 23.4393

    const-wide v29, 0x3f8a9fbe76c8b439L    # 0.013

    mul-double v11, v11, v29

    sub-double v25, v25, v11

    .line 10
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 11
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    mul-double v11, v11, v25

    invoke-static {v11, v12}, Ljava/lang/Math;->asin(D)D

    move-result-wide v11

    sub-double v25, v13, v9

    .line 12
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v15, v15, v21

    sub-double v25, v25, v15

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v15, v15, v27

    sub-double v25, v25, v15

    const-wide v15, 0x4003ba5e353f7ceeL    # 2.466

    mul-double v19, v19, v17

    .line 13
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v15

    add-double v25, v25, v19

    const-wide v15, 0x3fab22d0e5604189L    # 0.053

    const-wide/high16 v19, 0x4010000000000000L    # 4.0

    mul-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v17, v17, v15

    sub-double v25, v25, v17

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v15

    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    mul-double v15, v15, v11

    sub-double v11, v3, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->acos(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    sub-double v13, v13, v25

    sub-double v13, v13, p2

    if-eqz p4, :cond_0

    neg-double v11, v11

    :cond_0
    add-double/2addr v13, v11

    move-wide v11, v13

    goto/16 :goto_0

    :cond_1
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    div-double v2, p2, v0

    cmpl-double v4, p2, v7

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    :goto_1
    int-to-double v7, v4

    add-double/2addr v2, v7

    double-to-int v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    div-double/2addr v11, v0

    int-to-double v0, v2

    add-double/2addr v11, v0

    double-to-int v0, v11

    aput v0, v3, v5

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    int-to-double v4, v0

    sub-double/2addr v11, v4

    mul-double v11, v11, v1

    double-to-int v0, v11

    aput v0, v3, v6

    return-object v3
.end method

.method public static d(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 6
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    const-string p0, ""

    :goto_0
    return-object p0

    :goto_1
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static e(Landroid/app/Application;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->a:Landroid/app/Application;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->b()Landroid/app/Application;

    move-result-object p0

    sput-object p0, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->a:Landroid/app/Application;

    goto :goto_0

    .line 3
    :cond_0
    sput-object p0, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->a:Landroid/app/Application;

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->a:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 5
    sput-object p0, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->a:Landroid/app/Application;

    :cond_2
    :goto_0
    return-void
.end method
