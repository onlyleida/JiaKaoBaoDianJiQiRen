.class public final Lcn/mucang/sundial/library/activity/BaseActivity$vm$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/BaseActivity;->vm(Lcn/mucang/sundial/library/activity/BaseActivity;)Lkotlin/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Landroidx/lifecycle/m0$b;",
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u0002\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroidx/lifecycle/j0;",
        "VM",
        "Landroidx/lifecycle/m0$b;",
        "invoke",
        "()Landroidx/lifecycle/m0$b;",
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
.field final synthetic $this_vm:Lcn/mucang/sundial/library/activity/BaseActivity;


# direct methods
.method public constructor <init>(Lcn/mucang/sundial/library/activity/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/BaseActivity$vm$1;->$this_vm:Lcn/mucang/sundial/library/activity/BaseActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/m0$b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/BaseActivity$vm$1;->$this_vm:Lcn/mucang/sundial/library/activity/BaseActivity;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/activity/BaseActivity;->vmFactory()Landroidx/lifecycle/m0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/activity/BaseActivity$vm$1;->invoke()Landroidx/lifecycle/m0$b;

    move-result-object v0

    return-object v0
.end method
