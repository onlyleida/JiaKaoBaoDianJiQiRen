.class public final Lcn/mucang/sundial/library/activity/DebugActivity;
.super Lcn/mucang/sundial/library/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/activity/DebugActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\tJ\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001d\u0010\u000f\u001a\u00020\n8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activity/DebugActivity;",
        "Lcn/mucang/sundial/library/activity/BaseActivity;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/os/Bundle;)Landroid/view/View;",
        "Lkotlin/v;",
        "onClickedRightFull",
        "()V",
        "Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;",
        "viewBinding$delegate",
        "Lkotlin/f;",
        "getViewBinding",
        "()Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;",
        "viewBinding",
        "<init>",
        "Companion",
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
.field public static final Companion:Lcn/mucang/sundial/library/activity/DebugActivity$Companion;

.field public static final KEY_DEBUG_CAMERA:Ljava/lang/String; = "debug_camera"

.field public static final KEY_WIFI_LOCATION:Ljava/lang/String; = "wifi_location"

.field public static final PREF_FILE:Ljava/lang/String; = "dbg"


# instance fields
.field private final viewBinding$delegate:Lkotlin/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/sundial/library/activity/DebugActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/activity/DebugActivity$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/sundial/library/activity/DebugActivity;->Companion:Lcn/mucang/sundial/library/activity/DebugActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;

    new-instance v2, Lcn/mucang/sundial/library/activity/DebugActivity$$special$$inlined$viewBinding$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/DebugActivity$$special$$inlined$viewBinding$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/DebugActivity;->viewBinding$delegate:Lkotlin/f;

    return-void
.end method

.method private final getViewBinding()Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/DebugActivity;->viewBinding$delegate:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;

    return-object v0
.end method


# virtual methods
.method protected onClickedRightFull()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/DebugActivity;->getViewBinding()Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;->forceCheckoutCoach:Landroid/widget/Button;

    sget-object v1, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$1;->INSTANCE:Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$1;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;->forceCheckoutStudent:Landroid/widget/Button;

    sget-object v1, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$2;->INSTANCE:Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$2;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;->testCamera:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$$inlined$with$lambda$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$$inlined$with$lambda$1;-><init>(Lcn/mucang/sundial/library/activity/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;->restoreSystemLauncher:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$$inlined$with$lambda$2;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$$inlined$with$lambda$2;-><init>(Lcn/mucang/sundial/library/activity/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;->debug2:Landroid/view/View;

    new-instance v1, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$$inlined$with$lambda$3;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$$inlined$with$lambda$3;-><init>(Lcn/mucang/sundial/library/activity/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const-string v0, ""

    .line 7
    invoke-static {v0}, Lcn/mucang/sundial/library/util/AppUtil;->getMateData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;->vendor:Landroid/widget/TextView;

    const-string v1, "vendor"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v0, "Sdk"

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/DebugActivity;->getViewBinding()Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "viewBinding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
