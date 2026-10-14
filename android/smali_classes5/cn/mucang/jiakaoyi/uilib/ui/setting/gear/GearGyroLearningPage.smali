.class public Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;

.field private final f:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->b:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->d:Z

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->f:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method private synthetic A(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    new-instance p2, Landroidx/appcompat/app/c$a;

    invoke-direct {p2, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string p3, "\u786e\u5b9a\u5220\u9664?"

    .line 2
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p2

    new-instance p3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/z;

    invoke-direct {p3, p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/z;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    const-string p1, "\u786e\u5b9a\u5220\u9664"

    .line 3
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const-string p2, "\u4e0d\u5220\u9664"

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic C(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p0, 0x0

    const/4 p1, 0x1

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->E(ZZ)V

    return-void
.end method

.method static synthetic D(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p0, 0x0

    const/4 p1, 0x1

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->E(ZZ)V

    return-void
.end method

.method private synthetic E(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->T()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic G(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->r()V

    return-void
.end method

.method private synthetic I(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->e(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->d()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->q0()V

    return-void
.end method

.method public static synthetic K(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->q(Landroid/view/View;)V

    return-void
.end method

.method private synthetic L(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic N(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->K(F)V

    return-void
.end method

.method static synthetic O(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->P(Z)V

    return-void
.end method

.method private synthetic P(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroidx/appcompat/app/c$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v0, "\u6b63\u5728\u6321\u4f4d\u6821\u51c6\uff0c\u786e\u5b9a\u9000\u51fa?"

    .line 3
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/p;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/p;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V

    const-string v1, "\u9000\u51fa"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u4e0d\u9000\u51fa"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic R(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->p()V

    return-void
.end method

.method private synthetic T(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->p0()V

    return-void
.end method

.method static synthetic V(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->L(F)V

    return-void
.end method

.method static synthetic W(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->R(F)V

    return-void
.end method

.method static synthetic X(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->M(Z)V

    return-void
.end method

.method static synthetic Y(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->N(Z)V

    return-void
.end method

.method static synthetic Z(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->Q(Z)V

    return-void
.end method

.method static synthetic a0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->a(Z)V

    return-void
.end method

.method private synthetic b0(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->I(Z)V

    .line 2
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->d()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->s0()V

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic d0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->O(Z)V

    return-void
.end method

.method private synthetic e0(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    new-instance p1, Landroidx/appcompat/app/c$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string p2, "\u786e\u5b9a\u5df2\u7ecf\u6302\u5230\u7a7a\u6863\uff1f"

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const-string p2, "\u53d6\u6d88"

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    new-instance p2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/r;

    invoke-direct {p2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/r;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V

    const-string v0, "\u786e\u5b9a, \u5f00\u59cb\u6821\u51c6"

    .line 3
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic g(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->t0(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic g0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->u0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    return-void
.end method

.method static synthetic h(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->b:Ljava/util/Map;

    return-object p0
.end method

.method private synthetic i0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->u0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    return-void
.end method

.method static synthetic j(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->r0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    return-void
.end method

.method static synthetic k(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;

    return-object p0
.end method

.method private synthetic k0(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Ljava/lang/String;IIIILandroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->z()Z

    move-result p7

    if-nez p7, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->v()Z

    move-result p7

    if-nez p7, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->g()V

    .line 3
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->S(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Z

    .line 4
    invoke-direct {p0, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->v0(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;

    if-nez p2, :cond_1

    .line 6
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->b:Ljava/util/Map;

    new-instance p7, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;

    move-object v0, p7

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;-><init>(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    invoke-interface {p2, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p7

    :cond_1
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->f:Z

    return-void
.end method

.method static synthetic l(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->v0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->d:Z

    return p0
.end method

.method private synthetic m0()V
    .locals 7

    const-string v0, "gyro_gear_sensor_value_version_new"

    .line 1
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->c:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->c:Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->h()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 5
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v5, v6, :cond_1

    or-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v5, v6, :cond_2

    or-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v5, v6, :cond_3

    or-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 8
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v5, v6, :cond_4

    or-int/lit8 v4, v4, 0x8

    goto :goto_1

    .line 9
    :cond_4
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v5, v6, :cond_5

    or-int/lit8 v4, v4, 0x10

    goto :goto_1

    .line 10
    :cond_5
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v5, v6, :cond_6

    or-int/lit8 v4, v4, 0x20

    goto :goto_1

    .line 11
    :cond_6
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v5, v6, :cond_7

    or-int/lit8 v4, v4, 0x40

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    :cond_9
    const/16 v3, 0x7f

    if-ne v4, v3, :cond_a

    .line 12
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 14
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v4

    if-eq v3, v4, :cond_a

    .line 15
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/q0;

    invoke-direct {v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/q0;-><init>()V

    invoke-virtual {v4, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/q0;->m(Ljava/lang/String;)V

    .line 16
    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_a
    :goto_2
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->c:Z

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v2, "TAG"

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :goto_3
    return-void

    :catchall_1
    move-exception v0

    .line 19
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->c:Z

    throw v0
.end method

.method static synthetic n(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->d:Z

    return p1
.end method

.method static synthetic o(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->q0()V

    return-void
.end method

.method public static o0(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private p()V
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->g()V

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u6ca1\u6709\u68c0\u6d4b\u5230\u6863\u4f4d\u4f20\u611f\u5668"

    .line 4
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->v0(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->A()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u6863\u4f4d\u5b66\u4e60\u65f6\u4e0d\u80fd\u8fdb\u884c\u6807\u5b9a"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->X()Z

    move-result v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v3, "\u9640\u87ba\u4eea\u89d2\u5ea6\u4e0d\u5408\u7406\uff0c\u8bf7\u6b63\u786e\u5b89\u88c5\uff0c\u6216\u8005\u7ed9\u63a7\u5236\u76d2\u65ad\u753530\u79d2\u518d\u91cd\u8bd5"

    invoke-static {v3, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 10
    new-instance v0, Landroidx/appcompat/app/c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v3, "\u9640\u87ba\u4eea\u89d2\u5ea6\u4e0d\u6b63\u786e"

    .line 11
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    const-string v3, "\u8bf7\u786e\u5b9a\u5b89\u88c5\u662f\u5426\u6b63\u786e\uff0c\u6216\u8005\u5c06\u63a7\u5236\u76d2\u65ad\u753530\u79d2\u540e\u518d\u91cd\u8bd5"

    .line 12
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/f0;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/f0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V

    const-string v4, "\u91cd\u8bd5"

    .line 13
    invoke-virtual {v0, v4, v3}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 17
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    new-instance v0, Landroidx/appcompat/app/c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5f53\u524d\u6709\u6863\u4f4d\u6570\u636e\uff0c\u4e0d\u80fd\u6807\u5b9a\u3002\u5982\u679c\u6807\u5b9a\uff0c\u4f1a\u6e05\u9664\u6240\u6709\u6863\u4f4d\u6570\u636e\uff0c\u6807\u5b9a\u540e\u91cd\u65b0\u5b66\u4e60\u5404\u4e2a\u6863\u4f4d\u6570\u636e\u3002\u786e\u5b9a\u5220\u9664\u6863\u4f4d\u6570\u636e\u7136\u540e\u5f00\u59cb\u6807\u5b9a\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    const-string v1, "\u4e0d\u6807\u5b9a"

    .line 19
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/q;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/q;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V

    const-string v2, "\u5220\u9664\u6863\u4f4d\u6570\u636e\uff0c\u5f00\u59cb\u6807\u5b9a"

    .line 20
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 23
    :cond_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u8bf7\u57282\u6863\u548c3\u6863\u4e4b\u95f4\u6765\u56de\u6302\u6863\uff0c\u91cd\u590d5\u904d"

    goto :goto_0

    :cond_5
    const-string v0, "\u8bf7\u57283\u6863\u548c4\u6863\u4e4b\u95f4\u6765\u56de\u6302\u6863\uff0c\u91cd\u590d5\u904d"

    .line 24
    :goto_0
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->v0(Ljava/lang/String;)V

    .line 25
    new-instance v3, Landroidx/appcompat/app/c$a;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/k;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/k;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V

    const-string v2, "\u5f00\u59cb\u6807\u5b9a"

    .line 27
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private p0()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Landroidx/appcompat/app/c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bf7\u5c06\u6863\u4f4d\u6302\u5230\u7a7a\u6863\uff0c\u7136\u540e\u70b9\u51fb\u6821\u51c6"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u53d6\u6d88"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/o;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/o;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V

    const-string v2, "\u6821\u51c6"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private q(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->setChoose(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    .line 3
    new-instance v0, Landroidx/appcompat/app/c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5220\u9664\u8fd9\u4e2a\u6863\u4f4d\u6570\u636e?"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u4e0d\u5220\u9664"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/e;

    invoke-direct {v1, p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/e;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    const-string p1, "\u5220\u9664"

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private q0()V
    .locals 12

    .line 1
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g0:I

    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g0_path1:I

    sget v3, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g0_path2:I

    sget v4, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g0_path3:I

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->r0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 2
    sget v7, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g1:I

    sget v8, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g1_path1:I

    sget v9, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g1_path2:I

    sget v10, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g1_path3:I

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->r0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 3
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g2:I

    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g2_path1:I

    sget v3, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g2_path2:I

    sget v4, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g2_path3:I

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->r0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 4
    sget v7, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g3:I

    sget v8, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g3_path1:I

    sget v9, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g3_path2:I

    sget v10, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g3_path3:I

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct/range {v6 .. v11}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->r0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 5
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g4:I

    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g4_path1:I

    sget v3, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g4_path2:I

    sget v4, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g4_path3:I

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->r0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 6
    sget v7, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g5:I

    sget v8, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g5_path1:I

    sget v9, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g5_path2:I

    sget v10, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g5_path3:I

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct/range {v6 .. v11}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->r0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 7
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->gb:I

    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->gb_path1:I

    sget v3, Lcom/mucang/android/jiakaoyi/uilib/R$id;->gb_path2:I

    sget v4, Lcom/mucang/android/jiakaoyi/uilib/R$id;->gb_path3:I

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->r0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    return-void
.end method

.method private r()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->E(ZZ)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u5c06\u6863\u4f4d\u57282\u6863\u548c3\u6863\u4e4b\u95f4\u6765\u56de\u6302\u68635\u6b21"

    goto :goto_0

    :cond_0
    const-string v0, "\u8bf7\u5c06\u6863\u4f4d\u57283\u6863\u548c4\u6863\u4e4b\u95f4\u6765\u56de\u6302\u68635\u6b21"

    .line 3
    :goto_0
    new-instance v1, Landroidx/appcompat/app/c$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/s;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/s;

    const-string v2, "\u5f00\u59cb"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/u;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/u;

    .line 5
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private r0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v6, p5

    .line 1
    iget-object v0, v7, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->b:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v8, v7, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->b:Ljava/util/Map;

    new-instance v9, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;

    move-object v0, v9

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;-><init>(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    move/from16 v3, p2

    .line 4
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    move/from16 v4, p3

    .line 5
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    move/from16 v5, p4

    .line 6
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    .line 7
    invoke-static/range {p5 .. p5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->l(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;

    move-result-object v12

    .line 8
    new-instance v13, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/b0;

    invoke-direct {v13, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/b0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V

    .line 9
    new-instance v14, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/g;

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/g;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 10
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x4

    if-eqz v12, :cond_4

    .line 14
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 15
    :cond_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "\u8def\u5f841,"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    .line 16
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->area()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 21
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const-string v5, "\u8def\u5f842,"

    const/4 v6, 0x2

    if-ne v1, v6, :cond_3

    .line 22
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->area()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->area()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 29
    :cond_3
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->area()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->area()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8def\u5f843,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->area()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 38
    :cond_4
    :goto_0
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private s(IIFLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    const/16 v0, 0x64

    .line 3
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    .line 4
    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance p3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$b;

    invoke-direct {p3, p0, p1, p4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private s0()V
    .locals 2

    .line 1
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->argumentContent:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private t()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;

    .line 3
    iget-boolean v1, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->f:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private t0(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "0,0,0"

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-direct {p0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->w0(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-direct {p0, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->w0(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    invoke-direct {p0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->w0(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic u(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->p()V

    return-void
.end method

.method private u0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 13

    move-object v8, p0

    move-object/from16 v6, p5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5f53\u524d\u6b63\u5728\u8fdb\u884c\u9640\u87ba\u4eea\u6807\u5b9a\uff0c\u4e0d\u80fd\u6863\u4f4d\u5b66\u4e60"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, v8, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;

    iget-boolean v1, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->f:Z

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_2
    invoke-static/range {p5 .. p5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->l(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 7
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v6, v2, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    const-string v0, "\u7a7a\u6863\u53ea\u80fd\u5b66\u4e60\u4e00\u4e2a\u4f4d\u7f6e\uff0c\u5982\u679c\u8981\u91cd\u65b0\u5b66\u4e60\uff0c\u8bf7\u5148\u5220\u9664\u5f53\u524d\u6570\u636e"

    .line 9
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->v0(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    const-string v0, "\u6700\u591a\u53ea\u80fd\u5b66\u4e603\u4e2a\u8def\u5f84"

    .line 11
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->v0(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->z()Z

    move-result v0

    const-string v2, "\u8bf7\u5148\u6807\u5b9a\u9640\u87ba\u4eea"

    if-eqz v0, :cond_5

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->u()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    invoke-direct {p0, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->v0(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    invoke-direct {p0, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->v0(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_6
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v2, 0x0

    if-eq v6, v0, :cond_9

    .line 17
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->l(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 20
    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v3, v4, :cond_7

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_9

    const-string v0, "\u8bf7\u5148\u5b66\u4e60\u7a7a\u6863"

    .line 21
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->v0(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->X()Z

    move-result v0

    const/4 v9, 0x0

    const-string v10, "\u53d6\u6d88"

    if-nez v0, :cond_a

    .line 23
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 24
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v1, "\u9640\u87ba\u4eea\u89d2\u5ea6\u4e0d\u5408\u7406\uff0c\u8bf7\u6b63\u786e\u5b89\u88c5\uff0c\u6216\u8005\u7ed9\u63a7\u5236\u76d2\u65ad\u753530\u79d2\u518d\u91cd\u8bd5"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 25
    new-instance v0, Landroidx/appcompat/app/c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9640\u87ba\u4eea\u89d2\u5ea6\u4e0d\u6b63\u786e"

    .line 26
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    const-string v1, "\u8bf7\u786e\u5b9a\u5b89\u88c5\u662f\u5426\u6b63\u786e\uff0c\u6216\u8005\u5c06\u63a7\u5236\u76d2\u65ad\u753530\u79d2\u540e\u518d\u91cd\u8bd5"

    .line 27
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v7

    new-instance v11, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    const-string v0, "\u91cd\u8bd5"

    .line 28
    invoke-virtual {v7, v0, v11}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v10, v9}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 32
    :cond_a
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->v()Z

    move-result v0

    const-string v1, "\u8bf7\u5c06\u6863\u4f4d\u6302\u5230"

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u540e\uff0c\u70b9\u51fb\u5f00\u59cb"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    const-string v0, "\u8bf7\u5c06\u6863\u4f4d\u6302\u5230\u7a7a\u6863\u540e\uff0c\u70b9\u51fb\u5f00\u59cb"

    .line 33
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->v()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bf7\u5728"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u7684\u5404\u4e2a\u65b9\u5411\u6765\u56de\u6446\u52a8\u6863\u6746"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u540e\uff0c\u677e\u5f00\u6321\u6746"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v3, v1

    .line 34
    new-instance v1, Landroidx/appcompat/app/c$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/c$a;->setCancelable(Z)Landroidx/appcompat/app/c$a;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v11

    new-instance v12, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p5

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Ljava/lang/String;IIII)V

    const-string v0, "\u5f00\u59cb"

    .line 37
    invoke-virtual {v11, v0, v12}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v10, v9}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private v0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic w(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->d:Z

    :cond_0
    return-void
.end method

.method private w0(D)Ljava/lang/String;
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

.method private x0()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/v;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/v;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic y(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->d:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic B(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->A(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic F(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->E(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic H(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->G(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic J(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->I(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic M(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->L(Landroid/view/View;)V

    return-void
.end method

.method public synthetic Q(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->P(Landroid/view/View;)V

    return-void
.end method

.method public synthetic S(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->R(Landroid/view/View;)V

    return-void
.end method

.method public synthetic U(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->T(Landroid/view/View;)V

    return-void
.end method

.method public synthetic c0(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->b0(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public synthetic f0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->e0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6321\u4f4d\u4f20\u611f\u5668\u6807\u5b9a\u9875\u9762"

    return-object v0
.end method

.method public synthetic h0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->g0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V

    return-void
.end method

.method public synthetic j0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->i0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic l0(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Ljava/lang/String;IIIILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->k0(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Ljava/lang/String;IIIILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic n0()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->m0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->activity_test_gear_gyro_data:I

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(I)V

    .line 3
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->autoLearn:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/w;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/w;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->value:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->a:Landroid/widget/TextView;

    .line 5
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->mapView:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;

    .line 6
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->argNum:I

    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->argSeek:I

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->m()F

    move-result v1

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/m;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/m;

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->s(IIFLcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 7
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->argNumBottom:I

    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->argSeekBottom:I

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i()F

    move-result v1

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/t;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/t;

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->s(IIFLcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 8
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->valueNum:I

    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->valueSeek:I

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->r()F

    move-result v1

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/e0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/e0;

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->s(IIFLcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 9
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->calGearWhenClutch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->B()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 11
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/y;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/y;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 12
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->noCalWhenNoClutch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 13
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->D()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/n;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/n;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 15
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->trustObdGear:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 16
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->q()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 17
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/d0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/d0;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 18
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->calOnce:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 19
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->w()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 20
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/j;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/j;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 21
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->areaFun:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 22
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->u()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 23
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/i;

    invoke-direct {v1, p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/i;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 24
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->calQuick:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 25
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->y()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 26
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/h;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/h;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 27
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->trustExtGear:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 28
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->U()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 29
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/x;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/x;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 30
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->finish:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/a0;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/a0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->f:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 32
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->calibrate:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/f;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/f;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->q0()V

    .line 34
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->oneKeyCalibrate:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->z()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/g0;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/g0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->s0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->f:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->T()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->x0()V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->G()V

    return-void
.end method

.method public synthetic v(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->u(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic x(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->w(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic z(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->y(Landroid/content/DialogInterface;I)V

    return-void
.end method
