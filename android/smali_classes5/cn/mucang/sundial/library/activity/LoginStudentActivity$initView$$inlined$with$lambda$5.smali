.class final Lcn/mucang/sundial/library/activity/LoginStudentActivity$initView$$inlined$with$lambda$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/LoginStudentActivity;->initView()V
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
        "cn/mucang/sundial/library/activity/LoginStudentActivity$initView$2$5",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initView$$inlined$with$lambda$5;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcn/mucang/sundial/library/widget/ClearRecordConfirmDialog$Builder;

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initView$$inlined$with$lambda$5;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcn/mucang/sundial/library/widget/ClearRecordConfirmDialog$Builder;-><init>(Landroid/content/Context;Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initView$$inlined$with$lambda$5;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    sget v1, Lcn/mucang/sundial/library/R$string;->tt_clean_student_login_recode:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.tt_clean_student_login_recode)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initView$$inlined$with$lambda$5$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initView$$inlined$with$lambda$5$1;-><init>(Lcn/mucang/sundial/library/activity/LoginStudentActivity$initView$$inlined$with$lambda$5;)V

    invoke-virtual {p1, v0, v1}, Lcn/mucang/sundial/library/widget/ClearRecordConfirmDialog$Builder;->setContent(Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/ClearRecordConfirmDialog$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->show()Lcn/mucang/sundial/library/widget/BlankDialog;

    return-void
.end method
