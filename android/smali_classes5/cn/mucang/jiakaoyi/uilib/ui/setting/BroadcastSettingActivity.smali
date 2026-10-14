.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0008\u0010\u0011\u001a\u00020\u000eH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "()V",
        "broadcastAngel",
        "",
        "broadcastDistance",
        "needOrderExe",
        "",
        "onlyUseDistance",
        "teachBroadcastAngel",
        "teachBroadcastDistance",
        "getStatName",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStop",
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


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/d;->b()I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->a:I

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/d;->b()I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->b:I

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/d;->a()I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->c:I

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/d;->l()I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->d:I

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->e:Z

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/d;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->f:Z

    return-void
.end method

.method public static final synthetic g(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->c:I

    return-void
.end method

.method public static final synthetic h(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->a:I

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->d:I

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->b:I

    return-void
.end method

.method public static synthetic k(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->q(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->r(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->p(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->t(Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->s(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private static final p(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xf

    .line 1
    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->a:I

    const/16 v0, 0x1e

    .line 2
    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->c:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->e:Z

    .line 4
    iget-object v0, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->distanceSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-virtual {v0, p2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->m(I)V

    .line 5
    iget-object p2, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->angelSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->c:I

    invoke-virtual {p2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->m(I)V

    .line 6
    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->needOrder:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->e:Z

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    const-string p0, "\u91cd\u7f6e\u6210\u529f"

    .line 7
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private static final r(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->e:Z

    return-void
.end method

.method private static final s(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->f:Z

    return-void
.end method

.method private static final t(Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;Landroid/view/View;)V
    .locals 1

    const-string p1, "$viewBinding"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->leftLightTime:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz p1, :cond_1

    :try_start_1
    invoke-static {p1}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->warningLightTime:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lez p1, :cond_2

    if-lez p0, :cond_2

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/g;->a:Lcn/mucang/android/jiakaoyi/signal/utils/g;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/utils/g;->d(I)V

    .line 4
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/utils/g;->c(I)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string p1, "\u8f93\u5165\u6570\u503c\u4e0d\u6b63\u786e"

    invoke-static {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 9
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u64ad\u62a5\u8bbe\u7f6e"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;

    move-result-object v1

    const-string v2, "inflate(layoutInflater)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/l;

    invoke-direct {v3, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/l;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v3, "\u64ad\u62a5\u8bbe\u7f6e"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const-string v3, "\u5168\u90e8\u91cd\u7f6e"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/j;

    invoke-direct {v4, v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/j;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->distanceSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    .line 10
    iget v4, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->a:I

    .line 11
    new-instance v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity$a;

    invoke-direct {v5, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity$a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;)V

    .line 12
    new-instance v6, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;

    invoke-direct {v6}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;-><init>()V

    invoke-virtual {v6, v3}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;->c(I)Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;

    .line 13
    invoke-virtual {v2, v4, v5, v6}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->k(ILcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$b;Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;)V

    .line 14
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->teachDistanceSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    .line 15
    iget v4, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->b:I

    .line 16
    new-instance v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity$b;

    invoke-direct {v5, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity$b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;)V

    .line 17
    new-instance v6, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;

    invoke-direct {v6}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;-><init>()V

    invoke-virtual {v6, v3}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;->c(I)Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;

    .line 18
    invoke-virtual {v2, v4, v5, v6}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->k(ILcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$b;Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;)V

    .line 19
    iget-object v7, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->angelSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    const-string v2, "viewBinding.angelSeekBar"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v8, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->c:I

    new-instance v9, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity$c;

    invoke-direct {v9, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity$c;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;)V

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->l(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;ILcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$b;Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;ILjava/lang/Object;)V

    .line 20
    iget-object v13, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->teachAngelSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    const-string v2, "viewBinding.teachAngelSeekBar"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v14, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->d:I

    new-instance v15, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity$d;

    invoke-direct {v15, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity$d;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;)V

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->l(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;ILcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$b;Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;ILjava/lang/Object;)V

    .line 21
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->needOrder:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-boolean v3, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->e:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 22
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->needOrder:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/k;

    invoke-direct {v3, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/k;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 23
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->onlyUseDistance:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-boolean v3, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->f:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 24
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->onlyUseDistance:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/n;

    invoke-direct {v3, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/n;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 25
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->leftLightTime:Landroid/widget/EditText;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/utils/g;->a:Lcn/mucang/android/jiakaoyi/signal/utils/g;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/g;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->warningLightTime:Landroid/widget/EditText;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/g;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->saveLightTime:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/m;

    invoke-direct {v3, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/m;-><init>(Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onStop()V

    .line 2
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->a:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/d;->g(I)V

    .line 3
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->b:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/d;->k(I)V

    .line 4
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->c:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/d;->f(I)V

    .line 5
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->d:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/d;->j(I)V

    .line 6
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->e:Z

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/d;->h(Z)V

    .line 7
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BroadcastSettingActivity;->f:Z

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/d;->i(Z)V

    return-void
.end method
