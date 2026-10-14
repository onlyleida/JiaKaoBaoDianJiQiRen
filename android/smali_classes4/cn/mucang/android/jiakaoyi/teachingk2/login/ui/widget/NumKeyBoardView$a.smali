.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$a;
.super Lf/a/a/a/u/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/a/a/a/u/a<",
        "Ljava/lang/String;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0015\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$ItemBinder;",
        "Lcn/mucang/android/core/viewbinding/ViewBindingBinder;",
        "",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;)V",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/core/viewbinding/ViewBindingHolder;",
        "key",
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


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;

    .line 2
    invoke-direct {p0}, Lf/a/a/a/u/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$a;->d(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$a;->c(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private static final c(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;)Landroid/widget/EditText;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    if-ltz p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p0

    invoke-interface {p2, p0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :goto_1
    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->c(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;)Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->c(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;)Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->a(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->c(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;)Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$b;

    move-result-object p0

    const/16 p1, 0x65

    const-wide/16 v0, 0x190

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lf/a/a/a/u/c;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$a;->onBindViewHolder(Lf/a/a/a/u/c;Ljava/lang/String;)V

    return-void
.end method

.method protected onBindViewHolder(Lf/a/a/a/u/c;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/a/a/u/c<",
            "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u5220\u9664"

    .line 2
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;->tvKeyDel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;->tvKey:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;->tvKey:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;->tvKeyDel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;->tvKey:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;->tvKey:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/b;

    invoke-direct {v2, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;->tvKeyDel:Landroid/widget/ImageView;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/a;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
