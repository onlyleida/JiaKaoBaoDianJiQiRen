.class final Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkVolume$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/SelfCheckActivity;->checkVolume()V
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

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkVolume$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkVolume$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u591a\u5a92\u4f53\u97f3\u91cf\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-string v4, "viewBinding.load4"

    const-string v5, "viewBinding.ckVolume"

    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    .line 5
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkVolume$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->ckVolume:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkVolume$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v2}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->load4:Landroid/widget/LinearLayout;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "\u9ad8\u97f3\u91cf"

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$normal(Lcn/mucang/sundial/library/activity/SelfCheckActivity;Landroid/widget/TextView;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    cmpl-double v6, v0, v2

    if-lez v6, :cond_1

    .line 6
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkVolume$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->ckVolume:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkVolume$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v2}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->load4:Landroid/widget/LinearLayout;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "\u4e2d\u97f3\u91cf"

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$normal(Lcn/mucang/sundial/library/activity/SelfCheckActivity;Landroid/widget/TextView;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkVolume$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->ckVolume:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkVolume$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v2}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->load4:Landroid/widget/LinearLayout;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "\u4f4e\u97f3\u91cf"

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$error(Lcn/mucang/sundial/library/activity/SelfCheckActivity;Landroid/widget/TextView;Landroid/view/ViewGroup;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
