.class public final Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;,
        Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000A\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\n\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB\'\u0008\u0007\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\u0004R\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lkotlin/v;",
        "deletedEdit",
        "()V",
        "Landroid/widget/EditText;",
        "edit",
        "bindEditText",
        "(Landroid/widget/EditText;)V",
        "onDetachedFromWindow",
        "cn/mucang/sundial/library/widget/SundialNumKeyBoardView$mHandler$1",
        "mHandler",
        "Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$mHandler$1;",
        "mEditText",
        "Landroid/widget/EditText;",
        "",
        "mSpanCount",
        "I",
        "",
        "",
        "mKeyWords",
        "[Ljava/lang/String;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Companion",
        "ItemBinder",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$Companion;

.field public static final KEY_DELETE:Ljava/lang/String; = "\u5220\u9664"

.field public static final MSG_DELETE:I = 0x65

.field public static final TAG:Ljava/lang/String; = "NumKeyBoardView"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private final mHandler:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$mHandler$1;

.field private final mKeyWords:[Ljava/lang/String;

.field private final mSpanCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->Companion:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/o;)V

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

    iput-object v2, v0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->mKeyWords:[Ljava/lang/String;

    const/4 v3, 0x3

    .line 4
    iput v3, v0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->mSpanCount:I

    .line 5
    new-instance v4, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$mHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$mHandler$1;-><init>(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;Landroid/os/Looper;)V

    iput-object v4, v0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->mHandler:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$mHandler$1;

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
    new-instance v2, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;-><init>(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;)V

    .line 9
    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lme/drakeet/multitype/d;->f(Ljava/lang/Class;Lme/drakeet/multitype/b;)V

    .line 10
    new-instance v2, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcn/mucang/sundial/library/R$dimen;->rpx_2:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v2, v1}, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;-><init>(I)V

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
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$deletedEdit(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->deletedEdit()V

    return-void
.end method

.method public static final synthetic access$getMEditText$p(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static final synthetic access$getMHandler$p(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;)Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$mHandler$1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->mHandler:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$mHandler$1;

    return-object p0
.end method

.method public static final synthetic access$setMEditText$p(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->mEditText:Landroid/widget/EditText;

    return-void
.end method

.method private final deletedEdit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    return-void
.end method


# virtual methods
.method public final bindEditText(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "edit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->mHandler:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$mHandler$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
