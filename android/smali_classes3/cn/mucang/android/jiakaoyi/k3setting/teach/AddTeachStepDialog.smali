.class public final Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;
.super Lf/a/a/a/n/d/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0012\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J$\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;",
        "Lcn/mucang/android/core/permission/dialog/SafeDialogFragment;",
        "examSiteId",
        "",
        "successCallback",
        "Lkotlin/Function0;",
        "",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "getExamSiteId",
        "()Ljava/lang/String;",
        "popupWindow",
        "Landroid/widget/PopupWindow;",
        "selectStep",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "getSuccessCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "closeInputMethod",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;",
        "initSpinner",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "Companion",
        "k3setting_release"
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
.field public static final e:Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/PopupWindow;

.field private d:Lcn/mucang/android/jiakaoyi/engine/model/Step;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->e:Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "examSiteId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lf/a/a/a/n/d/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->b:Lkotlin/jvm/b/a;

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ZhiXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->w(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    return-void
.end method

.method public static synthetic B(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->D(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->F(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;Landroid/view/View;)V

    return-void
.end method

.method private static final D(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->c:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->c:Landroid/widget/PopupWindow;

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_3

    .line 3
    :cond_3
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->s(Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->c:Landroid/widget/PopupWindow;

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;->spinnerStepLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 5
    :goto_1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->c:Landroid/widget/PopupWindow;

    if-nez p0, :cond_5

    goto :goto_2

    .line 6
    :cond_5
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;->spinnerStepLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    const/4 v0, -0x2

    .line 7
    invoke-virtual {p0, p2, v0}, Landroid/widget/PopupWindow;->update(II)V

    .line 8
    :goto_2
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;->imgMore:Landroid/widget/ImageView;

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_3
    return-void
.end method

.method private static final E(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method

.method private static final F(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;Landroid/view/View;)V
    .locals 6

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;->teachRemark:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, p2, v2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final synthetic r(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;)Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object p0
.end method

.method private final s(Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;->teachRemark:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method private final v(Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    :goto_1
    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->c:Landroid/widget/PopupWindow;

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->popup_dialog_layout:I

    invoke-virtual {v0, v4, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 6
    sget v3, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->recycler_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 8
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcn/mucang/android/jiakaoyi/k3setting/R$drawable;->shape_e0e0e0_divider:I

    invoke-static {v5, v6}, Landroidx/core/a/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcn/mucang/android/jiakaoyi/k3setting/R$dimen;->dp_10:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 12
    invoke-direct {v4, v2, v5, v6, v7}, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;-><init>(ILandroid/graphics/drawable/Drawable;II)V

    .line 13
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 14
    new-instance v4, Lcom/drakeet/multitype/f;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    const/4 v13, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 15
    new-instance v5, Lcn/mucang/android/jiakaoyi/k3setting/teach/x;

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/teach/c;

    invoke-direct {v6, p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/c;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;)V

    invoke-direct {v5, v6}, Lcn/mucang/android/jiakaoyi/k3setting/teach/x;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 16
    const-class v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v4, v6, v5}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 17
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/g;->d()Ljava/util/List;

    move-result-object v5

    .line 18
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 20
    iget v8, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v9, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v9, v9, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v8, v9, :cond_6

    sget-object v9, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ShangChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v9, v9, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v8, v9, :cond_6

    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_5

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_7
    invoke-virtual {v4, v6}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 22
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 23
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 24
    new-instance v1, Landroid/widget/PopupWindow;

    .line 25
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;->spinnerStepLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/4 v4, -0x2

    .line 26
    invoke-direct {v1, v0, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->c:Landroid/widget/PopupWindow;

    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 28
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 29
    :goto_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "#55000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    :goto_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/teach/b;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/b;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :goto_6
    return-void
.end method

.method private static final w(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "step"

    .line 1
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;->tvStepName:Landroid/widget/TextView;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->c:Landroid/widget/PopupWindow;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;)V
    .locals 1

    const-string v0, "$viewBinding"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;->imgMore:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->E(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->x(Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;)V

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
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;

    move-result-object p1

    const-string p2, "inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;->spinnerStepLayout:Landroid/widget/LinearLayout;

    new-instance p3, Lcn/mucang/android/jiakaoyi/k3setting/teach/d;

    invoke-direct {p3, p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/d;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;->tvStepName:Landroid/widget/TextView;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->v(Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;)V

    .line 5
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;->cancelTv:Landroid/widget/TextView;

    new-instance p3, Lcn/mucang/android/jiakaoyi/k3setting/teach/a;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/a;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;->addTeachStepTv:Landroid/widget/TextView;

    new-instance p3, Lcn/mucang/android/jiakaoyi/k3setting/teach/e;

    invoke-direct {p3, p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/e;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string p2, "viewBinding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Lkotlin/jvm/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->b:Lkotlin/jvm/b/a;

    return-object v0
.end method
