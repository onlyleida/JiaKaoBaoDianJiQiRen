.class public final Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/widget/DialogCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$3;->onClick(Landroid/view/View;)V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "cn/mucang/sundial/library/activity/StudentInfoActivity$initView$1$7$1",
        "Lcn/mucang/sundial/library/widget/DialogCallBack;",
        "",
        "index",
        "Lkotlin/v;",
        "onSelect",
        "(I)V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$3;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$3;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$3$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$3;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "\u786e\u8ba4\u62cd\u7167"

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->start(Z)V

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$3$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$3;

    iget-object p1, p1, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$3;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$startTrainingFaceCheck(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u53d6\u6d88\u62cd\u7167"

    .line 4
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
