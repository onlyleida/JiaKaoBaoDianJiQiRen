.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$SettingItemBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDrivingSettingBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\n\u000b\u000cB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDrivingSettingBinding;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "getStatName",
        "",
        "init",
        "",
        "Companion",
        "DriveSettingItem",
        "SettingItemBinder",
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
.field public static final c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$a;


# instance fields
.field private final b:Lcom/drakeet/multitype/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;->b:Lcom/drakeet/multitype/f;

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9a7e\u9a76\u884c\u4e3a\u68c0\u6d4b\u8bbe\u7f6e"

    return-object v0
.end method

.method protected init()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDrivingSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDrivingSettingBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/e;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDrivingSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDrivingSettingBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u9a7e\u9a76\u884c\u4e3a\u68c0\u6d4b\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDrivingSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDrivingSettingBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDrivingSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDrivingSettingBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;->b:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$SettingItemBinder;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$SettingItemBinder;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;)V

    .line 7
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableDrive:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->text_30:I

    const-string v4, "\u662f\u5426\u5f00\u542f\u9a7e\u9a76\u884c\u4e3a\u68c0\u6d4b"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v2, v5, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->text_27:I

    const-string v4, "\u6559\u5b66\u9a7e\u9a76\u884c\u4e3a"

    const/4 v6, 0x0

    invoke-direct {v1, v4, v6, v5, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableFace:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->text_24:I

    const-string v7, "\u662f\u5426\u5f00\u542f\u884c\u9a76\u4e2d\u4f4e\u5934\u68c0\u6d4b"

    const/4 v8, 0x0

    invoke-direct {v1, v7, v2, v8, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableStart:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const-string v7, "\u662f\u5426\u5f00\u542f\u884c\u9a76\u4e2d\u6446\u5934\u68c0\u6d4b"

    invoke-direct {v1, v7, v2, v8, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    const-string v2, "\u5b89\u5168\u9a7e\u9a76\u884c\u4e3a"

    invoke-direct {v1, v2, v6, v5, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableWheelNone:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const-string v6, "\u662f\u5426\u5f00\u542f\u884c\u9a76\u4e2d\u53cc\u624b\u79bb\u5f00\u65b9\u5411\u76d8\u68c0\u6d4b"

    invoke-direct {v1, v6, v2, v8, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableWheelSingle:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const-string v6, "\u662f\u5426\u5f00\u542f\u884c\u9a76\u4e2d\u5355\u624b\u6253\u65b9\u5411\u76d8\u68c0\u6d4b"

    invoke-direct {v1, v6, v2, v8, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableDoor:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const-string v6, "\u662f\u5426\u5f00\u542f\u5355\u624b\u5f00\u8f66\u95e8\u68c0\u6d4b"

    invoke-direct {v1, v6, v2, v8, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableCall:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const-string v6, "\u662f\u5426\u5f00\u542f\u884c\u9a76\u4e2d\u63a5\u6253\u7535\u8bdd\u68c0\u6d4b"

    invoke-direct {v1, v6, v2, v8, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableDrink:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const-string v6, "\u662f\u5426\u5f00\u542f\u884c\u9a76\u4e2d\u559d\u6c34\u68c0\u6d4b"

    invoke-direct {v1, v6, v2, v8, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableSmoke:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const-string v6, "\u662f\u5426\u5f00\u542f\u884c\u9a76\u4e2d\u62bd\u70df\u68c0\u6d4b"

    invoke-direct {v1, v6, v2, v8, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableFatigue:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const-string v6, "\u662f\u5426\u5f00\u542f\u884c\u9a76\u4e2d\u75b2\u52b3\u9a7e\u9a76\u68c0\u6d4b"

    invoke-direct {v1, v6, v2, v8, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableHandCross:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const-string v6, "\u662f\u5426\u5f00\u542f\u884c\u9a76\u4e2d\u53cc\u624b\u4ea4\u53c9\u6253\u65b9\u5411\u76d8\u68c0\u6d4b"

    invoke-direct {v1, v6, v2, v8, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableSitTilt:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const-string v6, "\u662f\u5426\u5f00\u542f\u5750\u59ff\u503e\u659c\u68c0\u6d4b"

    invoke-direct {v1, v6, v2, v8, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableEmotionCheck:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const-string v6, "\u662f\u5426\u5f00\u542f\u8868\u60c5\u68c0\u6d4b"

    invoke-direct {v1, v6, v2, v8, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableNightClose:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const-string v4, "\u665a\u4e0a\u662f\u5426\u81ea\u52a8\u5173\u95ed\u9a7e\u9a76\u884c\u4e3a\u68c0\u6d4b\uff08\u65e5\u843d\u524d1\u5c0f\u65f6\u5173\u95ed\uff0c\u65e5\u51fa\u540e1\u5c0f\u65f6\u5f00\u542f\uff09"

    invoke-direct {v1, v4, v2, v5, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v1, v0}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    return-void
.end method
