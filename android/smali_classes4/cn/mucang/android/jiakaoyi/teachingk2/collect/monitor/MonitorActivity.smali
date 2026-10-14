.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 62\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u00016B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010%\u001a\u00020&2\u0010\u0008\u0002\u0010\'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010(H\u0002J\u0008\u0010)\u001a\u00020*H\u0002J\u0008\u0010+\u001a\u00020,H\u0002J\u0008\u0010-\u001a\u00020.H\u0002J\u0008\u0010/\u001a\u00020\tH\u0016J\u0008\u00100\u001a\u00020&H\u0014J\u0008\u00101\u001a\u00020&H\u0002J\u0008\u00102\u001a\u00020&H\u0002J\u0010\u00103\u001a\u00020&2\u0006\u00104\u001a\u000205H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0014\u001a\u0004\u0008\u0019\u0010\u001aR\u001b\u0010\u001c\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0014\u001a\u0004\u0008\u001d\u0010\u001aR\u001b\u0010\u001f\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u0014\u001a\u0004\u0008 \u0010\u0012R\u001b\u0010\"\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u0014\u001a\u0004\u0008#\u0010\u0012\u00a8\u00067"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;",
        "Landroid/view/View$OnClickListener;",
        "()V",
        "api",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorApi;",
        "dataMap",
        "Ljava/util/HashMap;",
        "",
        "",
        "Lkotlin/collections/HashMap;",
        "hasChanged",
        "",
        "id",
        "",
        "programmeId",
        "getProgrammeId",
        "()Ljava/lang/String;",
        "programmeId$delegate",
        "Lkotlin/Lazy;",
        "scenePointList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;",
        "step",
        "getStep",
        "()I",
        "step$delegate",
        "subStep",
        "getSubStep",
        "subStep$delegate",
        "teachModelDesc",
        "getTeachModelDesc",
        "teachModelDesc$delegate",
        "teachModelId",
        "getTeachModelId",
        "teachModelId$delegate",
        "doSave",
        "",
        "onSave",
        "Lkotlin/Function0;",
        "getCameraModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;",
        "getCarModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;",
        "getSceneModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;",
        "getStatName",
        "init",
        "initData",
        "loadData",
        "onClick",
        "v",
        "Landroid/view/View;",
        "Companion",
        "TeachingK2_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final l:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$a;


# instance fields
.field private final b:Lkotlin/f;

.field private final c:Lkotlin/f;

.field private final d:Lkotlin/f;

.field private final e:Lkotlin/f;

.field private final f:Lkotlin/f;

.field private g:I

.field private h:Z

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/k;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->l:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$programmeId$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$programmeId$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->b:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$teachModelId$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$teachModelId$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->c:Lkotlin/f;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$teachModelDesc$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$teachModelDesc$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->d:Lkotlin/f;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$step$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$step$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->e:Lkotlin/f;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$subStep$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$subStep$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->f:Lkotlin/f;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->i:Ljava/util/HashMap;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/k;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/k;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->j:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/k;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->k:Ljava/util/List;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->r()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->setEnable(Z)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->h:Z

    return-void
.end method

.method private static final C(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->s()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->setEnable(Z)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->h:Z

    return-void
.end method

.method private static final D(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->u()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->setEnable(Z)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->h:Z

    return-void
.end method

.method public static synthetic E(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static synthetic F(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->Q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    return-void
.end method

.method public static synthetic G(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/view/View;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->S(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/view/View;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic H(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->z(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic I(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static synthetic J(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->D(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic K(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->B(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic L(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;Ljava/util/List;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->R(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic M(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->C(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic N(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->A(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final O(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 7

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->l:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private final P()V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    const-string v2, "\u6b63\u5728\u52a0\u8f7d\u6570\u636e"

    const-string v3, "\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final Q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->j:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/k;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->t()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/k;->n(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorModel;

    move-result-object v0

    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorModel;-><init>()V

    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->j:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/k;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/k;->o()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v1

    goto :goto_0

    :catch_0
    move-object v7, v0

    .line 4
    :goto_0
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :cond_1
    const-string v2, "201"

    .line 5
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    .line 6
    const-class v4, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;

    invoke-static {v2, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;

    goto :goto_2

    .line 7
    :cond_3
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;-><init>()V

    :goto_2
    move-object v4, v2

    const-string v2, "202"

    .line 8
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v2, v0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_5

    .line 9
    const-class v5, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;

    invoke-static {v2, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;

    goto :goto_4

    .line 10
    :cond_5
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;-><init>()V

    :goto_4
    move-object v5, v2

    const-string v2, "203"

    .line 11
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_7

    .line 12
    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;

    goto :goto_6

    .line 13
    :cond_7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;-><init>()V

    :goto_6
    move-object v6, v0

    .line 14
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/h;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;Ljava/util/List;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final R(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorModel;->getId()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->g:I

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->i:Ljava/util/HashMap;

    const-string v0, "cameraModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "201"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->i:Ljava/util/HashMap;

    const-string p2, "carModel"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "202"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->i:Ljava/util/HashMap;

    const-string p2, "sceneModel"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "203"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 7
    invoke-static {p5}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->k:Ljava/util/List;

    invoke-static {p5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {p1, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->initData()V

    return-void
.end method

.method private static final S(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/view/View;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const-string p4, "$dataList"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "this$0"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$v"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$pop"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType;

    const/4 p5, 0x1

    if-eqz p4, :cond_0

    .line 3
    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->r()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;

    move-result-object p4

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType;->getValue()I

    move-result p6

    invoke-virtual {p4, p6}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;->setViewPosition(I)V

    .line 4
    iput-boolean p5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->h:Z

    .line 5
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType;->getLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType;

    if-eqz p4, :cond_1

    .line 7
    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->s()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;

    move-result-object p4

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType;->getValue()I

    move-result p6

    invoke-virtual {p4, p6}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;->setPointType(I)V

    .line 8
    iput-boolean p5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->h:Z

    .line 9
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType;->getLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_1
    instance-of p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    if-eqz p4, :cond_2

    .line 11
    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->u()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;

    move-result-object p4

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->getValue()I

    move-result p6

    invoke-virtual {p4, p6}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;->setDisplayType(I)V

    .line 12
    iput-boolean p5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->h:Z

    .line 13
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->getLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_2
    instance-of p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;

    if-eqz p4, :cond_3

    .line 15
    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->u()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;

    move-result-object p4

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;->getId()J

    move-result-wide p6

    invoke-virtual {p4, p6, p7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;->setScenePointId(J)V

    .line 16
    iput-boolean p5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->h:Z

    .line 17
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_3
    :goto_0
    invoke-virtual {p3}, Landroidx/appcompat/widget/d0;->dismiss()V

    return-void
.end method

.method private final initData()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->assistCb:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->r()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->getEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->assistCb:Landroid/widget/CheckBox;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/g;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->bodyCb:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->s()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->getEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->bodyCb:Landroid/widget/CheckBox;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/i;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->sceneCb:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->u()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;->getEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->sceneCb:Landroid/widget/CheckBox;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->viewSelect:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType$a;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->r()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;->getViewPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType$a;->a(I)Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->pointSelect:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType$a;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->s()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;->getPointType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType$a;->a(I)Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->typeSelect:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType$a;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->u()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;->getDisplayType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType$a;->a(I)Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->sceneSelect:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->k:Ljava/util/List;

    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;

    .line 12
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;->getId()J

    move-result-wide v4

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->u()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;

    move-result-object v6

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;->getScenePointId()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->lightEt:Landroid/widget/EditText;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->s()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;->getTime()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->lightEt:Landroid/widget/EditText;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 15
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->onEt:Landroid/widget/EditText;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->u()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;->getTime()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->onEt:Landroid/widget/EditText;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/b/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->n(Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->s()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->u()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->h:Z

    return-void
.end method

.method private final n(Lkotlin/jvm/b/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/a;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/b/a;)V

    const-string p1, "\u6b63\u5728\u4fdd\u5b58"

    const-string v2, "\u4fdd\u5b58\u5931\u8d25"

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/b/a;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->n(Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/b/a;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->g:I

    const-string v1, "toJSONString(dataMap)"

    if-gtz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->j:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/k;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->t()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->y()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->v()I

    move-result v5

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->w()I

    move-result v6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->i:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/k;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->j:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/k;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->i:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/k;->p(ILjava/lang/String;)Z

    :goto_0
    const-string v0, "\u4fdd\u5b58\u6210\u529f"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/e;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/b/a;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Lkotlin/jvm/b/a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->h:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final r()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->i:Ljava/util/HashMap;

    const-string v1, "201"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;-><init>()V

    :cond_1
    return-object v0
.end method

.method private final s()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->i:Ljava/util/HashMap;

    const-string v1, "202"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;-><init>()V

    :cond_1
    return-object v0
.end method

.method private final t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final u()Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->i:Ljava/util/HashMap;

    const-string v1, "203"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;-><init>()V

    :cond_1
    return-object v0
.end method

.method private final v()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->e:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final w()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->f:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->c:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->h:Z

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/d2;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$init$1$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$init$1$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$init$1$2;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$init$1$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    .line 4
    invoke-direct {p1, p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/d2;-><init>(Landroid/content/Context;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u60c5\u666f\u89e6\u53d1\u914d\u7f6e"

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->closeTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->descTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->saveTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/j;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->viewSelect:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->pointSelect:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->sceneSelect:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->typeSelect:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->P()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->viewSelect:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/k;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->pointSelect:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/k;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->typeSelect:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/k;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;->sceneSelect:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->k:Ljava/util/List;

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v0

    .line 10
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 12
    instance-of v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType;

    const-string v5, ""

    if-eqz v4, :cond_4

    .line 13
    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType;->getLabel()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 14
    :cond_4
    instance-of v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType;

    if-eqz v4, :cond_5

    .line 15
    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType;->getLabel()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 16
    :cond_5
    instance-of v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    if-eqz v4, :cond_6

    .line 17
    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->getLabel()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 18
    :cond_6
    instance-of v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;

    if-eqz v4, :cond_8

    .line 19
    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move-object v5, v3

    .line 20
    :cond_8
    :goto_2
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_9
    new-instance v2, Landroidx/appcompat/widget/d0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/d0;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->new_collect_list_item:I

    invoke-direct {v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/d0;->l(Landroid/widget/ListAdapter;)V

    const/4 v1, -0x2

    .line 23
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/d0;->P(I)V

    .line 24
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/d0;->G(I)V

    .line 25
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/d0;->B(Landroid/view/View;)V

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/d0;->I(Z)V

    .line 27
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/c;

    invoke-direct {v1, v0, p0, p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/c;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/view/View;Landroidx/appcompat/widget/d0;)V

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/d0;->K(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 28
    invoke-virtual {v2}, Landroidx/appcompat/widget/d0;->show()V

    return-void
.end method
