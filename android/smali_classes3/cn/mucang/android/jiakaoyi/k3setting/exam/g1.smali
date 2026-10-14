.class public Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;
.super Lf/a/a/a/n/d/f;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;,
        Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$d;
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

.field private final b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

.field private g:Lcn/mucang/android/jiakaoyi/framework/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

.field private i:Lcn/mucang/android/image/view/MucangImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/a/n/d/f;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$b;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method private synthetic A(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->l:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_show_light_desc:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->l:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$drawable;->ic_exam_show_light:I

    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->k:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->l:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_hide_light_desc:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->l:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$drawable;->ic_exam_hide_light:I

    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static E(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;Lcn/mucang/android/jiakaoyi/framework/h/c;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;",
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;-><init>()V

    .line 2
    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->c:Ljava/util/List;

    .line 3
    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->d:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    .line 4
    iput-object p3, v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->e:Ljava/util/Map;

    .line 5
    iput-object p4, v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->f:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    .line 6
    iput-object p5, v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->g:Lcn/mucang/android/jiakaoyi/framework/h/c;

    .line 7
    iput-boolean p6, v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->n:Z

    const-string p1, "LightExamFragment"

    .line 8
    invoke-virtual {v0, p0, p1}, Lf/a/a/a/n/d/f;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->h:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->stop()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->h:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method static synthetic r(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->f:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    return-object p0
.end method

.method static synthetic s(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)Lcn/mucang/android/image/view/MucangImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->i:Lcn/mucang/android/image/view/MucangImageView;

    return-object p0
.end method

.method static synthetic t(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic u(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic v(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->m:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;

    return-object p0
.end method

.method private synthetic w(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->f:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;->onClickClose()V

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->G()V

    .line 3
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method

.method private synthetic y(Lcn/mucang/android/jiakaoyi/k3setting/exam/a1;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/a1;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->F()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/a1;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->C()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/a1;->a()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->D()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->F()V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic B(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->A(Landroid/view/View;)V

    return-void
.end method

.method public C()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->h:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->pause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public D()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->h:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->resume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public F()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->G()V

    .line 2
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

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
    sget p3, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->exam_light_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->e:Ljava/util/Map;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->d:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->c:Ljava/util/List;

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->g:Lcn/mucang/android/jiakaoyi/framework/h/c;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->f:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->G()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->f:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;->onFinish()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->G()V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fe23d70a3d70a3dL    # 0.57

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v0

    const-wide v4, 0x3fe4fdf3b645a1cbL    # 0.656

    mul-double v2, v2, v4

    double-to-int v0, v2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 6
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 7
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 9
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 5
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->close_dialog:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/h0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->examTopicDesc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->k:Landroid/widget/TextView;

    .line 7
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->examTopicName:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->j:Landroid/widget/TextView;

    .line 8
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->currentLight:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/image/view/MucangImageView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->i:Lcn/mucang/android/image/view/MucangImageView;

    .line 9
    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->lightList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->hideTv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->l:Landroid/widget/TextView;

    .line 11
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->m:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;

    .line 12
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x5

    invoke-direct {p1, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->m:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 15
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->c:Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->d:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->e:Ljava/util/Map;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->g:Lcn/mucang/android/jiakaoyi/framework/h/c;

    iget-boolean v8, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->n:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/framework/h/c;Z)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->h:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    .line 16
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->start()V

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->f:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->c:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;->onStart(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    .line 18
    const-class p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/a1;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object p2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/f0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/f0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->l:Landroid/widget/TextView;

    new-instance p2, Lcn/mucang/android/jiakaoyi/k3setting/exam/g0;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic x(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->w(Landroid/view/View;)V

    return-void
.end method

.method public synthetic z(Lcn/mucang/android/jiakaoyi/k3setting/exam/a1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->y(Lcn/mucang/android/jiakaoyi/k3setting/exam/a1;)V

    return-void
.end method
