.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/SettingTeachingActivityBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0014J\u0008\u0010\u0010\u001a\u00020\rH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/SettingTeachingActivityBinding;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "loadType",
        "",
        "getLoadType",
        "()I",
        "loadType$delegate",
        "Lkotlin/Lazy;",
        "getStatName",
        "",
        "init",
        "",
        "speedConfigDesc",
        "Companion",
        "Item",
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


# static fields
.field public static final d:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$a;


# instance fields
.field private final b:Lkotlin/f;

.field private final c:Lcom/drakeet/multitype/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$loadType$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$loadType$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->b:Lkotlin/f;

    .line 3
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->c:Lcom/drakeet/multitype/f;

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final k()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method private final n()Ljava/lang/String;
    .locals 3

    const-string v0, "key-normal-speed-config"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56fa\u5b9a\u901f\u5ea6-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x40000000    # 2.0f

    const-string v2, "key-normal-speed-value"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->c(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7801

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "\u5b9e\u65f6\u901f\u5ea6"

    .line 3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6559\u5b662.0\u901f\u5ea6\u914d\u7f6e("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6559\u5b66\u8bbe\u7f6e"

    return-object v0
.end method

.method protected init()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/SettingTeachingActivityBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/SettingTeachingActivityBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v2, "\u6559\u5b66\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/SettingTeachingActivityBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/SettingTeachingActivityBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/i;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->c:Lcom/drakeet/multitype/f;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;)V

    .line 5
    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    invoke-virtual {v1, v3, v2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v1

    const-string v2, "GPS\u4fe1\u53f7\u4e3a5\u65f6\u662f\u5426\u7ee7\u7eed\u8003\u8bd5"

    const-string v3, "gps_exam_type_use_5"

    const-string v4, "\u662f\u5426\u5c55\u793a\u6559\u5b66\u70b9\u4f4d"

    const-string v5, "keyShowTeachPosition"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x3

    const-string v11, ""

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->c:Lcom/drakeet/multitype/f;

    new-array v9, v9, [Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    .line 8
    new-instance v13, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v14, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->ChangeStep:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v13, v14, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v13, v9, v8

    .line 9
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v13, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->ShowTrace:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v8, v13, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v9, v7

    .line 10
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    invoke-direct {v7, v12, v5, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v9, v6

    .line 11
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    invoke-direct {v4, v12, v3, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v9, v10

    .line 12
    invoke-static {v9}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    goto/16 :goto_0

    .line 13
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->k()I

    move-result v1

    const-string v13, "key_other_car_intrude_tip"

    if-ne v1, v10, :cond_2

    const/16 v1, 0x11

    new-array v1, v1, [Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    .line 14
    new-instance v14, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v15, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->ChangeStep:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v14, v15, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v1, v8

    .line 15
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v14, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->ShowTrace:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v8, v14, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v1, v7

    .line 16
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->GlobalError:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v7, v8, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v1, v6

    .line 17
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->GlobalRemind:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v6, v7, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v1, v10

    .line 18
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->ShowMap:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v6, v7, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v1, v9

    .line 19
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->SwitchStep:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v6, v7, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x5

    aput-object v6, v1, v7

    .line 20
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->JudgePress:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v6, v7, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x6

    aput-object v6, v1, v7

    .line 21
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->CalibrateWheel:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v6, v7, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x7

    aput-object v6, v1, v7

    const/16 v6, 0x8

    .line 22
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    invoke-direct {v7, v12, v5, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v1, v6

    const/16 v4, 0x9

    .line 23
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->RecommendedGuide:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v5, v6, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v4

    const/16 v4, 0xa

    .line 24
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    invoke-direct {v5, v12, v3, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v4

    .line 25
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->AutoTeach:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v2, v3, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const/16 v2, 0xc

    .line 26
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->n()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key-normal-speed-config"

    invoke-direct {v4, v12, v6, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2

    const/16 v2, 0xd

    .line 27
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->OtherCarIntrudeTip:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v4, v5, v13, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2

    const/16 v2, 0xe

    .line 28
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->AutoAssist:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const-string v6, "key_auto_assist"

    invoke-direct {v4, v5, v6, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2

    const/16 v2, 0xf

    .line 29
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->HelpTeach:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v4, v5, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2

    const/16 v2, 0x10

    .line 30
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->Highlight:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v4, v5, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2

    .line 31
    invoke-static {v1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 32
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34
    :cond_1
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v2, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    goto :goto_0

    .line 35
    :cond_2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->c:Lcom/drakeet/multitype/f;

    const/4 v2, 0x7

    new-array v2, v2, [Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    .line 36
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->ChangeStep:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v3, v4, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v8

    .line 37
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->GlobalError:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v3, v4, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v7

    .line 38
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->GlobalRemind:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v3, v4, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v6

    .line 39
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->ShowMap:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v3, v4, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v10

    .line 40
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->SwitchStep:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v3, v4, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v9

    .line 41
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->JudgePress:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v3, v4, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 42
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->OtherCarIntrudeTip:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-direct {v3, v4, v13, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 43
    invoke-static {v2}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 44
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/SettingTeachingActivityBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/SettingTeachingActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
