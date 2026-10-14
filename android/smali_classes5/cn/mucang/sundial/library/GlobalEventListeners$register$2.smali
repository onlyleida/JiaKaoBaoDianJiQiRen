.class final Lcn/mucang/sundial/library/GlobalEventListeners$register$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/GlobalEventListeners;->register()V
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
        "Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;",
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
        "Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/GlobalEventListeners$register$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/sundial/library/GlobalEventListeners$register$2;

    invoke-direct {v0}, Lcn/mucang/sundial/library/GlobalEventListeners$register$2;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/GlobalEventListeners$register$2;->INSTANCE:Lcn/mucang/sundial/library/GlobalEventListeners$register$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5347\u7ea7URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/LoginUtil;->studentLoginSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u663e\u793a\u5347\u7ea7\u5f39\u7a97"

    .line 4
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "MucangConfig.getCurrentActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;-><init>(Landroid/content/Context;Z)V

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_upgrade:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MucangConfig.getContext(\u2026ring(R.string.tt_upgrade)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1;

    invoke-direct {v2, p1}, Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1;-><init>(Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;)V

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;->setContent(Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->show()Lcn/mucang/sundial/library/widget/BlankDialog;

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/GlobalEventListeners$register$2;->onChanged(Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;)V

    return-void
.end method
