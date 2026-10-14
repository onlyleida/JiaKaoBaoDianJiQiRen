.class final Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;->run()V
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
.field final synthetic $delayMs:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $speed:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;

    iput-object p2, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;->$delayMs:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;->$speed:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->b()Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u7f51\u7edc\u7c7b\u578b\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uff0c\u5ef6\u8fdf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;->$delayMs:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v4, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.1f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_4G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    const-string v3, "viewBinding.load2"

    const-string v4, "viewBinding.ckNetwork"

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_WIFI:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    if-ne v0, v2, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    sget-object v2, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_2G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->ckNetwork:Landroid/widget/TextView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;

    iget-object v4, v4, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v4}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->load2:Landroid/widget/LinearLayout;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x5f31

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;->$speed:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v4, v3}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$error(Lcn/mucang/sundial/library/activity/SelfCheckActivity;Landroid/widget/TextView;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->ckNetwork:Landroid/widget/TextView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;

    iget-object v4, v4, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v4}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->load2:Landroid/widget/LinearLayout;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x4e2d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;->$speed:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v4, v3}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$normal(Lcn/mucang/sundial/library/activity/SelfCheckActivity;Landroid/widget/TextView;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->ckNetwork:Landroid/widget/TextView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;

    iget-object v4, v4, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v4}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->load2:Landroid/widget/LinearLayout;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x5f3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;->$speed:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v4, v3}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$normal(Lcn/mucang/sundial/library/activity/SelfCheckActivity;Landroid/widget/TextView;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 9
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6d4b\u901f\u7ed3\u679c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkNetwork$1$2;->$speed:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    return-void
.end method
