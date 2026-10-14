.class public Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;->b:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;->d:F

    return-void
.end method

.method static synthetic r(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;->b:Z

    return p1
.end method

.method private synthetic s(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismiss()V

    return-void
.end method

.method private synthetic u(Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogRouteMoveBrakePointBinding;Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogRouteMoveBrakePointBinding;->etDistance:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/y;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;->b:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;->d:F

    goto :goto_0

    :cond_1
    iget p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;->d:F

    const/high16 v0, 0x43340000    # 180.0f

    add-float/2addr p2, v0

    :goto_0
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->d(F)F

    move-result p2

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/i/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/i/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    float-to-double v2, p2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-double v6, p2

    mul-double v4, v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v6

    iget-wide v8, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v4, v8

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double p1, p1

    mul-double v2, v2, p1

    mul-double v2, v2, v6

    iget-wide p1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v2, p1

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1, v4, v5, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/i/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismiss()V

    return-void

    :cond_2
    :goto_1
    const-string p1, "\u8f93\u5165\u503c\u65e0\u6548"

    .line 12
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static w(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;FLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            "F",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;-><init>()V

    .line 2
    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 3
    iput p2, v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;->d:F

    .line 4
    iput-object p3, v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-string p1, "ExamModeDialog"

    .line 5
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/k3setting/R$style;->jiakaoyi_dialog_fragment:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/c;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogRouteMoveBrakePointBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogRouteMoveBrakePointBinding;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "\u5411\u524d\u79fb\u52a8"

    .line 3
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "\u5411\u540e\u79fb\u52a8"

    .line 4
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p3, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/o1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1090008

    invoke-direct {p3, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/o1;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 6
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->k3_common_spinner_dropdown_item:I

    invoke-virtual {p3, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 7
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogRouteMoveBrakePointBinding;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 8
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogRouteMoveBrakePointBinding;->spinner:Landroid/widget/Spinner;

    new-instance p3, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1$a;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1$a;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 9
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogRouteMoveBrakePointBinding;->tvCancel:Landroid/widget/TextView;

    new-instance p3, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/j0;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/j0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogRouteMoveBrakePointBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance p3, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/k0;

    invoke-direct {p3, p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/k0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogRouteMoveBrakePointBinding;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogRouteMoveBrakePointBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/c;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public synthetic t(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;->s(Landroid/view/View;)V

    return-void
.end method

.method public synthetic v(Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogRouteMoveBrakePointBinding;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c1;->u(Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogRouteMoveBrakePointBinding;Landroid/view/View;)V

    return-void
.end method
