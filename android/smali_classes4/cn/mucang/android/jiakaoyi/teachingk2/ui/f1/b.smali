.class public Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;
.implements Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a$a;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setHasGesture(Z)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;->b:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;->d:Ljava/util/Map;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;->b:Ljava/util/List;

    const/16 v4, 0x780

    const/16 v5, 0x3ad

    move-object v1, v0

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;IILcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a$a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;

    .line 7
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 8
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x44f00000    # 1920.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u(FFF)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method

.method private b()Ljava/util/List;
    .locals 4
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
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;->getSignalItem()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 12

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;

    .line 3
    iget v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->d:I

    .line 4
    iget v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->e:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/16 v9, 0xa

    const/4 v10, 0x1

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 5
    :pswitch_1
    iget-boolean v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-eq v5, v6, :cond_f

    .line 6
    iput v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->d:I

    .line 7
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__handbrake_n:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto/16 :goto_6

    .line 9
    :cond_0
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__handbrake_e:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto/16 :goto_6

    .line 10
    :pswitch_2
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v6, v7, :cond_1

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eq v5, v6, :cond_f

    .line 11
    iput v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->d:I

    .line 12
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__gear_n:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto/16 :goto_6

    .line 14
    :cond_2
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__gear_e:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto/16 :goto_6

    .line 15
    :pswitch_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result v6

    xor-int/2addr v6, v10

    if-eq v5, v6, :cond_f

    .line 16
    iput v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->d:I

    .line 17
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__flame_n:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto/16 :goto_6

    .line 19
    :cond_3
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__flame_e:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto/16 :goto_6

    .line 20
    :pswitch_4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 21
    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__wheel_txt_n:I

    iput v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    const/4 v7, 0x0

    goto :goto_2

    .line 22
    :cond_4
    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    if-le v6, v9, :cond_5

    .line 23
    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__wheel_txt_right:I

    iput v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto :goto_2

    .line 24
    :cond_5
    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__wheel_txt_left:I

    iput v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    const/4 v7, 0x2

    :goto_2
    if-eq v5, v7, :cond_f

    .line 25
    iput v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->d:I

    goto/16 :goto_6

    .line 26
    :pswitch_5
    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v6, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v11, 0x0

    invoke-virtual {v5, v6, v11}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    .line 27
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i()Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;->useNonOldProtocol()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    .line 28
    :cond_6
    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    if-le v5, v9, :cond_7

    .line 29
    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__wheel_left:I

    iput v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto :goto_4

    .line 30
    :cond_7
    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__wheel_right:I

    iput v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    const/4 v7, 0x2

    goto :goto_4

    .line 31
    :cond_8
    :goto_3
    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__wheel_n:I

    iput v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    const/4 v7, 0x0

    .line 32
    :goto_4
    iput v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->d:I

    .line 33
    iget v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->c:I

    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    if-eq v5, v6, :cond_f

    .line 34
    iput v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->c:I

    goto/16 :goto_6

    .line 35
    :pswitch_6
    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i:I

    if-lez v6, :cond_9

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    :goto_5
    if-eq v5, v6, :cond_f

    .line 36
    iput v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->d:I

    .line 37
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 38
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__oil_n:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto/16 :goto_6

    .line 39
    :cond_a
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__oil_e:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto :goto_6

    .line 40
    :pswitch_7
    iget-boolean v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-eq v5, v6, :cond_f

    .line 41
    iput v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->d:I

    .line 42
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 43
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__brake_n:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto :goto_6

    .line 44
    :cond_b
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__brake_e:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto :goto_6

    .line 45
    :pswitch_8
    iget-boolean v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    if-eq v5, v6, :cond_f

    .line 46
    iput v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->d:I

    .line 47
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 48
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__clutch_n:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto :goto_6

    .line 49
    :cond_c
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__clutch_e:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto :goto_6

    .line 50
    :pswitch_9
    iget-boolean v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    xor-int/2addr v6, v10

    if-eq v5, v6, :cond_f

    .line 51
    iput v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->d:I

    .line 52
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 53
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__door_n:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto :goto_6

    .line 54
    :cond_d
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__door_e:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto :goto_6

    .line 55
    :pswitch_a
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/signal/utils/h;->a(I)Z

    move-result v6

    xor-int/2addr v6, v10

    if-eq v5, v6, :cond_f

    .line 56
    iput v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->d:I

    .line 57
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 58
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__light_n:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    goto :goto_6

    .line 59
    :cond_e
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__light_e:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    :goto_6
    const/4 v3, 0x1

    .line 60
    :cond_f
    :goto_7
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a()Z

    goto/16 :goto_0

    :cond_10
    if-eqz v3, :cond_11

    .line 61
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    :cond_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
