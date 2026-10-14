.class public Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;
.super Lf/a/a/a/n/d/f;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field public d:Lcn/mucang/jiakaoyi/uilib/r/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lf/a/a/a/n/d/f;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->c:I

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/r/a;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0$a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0$a;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;)V

    invoke-direct {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->d:Lcn/mucang/jiakaoyi/uilib/r/a;

    return-void
.end method

.method public static A(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;-><init>()V

    .line 2
    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-string p1, "ChaocheHintDialogFragment"

    .line 3
    invoke-virtual {v0, p0, p1}, Lf/a/a/a/n/d/f;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic r(Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->c:I

    return p0
.end method

.method static synthetic s(Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;)I
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->c:I

    return v0
.end method

.method static synthetic t(Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic u(Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->v(Z)V

    return-void
.end method

.method private v(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->d:Lcn/mucang/jiakaoyi/uilib/r/a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method

.method private synthetic w(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->v(Z)V

    return-void
.end method

.method private synthetic y(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->v(Z)V

    return-void
.end method


# virtual methods
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
    .locals 3

    .line 1
    sget p3, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->dialog_chaoche_dao_hint:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->tv_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->a:Landroid/widget/TextView;

    .line 3
    sget p3, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_count_down_dialog_msg:I

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->d:Lcn/mucang/jiakaoyi/uilib/r/a;

    const-wide/16 v0, 0x3e8

    invoke-static {p2, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 5
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->txt_buzai:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcn/mucang/android/jiakaoyi/k3setting/exam/d;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/d;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->txt_zai:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcn/mucang/android/jiakaoyi/k3setting/exam/e;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/e;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public synthetic x(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->w(Landroid/view/View;)V

    return-void
.end method

.method public synthetic z(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->y(Landroid/view/View;)V

    return-void
.end method
