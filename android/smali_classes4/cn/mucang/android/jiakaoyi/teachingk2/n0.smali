.class public Lcn/mucang/android/jiakaoyi/teachingk2/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/media/SoundPool;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Z

.field private static final h:[I

.field private static final i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1
    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$raw;->radar_level_high:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$raw;->radar_level_middle:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$raw;->radar_level_normal:I

    const/4 v3, 0x2

    aput v2, v1, v3

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->h:[I

    new-array v0, v0, [I

    .line 2
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->i:[I

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 7

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const/16 v5, 0x10

    if-lt v1, v4, :cond_0

    .line 3
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v4, 0x2

    .line 5
    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 7
    new-instance v4, Landroid/media/SoundPool$Builder;

    invoke-direct {v4}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 8
    invoke-virtual {v4, v5}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v4

    .line 9
    invoke-virtual {v4, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Landroid/media/SoundPool;

    const/4 v4, 0x3

    invoke-direct {v1, v5, v4, v2}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    .line 12
    :cond_1
    :goto_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$raw;->stop_car_sound:I

    invoke-virtual {v1, v4, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    sput v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->b:I

    .line 13
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$raw;->calling_sound:I

    invoke-virtual {v1, v4, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    sput v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->c:I

    .line 14
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$raw;->step_switch_sound:I

    invoke-virtual {v1, v4, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    sput v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->d:I

    .line 15
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$raw;->robot_ai_wake:I

    invoke-virtual {v1, v4, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    sput v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->f:I

    .line 16
    :goto_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->i:[I

    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 17
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v5

    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->h:[I

    aget v6, v6, v2

    invoke-virtual {v4, v5, v6, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    aput v4, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b()V
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->h()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->c:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->e:I

    :cond_0
    return-void
.end method

.method public static c(I)V
    .locals 9

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/4 v1, 0x3

    if-le p0, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    if-eqz v2, :cond_1

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->e:I

    if-gez v1, :cond_1

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->i:[I

    sub-int/2addr p0, v0

    aget v3, v1, p0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p0

    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->e:I

    .line 3
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->g:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static d()V
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->h()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->f:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->e:I

    :cond_0
    return-void
.end method

.method public static e()V
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->h()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->d:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->e:I

    :cond_0
    return-void
.end method

.method public static f()V
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->h()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->b:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->e:I

    :cond_0
    return-void
.end method

.method public static g()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public static h()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->e:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, -0x1

    .line 3
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->e:I

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->g:Z

    :cond_0
    return-void
.end method

.method public static i()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->g:Z

    if-eqz v1, :cond_0

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->e:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, -0x1

    .line 3
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->e:I

    :cond_0
    return-void
.end method
