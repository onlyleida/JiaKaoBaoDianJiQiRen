.class final Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$$inlined$with$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/InputIdCardActivity;->initView()V
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
        "cn/mucang/sundial/library/activity/InputIdCardActivity$initView$1$2",
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
.field final synthetic $this_with:Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/InputIdCardActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;Lcn/mucang/sundial/library/activity/InputIdCardActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$$inlined$with$lambda$1;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;

    iput-object p2, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/InputIdCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$$inlined$with$lambda$1;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->idCardNum:Landroid/widget/EditText;

    const-string v0, "idCardNum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xb

    if-ge p1, v0, :cond_0

    .line 3
    sget-object p1, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    sget v0, Lcn/mucang/sundial/library/R$string;->tt_please_input_id_or_phone:I

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(I)V

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/InputIdCardActivity;

    invoke-static {v1}, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->access$getPersonMode$p(Lcn/mucang/sundial/library/activity/InputIdCardActivity;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcn/mucang/sundial/library/util/LoginUtil;->loginWithFaceCheck$default(Lcn/mucang/sundial/library/util/LoginUtil;Lcn/mucang/sundial/library/activity/BaseActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
