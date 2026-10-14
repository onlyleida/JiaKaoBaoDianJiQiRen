.class public final Lcn/mucang/jiakaoyi/uilib/siterule/f0;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0017R \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;",
        "callback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
        "(Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V",
        "getCallback",
        "()Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "setCallback",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/f0;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/f0;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;)V

    return-void
.end method

.method public final n()Lcn/mucang/android/jiakaoyi/framework/h/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/f0;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-object v0
.end method

.method public o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/siterule/f0$a;

    invoke-direct {v0, p2, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/f0$a;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;Lcn/mucang/jiakaoyi/uilib/siterule/f0;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;->projectOrder:Landroid/widget/TextView;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;->zhName:Ljava/lang/String;

    const-string v3, "\u9879\u76ee-"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;->fileName:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;->fileName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/text/TextWatcher;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/text/TextWatcher;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;->fileName:Landroid/widget/EditText;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;->stepAliasName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;

    iget-object p2, p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;->fileName:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeItemBinding;->fileName:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    return-void
.end method
