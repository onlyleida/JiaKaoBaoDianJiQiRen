.class public final Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u001f\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;",
        "Landroidx/lifecycle/a;",
        "Lkotlin/v;",
        "getTrainingProgress",
        "()V",
        "Landroidx/lifecycle/i0;",
        "Lcn/mucang/sundial/library/entity/TrainingProgress;",
        "trainingProgressData",
        "Landroidx/lifecycle/i0;",
        "getTrainingProgressData",
        "()Landroidx/lifecycle/i0;",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Landroid/app/Application;)V",
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
.field private final trainingProgressData:Landroidx/lifecycle/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/library/entity/TrainingProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/i0;

    invoke-direct {p1}, Landroidx/lifecycle/i0;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;->trainingProgressData:Landroidx/lifecycle/i0;

    return-void
.end method


# virtual methods
.method public final getTrainingProgress()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel$getTrainingProgress$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel$getTrainingProgress$1;-><init>(Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;)V

    invoke-static {v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getTrainingProgressData()Landroidx/lifecycle/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/library/entity/TrainingProgress;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;->trainingProgressData:Landroidx/lifecycle/i0;

    return-object v0
.end method
