.class public final Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/InputIdCardActivity;->initView()V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "cn/mucang/sundial/library/activity/InputIdCardActivity$initView$1$1",
        "Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;",
        "",
        "key",
        "Lkotlin/v;",
        "onClick",
        "(Ljava/lang/String;)V",
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
.field final synthetic $this_with:Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$1$1;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$1$1;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->idCardNum:Landroid/widget/EditText;

    const-string v1, "idCardNum"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$1$1;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;

    iget-object v3, v3, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->idCardNum:Landroid/widget/EditText;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 4
    iget-object v4, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$1$1;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;

    iget-object v4, v4, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->idCardNum:Landroid/widget/EditText;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    const-string v4, "delete"

    .line 5
    invoke-static {p1, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_6

    if-lez v2, :cond_6

    if-eq v3, v1, :cond_1

    .line 6
    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_1
    if-lez v3, :cond_6

    add-int/lit8 v3, v3, -0x1

    .line 7
    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    :cond_2
    const/16 v4, 0x12

    if-ge v2, v4, :cond_6

    if-eqz v0, :cond_5

    if-eq v3, v1, :cond_3

    .line 8
    invoke-interface {v0, v3, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 9
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$1$1;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->idCardNum:Landroid/widget/EditText;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    :cond_3
    if-ltz v3, :cond_4

    .line 10
    invoke-interface {v0, v3, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 11
    :cond_4
    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 12
    :cond_5
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$1$1;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->idCardNum:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method
