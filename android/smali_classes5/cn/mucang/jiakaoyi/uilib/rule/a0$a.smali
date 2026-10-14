.class final Lcn/mucang/jiakaoyi/uilib/rule/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/rule/a0;
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
        "Lcn/mucang/jiakaoyi/uilib/rule/FloatItemBinder$MyTextWatcher;",
        "Landroid/text/TextWatcher;",
        "(Lcn/mucang/jiakaoyi/uilib/rule/FloatItemBinder;)V",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemFloatBinding;",
        "getHolder",
        "()Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "setHolder",
        "(Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;)V",
        "item",
        "Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;",
        "getItem",
        "()Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;",
        "setItem",
        "(Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;)V",
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
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemFloatBinding;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/rule/a0;)V
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
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemFloatBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/a0$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 p1, -0x40800000    # -1.0f

    .line 2
    :goto_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/a0$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemFloatBinding;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemFloatBinding;->valueEt:Landroid/widget/EditText;

    :goto_1
    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_4

    const v0, 0x461c4000    # 10000.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelected(Z)V

    .line 3
    :goto_4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/a0$a;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    :goto_5
    return-void
.end method

.method public final b(Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/a0$a;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;

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
