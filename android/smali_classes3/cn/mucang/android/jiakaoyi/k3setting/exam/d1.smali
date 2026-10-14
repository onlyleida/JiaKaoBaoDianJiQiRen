.class public Lcn/mucang/android/jiakaoyi/k3setting/exam/d1;
.super Lf/a/a/a/n/d/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/a/n/d/f;-><init>()V

    return-void
.end method

.method public static B(Landroidx/fragment/app/FragmentManager;)Lcn/mucang/android/jiakaoyi/k3setting/exam/d1;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/d1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/d1;-><init>()V

    const-string v1, "AroundLandDialogFragment"

    .line 2
    invoke-virtual {v0, p0, v1}, Lf/a/a/a/n/d/f;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic r(Landroid/view/View;)V
    .locals 1

    .line 1
    sget p1, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_huandao_left:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 2
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method

.method private synthetic t(Landroid/view/View;)V
    .locals 1

    .line 1
    sget p1, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_huandao_right:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 2
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method

.method private synthetic v(Landroid/view/View;)V
    .locals 1

    .line 1
    sget p1, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_huandao_diaotou:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 2
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method

.method private synthetic x(Landroid/view/View;)V
    .locals 1

    .line 1
    sget p1, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_huandao_zhixing:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 2
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method

.method private synthetic z(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic A(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/d1;->z(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/k3setting/R$style;->jiakaoyi_dialog_fragment:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/c;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->dialog_around_land_hint:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->txt_left:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcn/mucang/android/jiakaoyi/k3setting/exam/j;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/j;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/d1;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->txt_right:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcn/mucang/android/jiakaoyi/k3setting/exam/n;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/n;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/d1;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->txt_diaotou:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcn/mucang/android/jiakaoyi/k3setting/exam/k;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/k;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/d1;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->txt_straight:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcn/mucang/android/jiakaoyi/k3setting/exam/m;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/m;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/d1;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->img_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcn/mucang/android/jiakaoyi/k3setting/exam/l;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/l;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/d1;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public synthetic s(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/d1;->r(Landroid/view/View;)V

    return-void
.end method

.method public synthetic u(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/d1;->t(Landroid/view/View;)V

    return-void
.end method

.method public synthetic w(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/d1;->v(Landroid/view/View;)V

    return-void
.end method

.method public synthetic y(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/d1;->x(Landroid/view/View;)V

    return-void
.end method
