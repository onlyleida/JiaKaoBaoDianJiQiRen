.class public Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage$a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage$a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->d:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method static synthetic j(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->t(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->b:Ljava/util/Map;

    return-object p0
.end method

.method private synthetic l(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic n(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method private synthetic o(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->k()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 4
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string p3, "\u5b66\u4e60\u51fa\u9519,\u9640\u87ba\u4eea\u89d2\u5ea6\u4e0d\u5408\u7406\uff0c\u8bf7\u6b63\u786e\u5b89\u88c5\uff0c\u6216\u8005\u7ed9\u63a7\u5236\u76d2\u65ad\u753530\u79d2\u518d\u91cd\u8bd5"

    invoke-static {p3, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 5
    new-instance p1, Landroidx/appcompat/app/c$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string p3, "\u9640\u87ba\u4eea\u89d2\u5ea6\u4e0d\u6b63\u786e"

    .line 6
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const-string p3, "\u8bf7\u786e\u5b9a\u5b89\u88c5\u662f\u5426\u6b63\u786e\uff0c\u6216\u8005\u5c06\u63a7\u5236\u76d2\u65ad\u753530\u79d2\u540e\u518d\u91cd\u8bd5"

    .line 7
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    new-instance p3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/a;

    invoke-direct {p3, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/a;-><init>(Landroid/view/View;)V

    const-string p2, "\u91cd\u8bd5"

    .line 8
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "\u53d6\u6d88"

    .line 9
    invoke-virtual {p1, p3, p2}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method

.method private synthetic q()V
    .locals 5

    const-string v0, "gyro_gear_sensor_value_version"

    .line 1
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->c:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->c:Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->a()[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v2

    .line 4
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v3, v2, v3

    if-eqz v3, :cond_1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v3, v2, v3

    if-eqz v3, :cond_1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v3, v2, v3

    if-eqz v3, :cond_1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v3, v2, v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 7
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 8
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/q0;

    invoke-direct {v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/q0;-><init>()V

    invoke-virtual {v4, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/q0;->m(Ljava/lang/String;)V

    .line 9
    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v2, "TAG"

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->c:Z

    return-void

    :catchall_1
    move-exception v0

    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->c:Z

    throw v0
.end method

.method private s(Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;-><init>()V

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->t(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c;

    invoke-direct {p1, p0, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private t(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v1, v1

    invoke-direct {p0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->u(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->u(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->yaw:F

    float-to-double v1, p1

    invoke-direct {p0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->u(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private u(D)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "%.1f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private v()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/d;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/d;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6321\u4f4d\u4f20\u611f\u5668\u6807\u5b9a\u9875\u9762"

    return-object v0
.end method

.method protected init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    move-object v1, v0

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;->gn:Landroid/widget/TextView;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;->gnMake:Landroid/widget/Button;

    invoke-direct {p0, v1, v2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->s(Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    move-object v1, v0

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;->gr:Landroid/widget/TextView;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;->grMake:Landroid/widget/Button;

    invoke-direct {p0, v1, v2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->s(Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    move-object v1, v0

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;->gd:Landroid/widget/TextView;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;->gdMake:Landroid/widget/Button;

    invoke-direct {p0, v1, v2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->s(Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    move-object v1, v0

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;->gp:Landroid/widget/TextView;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;->gpMake:Landroid/widget/Button;

    invoke-direct {p0, v1, v2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->s(Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;->finish:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/b;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->d:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public synthetic m(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->l(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->d:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->v()V

    return-void
.end method

.method public synthetic p(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public synthetic r()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->q()V

    return-void
.end method
