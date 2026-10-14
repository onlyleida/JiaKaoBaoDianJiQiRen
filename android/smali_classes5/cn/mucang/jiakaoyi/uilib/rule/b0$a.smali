.class final Lcn/mucang/jiakaoyi/uilib/rule/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/rule/b0;
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
        "Lcn/mucang/jiakaoyi/uilib/rule/IntegerItemBinder$MyTextWatcher;",
        "Landroid/text/TextWatcher;",
        "(Lcn/mucang/jiakaoyi/uilib/rule/IntegerItemBinder;)V",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemNumberBinding;",
        "getHolder",
        "()Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "setHolder",
        "(Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;)V",
        "item",
        "Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;",
        "getItem",
        "()Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;",
        "setItem",
        "(Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V",
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
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemNumberBinding;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/rule/b0;)V
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
.method public final a(Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemNumberBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/b0$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    .line 2
    :goto_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/b0$a;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget v3, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    const v4, 0x62e79

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_1
    const/16 v4, 0x2710

    const/4 v5, 0x0

    if-nez v3, :cond_a

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    const v3, 0x62e77

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_5

    .line 3
    :cond_4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/b0$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemNumberBinding;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v5, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemNumberBinding;->valueEt:Landroid/widget/EditText;

    :goto_3
    if-nez v5, :cond_7

    goto :goto_9

    :cond_7
    if-ltz p1, :cond_9

    if-le p1, v4, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_4
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setSelected(Z)V

    goto :goto_9

    .line 4
    :cond_a
    :goto_5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/b0$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemNumberBinding;

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    iget-object v5, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemNumberBinding;->valueEt:Landroid/widget/EditText;

    :goto_6
    if-nez v5, :cond_d

    goto :goto_9

    .line 5
    :cond_d
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/b0$a;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;->minValue:I

    :goto_7
    if-lt p1, v0, :cond_10

    if-le p1, v4, :cond_f

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    .line 6
    :cond_10
    :goto_8
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setSelected(Z)V

    .line 7
    :goto_9
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/b0$a;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-nez v0, :cond_11

    goto :goto_a

    :cond_11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    :goto_a
    return-void
.end method

.method public final b(Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/b0$a;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
