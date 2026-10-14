.class public final Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/g;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\u0013\u001a\u00020\nH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/dialog/CollectPreviewDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "()V",
        "step",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "getStep",
        "()Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "setStep",
        "(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onStart",
        "mapcollect_release"
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
.field private a:Lcn/mucang/android/jiakaoyi/engine/model/Step;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/g;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/g;->t(Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/g;Landroid/view/View;)V

    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/g;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$style;->jiakaoyi_dialog_fragment:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/c;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CollectPreviewDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CollectPreviewDialogBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CollectPreviewDialogBinding;->closeIv:Landroid/widget/ImageView;

    new-instance p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/b;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/g;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/g;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CollectPreviewDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CollectPreviewDialogBinding;->imageIv:Landroid/widget/ImageView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->c()Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/g;->r()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->g(Lcn/mucang/android/jiakaoyi/engine/model/Step;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p2, p3, :cond_1

    .line 7
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CollectPreviewDialogBinding;->tipTv:Landroid/widget/TextView;

    const-string p3, "\u6ce8\u610f\uff1a\u91c7\u96c6\u5185\u8fb9\u7ebf\u7684\u70b9\u3002\u5de6\u8fb9\u662f1\u53f7\u7ebf\uff0c\u53f3\u8fb9\u662f2\u53f7\u7ebf\u3002"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p2, p3, :cond_2

    .line 9
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CollectPreviewDialogBinding;->tipTv:Landroid/widget/TextView;

    const-string p3, "\u6ce8\u610f\uff1a\u8fb9\u7ebf\u91c7\u5185\u6d4b\u70b9\uff0c\u4e2d\u95f4\u7ebf\u91c7\u4e2d\u95f4\u70b9"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_DiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p2, p3, :cond_3

    .line 11
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CollectPreviewDialogBinding;->tipTv:Landroid/widget/TextView;

    const-string p3, "\u6ce8\u610f\uff1a\u8bc4\u5224\u533a\u57df\u548c\u6389\u5934\u533a\u57df\u5747\u4e3a\u53ef\u9009\u91c7\u96c6"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_3
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_BanMaXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq p2, p3, :cond_4

    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_LuKouZuoZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq p2, p3, :cond_4

    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_LuKouYouZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p2, p3, :cond_5

    .line 13
    :cond_4
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CollectPreviewDialogBinding;->tipTv:Landroid/widget/TextView;

    const-string p3, "\u6ce8\u610f\uff1a\u8bc4\u5224\u533a\u57df\u4e3a\u53ef\u9009\u91c7\u96c6"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CollectPreviewDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/c;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :goto_2
    return-void
.end method

.method public final r()Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/g;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object v0
.end method

.method public final u(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/g;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-void
.end method
