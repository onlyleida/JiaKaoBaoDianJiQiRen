.class public final Lcn/mucang/sundial/library/activity/LoginActivity;
.super Lcn/mucang/sundial/library/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/activity/LoginActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 G2\u00020\u0001:\u0001GB\u0007\u00a2\u0006\u0004\u0008F\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00022\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\u00022\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0014\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008 \u0010\u0004J)\u0010%\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!2\u0008\u0010$\u001a\u0004\u0018\u00010\u001bH\u0014\u00a2\u0006\u0004\u0008%\u0010&R\u001d\u0010,\u001a\u00020\'8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+R\u0018\u0010.\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u001d\u00104\u001a\u0002008B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010)\u001a\u0004\u00082\u00103R\u0016\u00105\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u00108\u001a\u0002078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0016\u0010:\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u0010=\u001a\u00020<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0016\u0010?\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010;R\u0018\u0010@\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010>R\u0018\u0010A\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0018\u0010D\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010E\u00a8\u0006H"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activity/LoginActivity;",
        "Lcn/mucang/sundial/library/activity/BaseActivity;",
        "Lkotlin/v;",
        "initView",
        "()V",
        "startReadIcTask",
        "rescheduleReadIcCardTask",
        "",
        "idCard",
        "onGetIdCard",
        "(Ljava/lang/String;)V",
        "initQrCode",
        "",
        "interruptToRegister",
        "()Z",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "initData",
        "initViewModel",
        "Landroidx/lifecycle/m0$b;",
        "vmFactory",
        "()Landroidx/lifecycle/m0$b;",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/os/Bundle;)Landroid/view/View;",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "onResume",
        "onPause",
        "",
        "requestCode",
        "resultCode",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Lcn/mucang/sundial/library/viewmodel/LoginViewModel;",
        "viewModel$delegate",
        "Lkotlin/f;",
        "getViewModel",
        "()Lcn/mucang/sundial/library/viewmodel/LoginViewModel;",
        "viewModel",
        "Landroid/os/Handler;",
        "readIcCardHandler",
        "Landroid/os/Handler;",
        "Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;",
        "binding$delegate",
        "getBinding",
        "()Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;",
        "binding",
        "personMode",
        "I",
        "Landroid/os/HandlerThread;",
        "readIcCardThread",
        "Landroid/os/HandlerThread;",
        "speakIcNotMatch",
        "Z",
        "Lcn/mucang/sundial/library/util/ClickController;",
        "mountainClickController",
        "Lcn/mucang/sundial/library/util/ClickController;",
        "onlyIcMode",
        "clickController",
        "lastIcData",
        "Ljava/lang/String;",
        "Lcn/mucang/sundial/library/device/IcReader;",
        "icReader",
        "Lcn/mucang/sundial/library/device/IcReader;",
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
.field public static final Companion:Lcn/mucang/sundial/library/activity/LoginActivity$Companion;

.field private static final INTERVAL_READ_IC_CARD:J = 0x3e8L

.field private static final MSG_READ_IC_CARD:I = 0x22

.field private static final TAG:Ljava/lang/String; = "LoginActivity"


# instance fields
.field private final binding$delegate:Lkotlin/f;

.field private clickController:Lcn/mucang/sundial/library/util/ClickController;

.field private icReader:Lcn/mucang/sundial/library/device/IcReader;

.field private lastIcData:Ljava/lang/String;

.field private mountainClickController:Lcn/mucang/sundial/library/util/ClickController;

.field private onlyIcMode:Z

.field private personMode:I

.field private readIcCardHandler:Landroid/os/Handler;

.field private final readIcCardThread:Landroid/os/HandlerThread;

.field private speakIcNotMatch:Z

.field private final viewModel$delegate:Lkotlin/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/sundial/library/activity/LoginActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/activity/LoginActivity$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/sundial/library/activity/LoginActivity;->Companion:Lcn/mucang/sundial/library/activity/LoginActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->personMode:I

    .line 3
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    new-instance v2, Lcn/mucang/sundial/library/activity/LoginActivity$$special$$inlined$viewBinding$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/LoginActivity$$special$$inlined$viewBinding$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->binding$delegate:Lkotlin/f;

    .line 4
    new-instance v0, Lcn/mucang/sundial/library/util/ClickController;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/util/ClickController;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->mountainClickController:Lcn/mucang/sundial/library/util/ClickController;

    .line 5
    new-instance v0, Lcn/mucang/sundial/library/activity/BaseActivity$vm$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/activity/BaseActivity$vm$1;-><init>(Lcn/mucang/sundial/library/activity/BaseActivity;)V

    .line 6
    new-instance v1, Landroidx/lifecycle/l0;

    const-class v2, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v2

    new-instance v3, Lcn/mucang/sundial/library/activity/LoginActivity$vm$$inlined$viewModels$2;

    invoke-direct {v3, p0}, Lcn/mucang/sundial/library/activity/LoginActivity$vm$$inlined$viewModels$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0}, Landroidx/lifecycle/l0;-><init>(Lkotlin/reflect/d;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    .line 7
    iput-object v1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->viewModel$delegate:Lkotlin/f;

    .line 8
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "READ_IC_CARD"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->readIcCardThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcn/mucang/sundial/library/activity/LoginActivity;)Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClickController$p(Lcn/mucang/sundial/library/activity/LoginActivity;)Lcn/mucang/sundial/library/util/ClickController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->clickController:Lcn/mucang/sundial/library/util/ClickController;

    return-object p0
.end method

.method public static final synthetic access$getIcReader$p(Lcn/mucang/sundial/library/activity/LoginActivity;)Lcn/mucang/sundial/library/device/IcReader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->icReader:Lcn/mucang/sundial/library/device/IcReader;

    return-object p0
.end method

.method public static final synthetic access$getLastIcData$p(Lcn/mucang/sundial/library/activity/LoginActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->lastIcData:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMountainClickController$p(Lcn/mucang/sundial/library/activity/LoginActivity;)Lcn/mucang/sundial/library/util/ClickController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->mountainClickController:Lcn/mucang/sundial/library/util/ClickController;

    return-object p0
.end method

.method public static final synthetic access$getPersonMode$p(Lcn/mucang/sundial/library/activity/LoginActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->personMode:I

    return p0
.end method

.method public static final synthetic access$getSpeakIcNotMatch$p(Lcn/mucang/sundial/library/activity/LoginActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->speakIcNotMatch:Z

    return p0
.end method

.method public static final synthetic access$initQrCode(Lcn/mucang/sundial/library/activity/LoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->initQrCode()V

    return-void
.end method

.method public static final synthetic access$interruptToRegister(Lcn/mucang/sundial/library/activity/LoginActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->interruptToRegister()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onGetIdCard(Lcn/mucang/sundial/library/activity/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/activity/LoginActivity;->onGetIdCard(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$rescheduleReadIcCardTask(Lcn/mucang/sundial/library/activity/LoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->rescheduleReadIcCardTask()V

    return-void
.end method

.method public static final synthetic access$setClickController$p(Lcn/mucang/sundial/library/activity/LoginActivity;Lcn/mucang/sundial/library/util/ClickController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->clickController:Lcn/mucang/sundial/library/util/ClickController;

    return-void
.end method

.method public static final synthetic access$setIcReader$p(Lcn/mucang/sundial/library/activity/LoginActivity;Lcn/mucang/sundial/library/device/IcReader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->icReader:Lcn/mucang/sundial/library/device/IcReader;

    return-void
.end method

.method public static final synthetic access$setLastIcData$p(Lcn/mucang/sundial/library/activity/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->lastIcData:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMountainClickController$p(Lcn/mucang/sundial/library/activity/LoginActivity;Lcn/mucang/sundial/library/util/ClickController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->mountainClickController:Lcn/mucang/sundial/library/util/ClickController;

    return-void
.end method

.method public static final synthetic access$setPersonMode$p(Lcn/mucang/sundial/library/activity/LoginActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->personMode:I

    return-void
.end method

.method public static final synthetic access$setSpeakIcNotMatch$p(Lcn/mucang/sundial/library/activity/LoginActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->speakIcNotMatch:Z

    return-void
.end method

.method private final getBinding()Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->binding$delegate:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    return-object v0
.end method

.method private final getViewModel()Lcn/mucang/sundial/library/viewmodel/LoginViewModel;
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->viewModel$delegate:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;

    return-object v0
.end method

.method private final initQrCode()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/activity/LoginActivity$initQrCode$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/activity/LoginActivity$initQrCode$1;-><init>(Lcn/mucang/sundial/library/activity/LoginActivity;)V

    invoke-static {v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final initView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;->getBaseBinding()Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;

    move-result-object v0

    .line 2
    iget v1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->personMode:I

    sget-object v2, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 3
    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->leftTransBtn:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$1;-><init>(Lcn/mucang/sundial/library/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->leftTransBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :goto_0
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    move-result-object v0

    .line 6
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->mountain:Lcn/mucang/sundial/library/databinding/TtIncludeBottomMountainBinding;

    const-string v3, "mountain"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/library/databinding/TtIncludeBottomMountainBinding;->getRoot()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v3, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$2;

    invoke-direct {v3, p0}, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$2;-><init>(Lcn/mucang/sundial/library/activity/LoginActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->back:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$3;

    invoke-direct {v3, p0}, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$3;-><init>(Lcn/mucang/sundial/library/activity/LoginActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget v1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->personMode:I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "back"

    const-string v4, "title"

    if-ne v1, v2, :cond_1

    .line 9
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->title:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "\u6559\u7ec3\u5458\u767b\u5f55"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->back:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->title:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "\u5b66\u5458\u767b\u5f55"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->back:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 15
    :goto_1
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->idCardNumber:Landroid/widget/EditText;

    new-instance v2, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$4;

    invoke-direct {v2, v0, p0}, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$4;-><init>(Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;Lcn/mucang/sundial/library/activity/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->login:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$5;

    invoke-direct {v2, v0, p0}, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$5;-><init>(Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;Lcn/mucang/sundial/library/activity/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->invalidAppQrCode:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$6;

    invoke-direct {v2, v0, p0}, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$6;-><init>(Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;Lcn/mucang/sundial/library/activity/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->getViewModel()Lcn/mucang/sundial/library/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;->getLastInfo()V

    :cond_2
    return-void
.end method

.method private final interruptToRegister()Z
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->isRegister()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_please_register_device:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    sget-object v1, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(I)V

    .line 4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.tt_please_register_device)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    :cond_0
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final onGetIdCard(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6ID\u5361\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->idCardNumber:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-boolean p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->onlyIcMode:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->login:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    :cond_0
    return-void
.end method

.method private final rescheduleReadIcCardTask()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->readIcCardHandler:Landroid/os/Handler;

    const/16 v1, 0x22

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->readIcCardHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private final startReadIcTask()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->readIcCardThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->readIcCardHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->readIcCardThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcn/mucang/sundial/library/activity/LoginActivity$startReadIcTask$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/LoginActivity$startReadIcTask$1;-><init>(Lcn/mucang/sundial/library/activity/LoginActivity;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 4
    iput-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->readIcCardHandler:Landroid/os/Handler;

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->icReader:Lcn/mucang/sundial/library/device/IcReader;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/mucang/sundial/library/device/IcReader;->init()V

    .line 6
    :cond_2
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->rescheduleReadIcCardTask()V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->isOnlyIcCarMode()Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->onlyIcMode:Z

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "person_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->personMode:I

    .line 4
    :cond_0
    iget v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->personMode:I

    sget-object v1, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    new-instance v0, Lcn/mucang/sundial/library/util/ClickController;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/util/ClickController;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->clickController:Lcn/mucang/sundial/library/util/ClickController;

    :cond_1
    return-void
.end method

.method public initViewModel()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;->initViewModel()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->getViewModel()Lcn/mucang/sundial/library/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;->getCoachLiveData()Landroidx/lifecycle/i0;

    move-result-object v0

    new-instance v1, Lcn/mucang/sundial/library/activity/LoginActivity$initViewModel$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/LoginActivity$initViewModel$1;-><init>(Lcn/mucang/sundial/library/activity/LoginActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->getViewModel()Lcn/mucang/sundial/library/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;->getStudentLiveData()Landroidx/lifecycle/i0;

    move-result-object v0

    new-instance v1, Lcn/mucang/sundial/library/activity/LoginActivity$initViewModel$2;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/LoginActivity$initViewModel$2;-><init>(Lcn/mucang/sundial/library/activity/LoginActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    const-string v0, "id_num"

    .line 2
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u65b0ID\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->idCardNumber:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p3, 0x1

    const/4 v0, -0x1

    if-ne p1, p3, :cond_1

    if-ne p2, v0, :cond_2

    const-string p1, "\u8df3\u8f6c\u6559\u7ec3\u9875\u9762"

    .line 6
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 7
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcn/mucang/sundial/library/activity/CoachInfoActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/4 p3, 0x3

    if-ne p1, p3, :cond_2

    .line 9
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    if-ne p2, v0, :cond_2

    const-string p1, "\u5173\u95ed\u767b\u5f55\u9875\u9762"

    .line 10
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/sundial/library/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->initData()V

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->initView()V

    .line 2
    sget-object p1, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/util/GlobalData;->getDevice()Lcn/mucang/sundial/library/device/SundialDevice;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "this.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/library/device/SundialDevice;->icReader(Landroid/content/Context;)Lcn/mucang/sundial/library/device/IcReader;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->icReader:Lcn/mucang/sundial/library/device/IcReader;

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->readIcCardThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->readIcCardThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->inertIcCardTip:Landroid/widget/TextView;

    const-string v0, "binding.inertIcCardTip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->onlyIcMode:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 6
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->idCardNumber:Landroid/widget/EditText;

    const-string v0, "binding.idCardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->onlyIcMode:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    .line 8
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->login:Landroid/widget/TextView;

    const-string v0, "binding.login"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->onlyIcMode:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    .line 10
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->qrCodeLayout:Landroid/widget/LinearLayout;

    const-string v0, "binding.qrCodeLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->onlyIcMode:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    .line 12
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-boolean p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->onlyIcMode:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    const-string v0, "\u8bf7\u63d2\u5361"

    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1, p1, v1}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 15
    :cond_5
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "person_model"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->personMode:I

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->initView()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/sundial/library/activity/TopActivity;->onPause()V

    .line 2
    sget-object v0, Lcn/mucang/android/account/m/b;->f:Lcn/mucang/android/account/m/b$a;

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b$a;->a()Lcn/mucang/android/account/m/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b;->i()V

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->readIcCardHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->readIcCardHandler:Landroid/os/Handler;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->readIcCardThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->icReader:Lcn/mucang/sundial/library/device/IcReader;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/mucang/sundial/library/device/IcReader;->destroy()V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity;->onlyIcMode:Z

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->initQrCode()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/LoginActivity;->startReadIcTask()V

    return-void
.end method

.method protected vmFactory()Landroidx/lifecycle/m0$b;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/activity/LoginActivity$vmFactory$1;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/mucang/sundial/library/activity/LoginActivity$vmFactory$1;-><init>(Lcn/mucang/sundial/library/activity/LoginActivity;Landroid/app/Application;)V

    return-object v0
.end method
