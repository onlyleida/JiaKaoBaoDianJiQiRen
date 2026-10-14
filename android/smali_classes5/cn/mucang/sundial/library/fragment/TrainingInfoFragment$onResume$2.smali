.class final Lcn/mucang/sundial/library/fragment/TrainingInfoFragment$onResume$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;->onResume()V
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
        "Lcn/mucang/sundial/android/eventbus/event/DisableTrainingEvent;",
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
        "Lcn/mucang/sundial/android/eventbus/event/DisableTrainingEvent;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/eventbus/event/DisableTrainingEvent;)V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment$onResume$2;->this$0:Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/eventbus/event/DisableTrainingEvent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment$onResume$2;->this$0:Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;

    invoke-static {v0}, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;->access$getViewModel$p(Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;)Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;

    move-result-object v0

    iget p1, p1, Lcn/mucang/sundial/android/eventbus/event/DisableTrainingEvent;->status:I

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;->setTrainingStatus(I)V

    .line 4
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 5
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/DisableTrainingEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment$onResume$2;->onChanged(Lcn/mucang/sundial/android/eventbus/event/DisableTrainingEvent;)V

    return-void
.end method
