.class final Lcn/mucang/sundial/library/activity/SelfCheckActivity$gpsError$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/SelfCheckActivity;-><init>()V
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$gpsError$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$gpsError$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->ckGps:Landroid/widget/TextView;

    const-string v2, "viewBinding.ckGps"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$gpsError$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v2}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->load1:Landroid/widget/LinearLayout;

    const-string v3, "viewBinding.load1"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "\u672a\u83b7\u53d6\u5230\u7ecf\u7eac\u5ea6"

    .line 4
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$error(Lcn/mucang/sundial/library/activity/SelfCheckActivity;Landroid/widget/TextView;Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-void
.end method
