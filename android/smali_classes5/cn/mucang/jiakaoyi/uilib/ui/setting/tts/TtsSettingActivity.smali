.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0008\u0010\u0011\u001a\u00020\u000bH\u0014J\u0008\u0010\u0012\u001a\u00020\u000bH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "()V",
        "index",
        "",
        "speakers",
        "",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;",
        "checkGrade",
        "",
        "getStatName",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onResume",
        "Companion",
        "uilib_release"
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
.field public static final d:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity$a;


# instance fields
.field private a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->VoiceRobot:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->b:Ljava/util/List;

    return-void
.end method

.method private final g()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/RadioButton;

    .line 1
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    const/4 v2, 0x0

    const-string v3, "viewBinding"

    if-eqz v1, :cond_7

    iget-object v4, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->speed30:Landroid/widget/RadioButton;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    .line 2
    iget-object v5, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->speed40:Landroid/widget/RadioButton;

    aput-object v5, v0, v4

    const/4 v4, 0x2

    if-eqz v1, :cond_5

    .line 3
    iget-object v5, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->speed50:Landroid/widget/RadioButton;

    aput-object v5, v0, v4

    const/4 v4, 0x3

    if-eqz v1, :cond_4

    .line 4
    iget-object v5, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->speed60:Landroid/widget/RadioButton;

    aput-object v5, v0, v4

    const/4 v4, 0x4

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->speed70:Landroid/widget/RadioButton;

    aput-object v1, v0, v4

    .line 6
    invoke-static {v0}, Lkotlin/collections/s;->f([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 8
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/e;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->speedRadio:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    return-void

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-void

    .line 10
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method public static synthetic h(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->v(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic i(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->q(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->s(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->u(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->w(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->y(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->x(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->r(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->t(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final r(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->a()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->parse(I)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v0

    const-string v1, "kemu"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/s/j;->m(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne v0, v1, :cond_0

    const-string p0, "\u8bf7\u5148\u9009\u62e9\u542f\u7528\u7684\u8003\u573a"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "\u70b9\u51fb\u4e0b\u8f7d\u8bed\u97f3\u5305\u6309\u94ae"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final s(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;Landroid/view/View;)V
    .locals 12

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->m()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 5
    new-instance v11, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 6
    new-instance v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/l;

    invoke-direct {v5, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/l;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x70

    const/4 v10, 0x0

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u6e05\u9664\u7f13\u5b58\u540e\uff0c\u9996\u6b21\u64ad\u653e\u7684\u8bed\u97f3\u4f1a\u64ad\u653e\u8f83\u6162\uff0c\u56e0\u4e3a\u5c06\u4f1a\u91cd\u65b0\u5408\u6210\uff0c\u786e\u5b9a\u6e05\u9664\u5417\uff1f"

    const-string v4, "\u786e\u5b9a"

    move-object v1, v11

    .line 7
    invoke-direct/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 8
    invoke-direct {v0, p0, v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method private static final t(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/g;

    invoke-direct {p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/g;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final u(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/m;->b(Ljava/lang/String;)Z

    const-string p0, "\u6e05\u9664\u672c\u5730\u7684\u5408\u6210\u6570\u636e\u6210\u529f"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const-string p0, "\u5ba2\u6237\u624b\u52a8\u6e05\u7a7a\u5408\u6210\u8bed\u97f3\u7684\u7f13\u5b58"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private static final v(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;Landroid/widget/RadioGroup;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/e;->f(I)V

    return-void
.end method

.method private static final w(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$string;->jkbd_app_name:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\uff0c\u5168\u7a0b\u667a\u80fd\u8bc4\u5224\uff0c\u6559\u7ec3\u7701\u5fc3\u5b66\u5458\u653e\u5fc3"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->b:Ljava/util/List;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->c:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 3
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 4
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->c:I

    return-void
.end method

.method private static final x(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "it.context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static final y(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity$a;

    invoke-virtual {p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8bed\u97f3\u8bbe\u7f6e"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_e

    .line 3
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/e;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/e;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v2, "\u8bed\u97f3\u8bbe\u7f6e"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    new-instance v9, Lcn/mucang/android/jiakaoyi/framework/base/e;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    new-instance v6, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity$onCreate$2;

    invoke-direct {v6, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity$onCreate$2;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/framework/base/e;-><init>(IJLkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const-string v3, "\u4e0b\u8f7d\u8bed\u97f3\u5305"

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    sget-object v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/k;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/k;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->voiceClearTv:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/f;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/f;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->g()V

    .line 12
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->speedRadio:Landroid/widget/RadioGroup;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/d;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/d;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;)V

    invoke-virtual {p1, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->tryListen:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/h;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/h;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->voiceDebugTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->voiceDebugTv:Landroid/widget/TextView;

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/j;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/j;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->voiceDebugTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    :goto_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->voicePackDebugTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/i;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/i;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->d()Lcn/mucang/android/jiakaoyi/framework/tts/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->c()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->voicePackDebugTv:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_3
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
