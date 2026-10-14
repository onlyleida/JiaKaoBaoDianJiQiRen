.class public Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachBaseProvider;
.super Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\u0013H\u0016J\u000e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H\u0016J\u000e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0016H\u0016J\u000e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0016H\u0016J\u0010\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\u0013H\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\u001eH\u0016J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010\u000c\u001a\u00020\u0013H\u0016J\u0008\u0010$\u001a\u00020\u0006H\u0016J\u0008\u0010%\u001a\u00020\u001eH\u0016J\u0018\u0010&\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u0013H\u0016J\u0010\u0010(\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020*H\u0016\u00a8\u0006+"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachBaseProvider;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;",
        "args",
        "Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "enableAi",
        "",
        "getAppType",
        "",
        "getDefaultLoginType",
        "getEndTestEvent",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;",
        "activity",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "message",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
        "getHomePageIntent",
        "Landroid/content/Intent;",
        "Landroid/app/Activity;",
        "getLaunchPageIntent",
        "getRadarRenderConfig",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarRenderConfig;",
        "getResourceList",
        "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;",
        "getSignalItem",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/check/SignalItem;",
        "getTracePageIntent",
        "initAiCameraManager",
        "",
        "initUsbManager",
        "isUnityPage",
        "context",
        "Landroid/content/Context;",
        "logout",
        "needStartCarStateAndPosition",
        "onLocalConfigLoaded",
        "processSpecial",
        "url",
        "updateUserInfo",
        "user",
        "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachBaseProvider;->logout$lambda-1(Landroid/app/Activity;)V

    return-void
.end method

.method private static final logout$lambda-1(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public enableAi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultLoginType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEndTestEvent(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/m/a;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/h1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/h1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V

    .line 2
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;

    sget v5, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->b:I

    const/16 v6, 0x5a

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;II)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;

    sget v9, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->a:I

    const/16 v10, 0x50

    move-object v5, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;II)V

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

    invoke-direct {v1, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/c1;

    invoke-direct {v0, p1, p2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/c1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/i1;

    invoke-direct {v1, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/i1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V

    return-object v1
.end method

.method public getHomePageIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/unity/activity/UnityMainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getLaunchPageIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/unity/activity/UnityMainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getRadarRenderConfig()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    .line 1
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;-><init>(IZ)V

    aput-object v1, v0, v3

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;-><init>(IZ)V

    aput-object v1, v0, v3

    .line 2
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResourceList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 4
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->TileMap:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapDataB2:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    if-eq v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getSignalItem()Ljava/util/List;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v11, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;

    .line 3
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__wheel_n:I

    const/high16 v12, 0x428b0000    # 69.5f

    float-to-double v13, v12

    const-wide v3, 0x405da00000000000L    # 118.5

    sub-double/2addr v3, v13

    const/4 v15, 0x2

    int-to-double v9, v15

    mul-double v3, v3, v9

    double-to-int v7, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/16 v6, 0x195

    const/16 v8, 0x1fe

    const/16 v16, 0x1fe

    const-string v17, "\u65b9\u5411\u76d8"

    move-object v1, v11

    move-wide/from16 v18, v9

    move/from16 v9, v16

    move-object/from16 v10, v17

    .line 4
    invoke-direct/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;-><init>(IZIIIIIILjava/lang/String;)V

    .line 5
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;

    .line 7
    sget v21, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__light_n:I

    const/16 v2, 0x7f

    int-to-float v2, v2

    sub-float/2addr v2, v12

    int-to-float v3, v15

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x11a

    const/16 v27, 0x10f

    const/16 v28, 0xda

    const-string v29, "\u8f6c\u5411\u706f"

    move-object/from16 v20, v1

    move/from16 v26, v2

    .line 8
    invoke-direct/range {v20 .. v29}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;-><init>(IZIIIIIILjava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;

    .line 11
    sget v31, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__door_n:I

    const-wide v4, 0x4067100000000000L    # 184.5

    sub-double/2addr v4, v13

    mul-double v4, v4, v18

    double-to-int v2, v4

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x1e

    const/16 v37, 0x16f

    const/16 v38, 0x7d

    const-string v39, "\u95e8"

    move-object/from16 v30, v1

    move/from16 v36, v2

    .line 12
    invoke-direct/range {v30 .. v39}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;-><init>(IZIIIIIILjava/lang/String;)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;

    .line 16
    sget v21, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__clutch_n:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x2

    const/16 v25, 0x1e

    const/16 v2, 0xf2

    int-to-float v2, v2

    sub-float/2addr v2, v12

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/16 v27, 0x293

    const/16 v28, 0xd1

    const-string v29, "\u79bb\u5408"

    move-object/from16 v20, v1

    move/from16 v26, v2

    .line 17
    invoke-direct/range {v20 .. v29}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;-><init>(IZIIIIIILjava/lang/String;)V

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;

    .line 20
    sget v31, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__brake_n:I

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x3

    const/16 v35, 0x1e

    const-wide v4, 0x4072b80000000000L    # 299.5

    sub-double/2addr v4, v13

    mul-double v4, v4, v18

    double-to-int v2, v4

    const/16 v37, 0x2d2

    const/16 v38, 0x79

    const-string v39, "\u5239\u8f66"

    move-object/from16 v30, v1

    move/from16 v36, v2

    .line 21
    invoke-direct/range {v30 .. v39}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;-><init>(IZIIIIIILjava/lang/String;)V

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;

    .line 24
    sget v21, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__oil_n:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x4

    const/16 v25, 0x1e

    const-wide v4, 0x4075280000000000L    # 338.5

    sub-double/2addr v4, v13

    mul-double v4, v4, v18

    double-to-int v2, v4

    const/16 v27, 0x313

    const/16 v28, 0x6b

    const-string v29, "\u6cb9\u95e8"

    move-object/from16 v20, v1

    move/from16 v26, v2

    .line 25
    invoke-direct/range {v20 .. v29}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;-><init>(IZIIIIIILjava/lang/String;)V

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;

    .line 28
    sget v31, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__wheel_txt_n:I

    const/16 v34, 0x7

    const/16 v35, 0x2ee

    const-wide v4, 0x406649999999999aL    # 178.3

    sub-double/2addr v4, v13

    mul-double v4, v4, v18

    double-to-int v2, v4

    const/16 v37, 0x23e

    const/16 v38, 0x49

    const-string v39, "\u65b9\u5411\u76d8\u6587\u5b57"

    move-object/from16 v30, v1

    move/from16 v36, v2

    .line 29
    invoke-direct/range {v30 .. v39}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;-><init>(IZIIIIIILjava/lang/String;)V

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;

    .line 32
    sget v21, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__flame_n:I

    const/16 v24, 0x8

    const/16 v25, 0x305

    const/16 v2, 0xed

    int-to-float v2, v2

    sub-float/2addr v2, v12

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/16 v27, 0x227

    const/16 v28, 0x46

    const-string v29, "\u7184\u706b"

    move-object/from16 v20, v1

    move/from16 v26, v2

    .line 33
    invoke-direct/range {v20 .. v29}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;-><init>(IZIIIIIILjava/lang/String;)V

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;

    .line 36
    sget v31, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__gear_n:I

    const/16 v34, 0x9

    const/16 v35, 0x3a4

    const-wide v4, 0x4072680000000000L    # 294.5

    sub-double/2addr v4, v13

    mul-double v4, v4, v18

    double-to-int v2, v4

    const/16 v37, 0x189

    const/16 v38, 0x8f

    const-string v39, "\u6863\u4f4d"

    move-object/from16 v30, v1

    move/from16 v36, v2

    .line 37
    invoke-direct/range {v30 .. v39}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;-><init>(IZIIIIIILjava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;

    .line 40
    sget v14, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__handbrake_n:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xa

    const/16 v18, 0x391

    const/16 v2, 0x160

    int-to-float v2, v2

    sub-float/2addr v2, v12

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/16 v20, 0x19b

    const/16 v21, 0x9f

    const-string v22, "\u624b\u5239"

    move-object v13, v1

    move/from16 v19, v2

    .line 41
    invoke-direct/range {v13 .. v22}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;-><init>(IZIIIIIILjava/lang/String;)V

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTracePageIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/unity/activity/UnityMainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public initAiCameraManager()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->f()V

    return-void
.end method

.method public initUsbManager()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jky/camera/UsbCameraManager;->init(Landroid/content/Context;III)V

    return-void
.end method

.method public isUnityPage(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcn/mucang/android/jiakaoyi/unity/activity/UnityMainActivity;

    return p1
.end method

.method public logout(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/unity/activity/UnityMainActivity;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/c;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/c;-><init>(Landroid/app/Activity;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public needStartCarStateAndPosition()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLocalConfigLoaded()V
    .locals 2

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    invoke-virtual {v1, v0, v0}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public processSpecial(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "activity"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public updateUserInfo(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 3

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;->name:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;->headImg:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getIdCardMask()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;->idCard:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getGender()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;->gender:I

    .line 6
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getStudentId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;->studentId:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method
