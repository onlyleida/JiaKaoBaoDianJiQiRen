.class public final Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$$special$$inlined$viewBinding$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/u/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005\u00b8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/core/viewbinding/ViewBindingLazyKt$viewBinding$1",
        "Lf/a/a/a/u/d$a;",
        "Landroid/view/LayoutInflater;",
        "get",
        "()Landroid/view/LayoutInflater;",
        "core-lib_release",
        "f/a/a/a/u/e"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $this_viewBinding:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$$special$$inlined$viewBinding$1;->$this_viewBinding:Landroid/app/Activity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/view/LayoutInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$$special$$inlined$viewBinding$1;->$this_viewBinding:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layoutInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
