.class final Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/StudentInfoActivity;->initView()V
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0007\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onClick",
        "(Landroid/view/View;)V",
        "cn/mucang/sundial/library/activity/StudentInfoActivity$initView$1$6",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "\u70b9\u51fb\u6559\u7ec3\u62cd\u7167\u6309\u94ae"

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    .line 3
    new-instance v0, Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder;-><init>(Landroid/content/Context;Z)V

    .line 4
    new-instance v1, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$2$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$2$1;-><init>(Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$2;)V

    const-string v2, "\u786e\u5b9a\u8981\u8fdb\u884c\u6559\u7ec3\u624b\u52a8\u62cd\u7167\u5417\uff1f"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder;->setContent(Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->show()Lcn/mucang/sundial/library/widget/BlankDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$setDialog$p(Lcn/mucang/sundial/library/activity/StudentInfoActivity;Lcn/mucang/sundial/library/widget/BlankDialog;)V

    return-void
.end method
