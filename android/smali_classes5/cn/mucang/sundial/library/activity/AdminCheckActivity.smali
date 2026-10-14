.class public final Lcn/mucang/sundial/library/activity/AdminCheckActivity;
.super Lcn/mucang/sundial/library/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u0012\u001a\u00020\r8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activity/AdminCheckActivity;",
        "Lcn/mucang/sundial/library/activity/BaseActivity;",
        "Lkotlin/v;",
        "initView",
        "()V",
        "",
        "getPassword",
        "()Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/os/Bundle;)Landroid/view/View;",
        "Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;",
        "binding$delegate",
        "Lkotlin/f;",
        "getBinding",
        "()Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;",
        "binding",
        "<init>",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final binding$delegate:Lkotlin/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;

    new-instance v2, Lcn/mucang/sundial/library/activity/AdminCheckActivity$$special$$inlined$viewBinding$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/AdminCheckActivity$$special$$inlined$viewBinding$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/AdminCheckActivity;->binding$delegate:Lkotlin/f;

    return-void
.end method

.method public static final synthetic access$getPassword(Lcn/mucang/sundial/library/activity/AdminCheckActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/AdminCheckActivity;->getPassword()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/AdminCheckActivity;->binding$delegate:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;

    return-object v0
.end method

.method private final getPassword()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "yyyyMMdd"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/p0;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "(this as java.lang.String).toCharArray()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-char v5, v1, v3

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final initView()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/AdminCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;->back:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/sundial/library/activity/AdminCheckActivity$initView$$inlined$with$lambda$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/AdminCheckActivity$initView$$inlined$with$lambda$1;-><init>(Lcn/mucang/sundial/library/activity/AdminCheckActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;->checkPassword:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/sundial/library/activity/AdminCheckActivity$initView$$inlined$with$lambda$2;

    invoke-direct {v2, v0, p0}, Lcn/mucang/sundial/library/activity/AdminCheckActivity$initView$$inlined$with$lambda$2;-><init>(Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;Lcn/mucang/sundial/library/activity/AdminCheckActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/AdminCheckActivity;->initView()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/AdminCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
