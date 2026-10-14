.class final Lcn/mucang/jiakaoyi/uilib/rule/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/rule/g0;
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
        "Lcn/mucang/jiakaoyi/uilib/rule/RangeItemBinder$MaxListener;",
        "Landroid/text/TextWatcher;",
        "(Lcn/mucang/jiakaoyi/uilib/rule/RangeItemBinder;)V",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemScopeBinding;",
        "getHolder",
        "()Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "setHolder",
        "(Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;)V",
        "item",
        "Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;",
        "getItem",
        "()Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;",
        "setItem",
        "(Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;)V",
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
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemScopeBinding;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/rule/g0;)V
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
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemScopeBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/g0$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/g0$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/g0$a;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
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

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemScopeBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemScopeBinding;->minEt:Landroid/widget/EditText;

    if-ltz p1, :cond_3

    const/16 v2, 0x2710

    if-gt p1, v2, :cond_3

    .line 5
    iget v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 6
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelected(Z)V

    .line 7
    iput p1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    return-void
.end method

.method public final b(Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/g0$a;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

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
