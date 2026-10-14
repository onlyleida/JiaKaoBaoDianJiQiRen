.class final Lcn/mucang/jiakaoyi/uilib/rule/l0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/rule/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J*\u0010\u0014\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J*\u0010\u001a\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0016R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/rule/TextItemBinder$MyTextWatcher;",
        "Landroid/text/TextWatcher;",
        "(Lcn/mucang/jiakaoyi/uilib/rule/TextItemBinder;)V",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;",
        "getHolder",
        "()Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "setHolder",
        "(Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;)V",
        "item",
        "Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;",
        "getItem",
        "()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;",
        "setItem",
        "(Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
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
.field private a:Lcn/mucang/android/jiakaoyi/framework/base/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/rule/l0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/android/jiakaoyi/framework/base/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    return-object v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    const v3, 0x33c8a

    const/4 v4, 0x1

    if-gt v3, v0, :cond_1

    const v3, 0x33c8e

    if-gt v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/s/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "\u8f93\u5165\u4e0d\u5408\u6cd5\uff0c\u6321\u4f4d\u5fc5\u987b\u662f\u8fde\u7eed\u76841-5\u5185\u7684\u6570\u5b57"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_9

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    sub-int/2addr p1, v4

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->a()Lcn/mucang/android/jiakaoyi/framework/base/h;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->valueEt:Landroid/widget/EditText;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->a()Lcn/mucang/android/jiakaoyi/framework/base/h;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->valueEt:Landroid/widget/EditText;

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_3

    .line 9
    :cond_9
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->a()Lcn/mucang/android/jiakaoyi/framework/base/h;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->valueEt:Landroid/widget/EditText;

    if-nez p1, :cond_c

    goto :goto_3

    :cond_c
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_3
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->a()Lcn/mucang/android/jiakaoyi/framework/base/h;

    move-result-object p1

    if-nez p1, :cond_d

    :goto_4
    move-object p1, v2

    goto :goto_5

    :cond_d
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    if-nez p1, :cond_e

    goto :goto_4

    :cond_e
    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->valueEt:Landroid/widget/EditText;

    :goto_5
    if-nez p1, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->b()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_6

    :cond_10
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelected(Z)V

    :goto_7
    return-void

    .line 11
    :cond_11
    :goto_8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    const-string v4, "%_%"

    invoke-static {v0, v4, v1, v3, v2}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "\u8f93\u5165\u4e0d\u5408\u6cd5"

    .line 12
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "%_%"

    const-string v5, ""

    invoke-static/range {v3 .. v8}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    if-nez v0, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    if-nez v0, :cond_13

    goto :goto_9

    :cond_13
    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->valueEt:Landroid/widget/EditText;

    if-nez v0, :cond_14

    goto :goto_9

    :cond_14
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_9
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    if-nez v0, :cond_15

    goto :goto_a

    :cond_15
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    if-nez v0, :cond_16

    goto :goto_a

    :cond_16
    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->valueEt:Landroid/widget/EditText;

    if-nez v0, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 16
    :goto_a
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    if-nez v0, :cond_18

    goto :goto_b

    :cond_18
    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    .line 17
    :goto_b
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    if-nez p1, :cond_19

    :goto_c
    move-object p1, v2

    goto :goto_d

    :cond_19
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    if-nez p1, :cond_1a

    goto :goto_c

    :cond_1a
    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->valueEt:Landroid/widget/EditText;

    :goto_d
    if-nez p1, :cond_1b

    goto :goto_f

    :cond_1b
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    if-nez v0, :cond_1c

    goto :goto_e

    :cond_1c
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :goto_e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelected(Z)V

    :goto_f
    return-void

    .line 18
    :cond_1d
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    if-nez v0, :cond_1e

    goto :goto_10

    :cond_1e
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    .line 19
    :goto_10
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    if-nez p1, :cond_1f

    :goto_11
    move-object p1, v2

    goto :goto_12

    :cond_1f
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;

    if-nez p1, :cond_20

    goto :goto_11

    :cond_20
    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;->valueEt:Landroid/widget/EditText;

    :goto_12
    if-nez p1, :cond_21

    goto :goto_14

    :cond_21
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    if-nez v0, :cond_22

    goto :goto_13

    :cond_22
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :goto_13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelected(Z)V

    :goto_14
    return-void
.end method

.method public final b()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    return-object v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final c(Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemTextBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    return-void
.end method

.method public final d(Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/l0$a;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
