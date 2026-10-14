.class final Lcn/mucang/sundial/library/activity/LoginStudentActivity$initView$$inlined$with$lambda$2;
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
        "cn/mucang/sundial/library/activity/LoginStudentActivity$initView$2$2",
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
.field final synthetic $this_with:Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;Lcn/mucang/sundial/library/activity/LoginStudentActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initView$$inlined$with$lambda$2;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    iput-object p2, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$interruptToRegister(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x3

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    .line 3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    const-class v3, Lcn/mucang/sundial/library/activity/InputIdCardActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v2, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v2}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getPersonMode$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)I

    move-result v2

    const-string v3, "person_model"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object v2, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initView$$inlined$with$lambda$2;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    iget-object v2, v2, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->idCardNumber:Landroid/widget/EditText;

    const-string v3, "idCardNumber"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    const-string v3, "id_num"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 7
    invoke-virtual {v0, v1, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
