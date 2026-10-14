.class final Lcn/mucang/sundial/library/activity/BaseActivity$initViewModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/BaseActivity;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/sundial/library/entity/ActivityBaseInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcn/mucang/sundial/library/entity/ActivityBaseInfo;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/library/entity/ActivityBaseInfo;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/BaseActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/library/entity/ActivityBaseInfo;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/BaseActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/BaseActivity;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/activity/BaseActivity;->getBaseBinding()Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->terminalImei:Landroid/widget/TextView;

    const-string v1, "baseBinding.terminalImei"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/BaseActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/BaseActivity;

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_terminal_imei:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;->getImei()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/BaseActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/BaseActivity;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/activity/BaseActivity;->getBaseBinding()Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->carNum:Landroid/widget/TextView;

    const-string v1, "baseBinding.carNum"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/BaseActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/BaseActivity;

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_car_num:I

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;->getCarNo()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/BaseActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/BaseActivity;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/activity/BaseActivity;->getBaseBinding()Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->version:Landroid/widget/TextView;

    const-string v1, "baseBinding.version"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/BaseActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/BaseActivity;

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_version_num:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/activity/BaseActivity$initViewModel$1;->onChanged(Lcn/mucang/sundial/library/entity/ActivityBaseInfo;)V

    return-void
.end method
