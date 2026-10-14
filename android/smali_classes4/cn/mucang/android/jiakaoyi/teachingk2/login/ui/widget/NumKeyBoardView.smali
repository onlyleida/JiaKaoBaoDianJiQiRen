.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000?\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006*\u0001\u000c\u0018\u0000 \u00182\u00020\u0001:\u0002\u0018\u0019B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\nJ\u0008\u0010\u0016\u001a\u00020\u0014H\u0002J\u0008\u0010\u0017\u001a\u00020\u0014H\u0014R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "mEditText",
        "Landroid/widget/EditText;",
        "mHandler",
        "cn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$mHandler$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$mHandler$1;",
        "mKeyWords",
        "",
        "",
        "[Ljava/lang/String;",
        "mSpanCount",
        "bindEditText",
        "",
        "edit",
        "deletedEdit",
        "onDetachedFromWindow",
        "Companion",
        "ItemBinder",
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
.field private final a:[Ljava/lang/String;

.field private b:Landroid/widget/EditText;

.field private final c:I

.field private final d:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct/range {p0 .. p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "3"

    const-string v6, "4"

    const-string v7, "5"

    const-string v8, "6"

    const-string v9, "7"

    const-string v10, "8"

    const-string v11, "9"

    const-string v12, "X"

    const-string v13, "0"

    const-string v14, "\u5220\u9664"

    .line 3
    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->a:[Ljava/lang/String;

    const/4 v3, 0x3

    .line 4
    iput v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->c:I

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$b;

    invoke-direct {v5, p0, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;Landroid/os/Looper;)V

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->d:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$b;

    .line 6
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v4, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 7
    new-instance v3, Lme/drakeet/multitype/d;

    invoke-static {v2}, Lkotlin/collections/k;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Lme/drakeet/multitype/d;-><init>(Ljava/util/List;)V

    .line 8
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;)V

    .line 9
    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lme/drakeet/multitype/d;->f(Ljava/lang/Class;Lme/drakeet/multitype/b;)V

    .line 10
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/widget/e;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_2:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v2, v1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/e;-><init>(I)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 11
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->deletedEdit()V

    return-void
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method public static final synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;)Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->d:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$b;

    return-object p0
.end method

.method private final deletedEdit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->b:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final bindEditText(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "edit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->b:Landroid/widget/EditText;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->d:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
