.class final Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;->onBindViewHolder(Lf/a/a/a/u/c;Ljava/lang/String;)V
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onClick",
        "(Landroid/view/View;)V",
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
.field final synthetic $key:Ljava/lang/String;

.field final synthetic this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$1;->this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;

    iput-object p2, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$1;->$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$1;->this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;

    iget-object p1, p1, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;->this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;

    invoke-static {p1}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->access$getMEditText$p(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    iget-object v1, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$1;->$key:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$1;->$key:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_2
    :goto_1
    return-void
.end method
