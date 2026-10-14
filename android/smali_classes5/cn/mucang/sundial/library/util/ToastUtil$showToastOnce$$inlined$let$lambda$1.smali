.class final Lcn/mucang/sundial/library/util/ToastUtil$showToastOnce$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "cn/mucang/sundial/library/util/ToastUtil$showToastOnce$1$1",
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $message$inlined:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/util/ToastUtil$showToastOnce$$inlined$let$lambda$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcn/mucang/sundial/library/util/ToastUtil$showToastOnce$$inlined$let$lambda$1;->$message$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/util/ToastUtil$showToastOnce$$inlined$let$lambda$1;->$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    invoke-static {v0}, Lcn/mucang/sundial/library/util/ToastUtil;->access$getToast$p(Lcn/mucang/sundial/library/util/ToastUtil;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Toast;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/sundial/library/util/ToastUtil$showToastOnce$$inlined$let$lambda$1;->$message$inlined:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcn/mucang/sundial/library/util/ToastUtil;->access$setToast$p(Lcn/mucang/sundial/library/util/ToastUtil;Ljava/lang/ref/WeakReference;)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lcn/mucang/sundial/library/util/ToastUtil$showToastOnce$$inlined$let$lambda$1;->$message$inlined:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void
.end method
